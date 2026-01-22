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

-- L0356@0000 5F72657365743A206966207472756520._reset:  if true then continue else repeat;
-- _reset: if true then continue else repeat;
0 => X"5F_72_65_73_65_74_3A_20_69_66_20_74_72_75_65_20",

-- L0358@0001 5F7265736574313A2054203C3D207A65._reset1:  T <= zero;
-- _reset1: T <= zero;
1 => X"5F_72_65_73_65_74_31_3A_20_54_20_3C_3D_20_7A_65",

-- L0360@0002 5F7265736574323A2058516865726520._reset2:  XQhere <= T;
-- _reset2: XQhere <= T;
2 => X"5F_72_65_73_65_74_32_3A_20_58_51_68_65_72_65_20",

-- L0362@0003 5F7265736574333A2069662074727565._reset3:  if true then continue else repeat;
-- _reset3: if true then continue else repeat;
3 => X"5F_72_65_73_65_74_33_3A_20_69_66_20_74_72_75_65",

-- L0366@0004 436F6C6453746172743A207772697465.ColdStart:  write2Nulls(Prog_start);
-- ColdStart: write2Nulls(Prog_start);
4 => X"43_6F_6C_64_53_74_61_72_74_3A_20_77_72_69_74_65",

-- L0367@0005 5761726D53746172743A20444247494E.WarmStart:  DBGINDEX <= zero, ExpStack <= clear, RetStack <= clear, BasStack <= clear, T <= zero, alu <= reset0, findPrgEnd();
-- WarmStart: DBGINDEX <= zero, ExpStack <= clear, RetStack <= clear, BasStack <= clear, T <= zero, alu <= reset0, findPrgEnd();
5 => X"57_61_72_6D_53_74_61_72_74_3A_20_44_42_47_49_4E",

-- L0368@0006 5761726D5374617274323A204250203C.WarmStart2:  BP <= InLine_start, SvPt <= InLine_start, InlEnd <= InLine_start, T <= zero;
-- WarmStart2: BP <= InLine_start, SvPt <= InLine_start, InlEnd <= InLine_start, T <= zero;
6 => X"57_61_72_6D_53_74_61_72_74_32_3A_20_42_50_20_3C",

-- L0369@0007 4C696E6F203C3D20542C20494C5F5043.  Lino <= T, IL_PC <= T, write2Nulls(BP);
-- Lino <= T, IL_PC <= T, write2Nulls(BP);
7 => X"4C_69_6E_6F_20_3C_3D_20_54_2C_20_49_4C_5F_50_43",

-- L0371@0008 66657463683A2074726163652866726F.fetch:  trace(from_microcode), directByte = 51;
-- fetch: trace(from_microcode), directByte = 51;
8 => X"66_65_74_63_68_3A_20_74_72_61_63_65_28_66_72_6F",

-- L0372@0009 6665746368313A207472616365286672.fetch1:  trace(from_microcode), directByte = 2;
-- fetch1: trace(from_microcode), directByte = 2;
9 => X"66_65_74_63_68_31_3A_20_74_72_61_63_65_28_66_72",

-- L0373@000A 494C5F4F50203C3D2066726F6D5F696E.  IL_OP <= from_interpreter, IL_PC <= inc, trace(from_microcode), directByte = 56;
-- IL_OP <= from_interpreter, IL_PC <= inc, trace(from_microcode), directByte = 56;
10 => X"49_4C_5F_4F_50_20_3C_3D_20_66_72_6F_6D_5F_69_6E",

-- L0374@000B 54203C3D207A65726F2C20616C75203C.  T <= zero, alu <= reset0, if true then fork else INTERNAL_ERR;
-- T <= zero, alu <= reset0, if true then fork else INTERNAL_ERR;
11 => X"54_20_3C_3D_20_7A_65_72_6F_2C_20_61_6C_75_20_3C",

-- L0377@000C 6261646F703A2069662066616C736520.badop:  if false then continue else INTERNAL_ERR;
-- badop: if false then continue else INTERNAL_ERR;
12 => X"62_61_64_6F_70_3A_20_69_66_20_66_61_6C_73_65_20",

-- L0382@000D 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 15;
-- trace(from_microcode), directByte = 15;
13 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0383@000E 457870537461636B203C3D2073746172.  ExpStack <= startSwap, trace(from_microcode), directByte = 51;
-- ExpStack <= startSwap, trace(from_microcode), directByte = 51;
14 => X"45_78_70_53_74_61_63_6B_20_3C_3D_20_73_74_61_72",

-- L0384@000F 457870537461636B203C3D20656E6453.  ExpStack <= endSwap, if false then continue else fetch1;
-- ExpStack <= endSwap, if false then continue else fetch1;
15 => X"45_78_70_53_74_61_63_6B_20_3C_3D_20_65_6E_64_53",

-- L0387@0010 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 15;
-- trace(from_microcode), directByte = 15;
16 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0388@0011 69662066616C7365207468656E20636F.  if false then continue else fetch;
-- if false then continue else fetch;
17 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0393@0012 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 12;
-- trace(from_microcode), directByte = 12;
18 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0394@0013 69662066616C7365207468656E20636F.  if false then continue else fetch;
-- if false then continue else fetch;
19 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0399@0014 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 28;
-- trace(from_microcode), directByte = 28;
20 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0400@0015 6C625F707573683A2074726163652866.lb_push:  trace(from_microcode), directByte = 3, T <= codeByte;
-- lb_push: trace(from_microcode), directByte = 3, T <= codeByte;
21 => X"6C_62_5F_70_75_73_68_3A_20_74_72_61_63_65_28_66",

-- L0401@0016 457870537461636B203C3D2070757368.  ExpStack <= push_TByte;
-- ExpStack <= push_TByte;
22 => X"45_78_70_53_74_61_63_6B_20_3C_3D_20_70_75_73_68",

-- L0402@0017 494C5F5043203C3D20696E632C206966.  IL_PC <= inc, if STACK_IS_FULL then ESTACK_ERR else fetch;
-- IL_PC <= inc, if STACK_IS_FULL then ESTACK_ERR else fetch;
23 => X"49_4C_5F_50_43_20_3C_3D_20_69_6E_63_2C_20_69_66",

-- L0407@0018 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 29;
-- trace(from_microcode), directByte = 29;
24 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0408@0019 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 3, T <= codeByte;
-- trace(from_microcode), directByte = 3, T <= codeByte;
25 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0409@001A 457870537461636B203C3D2070757368.  ExpStack <= push_TByte;
-- ExpStack <= push_TByte;
26 => X"45_78_70_53_74_61_63_6B_20_3C_3D_20_70_75_73_68",

-- L0410@001B 494C5F5043203C3D20696E632C206966.  IL_PC <= inc, if STACK_IS_FULL then ESTACK_ERR else lb_push;
-- IL_PC <= inc, if STACK_IS_FULL then ESTACK_ERR else lb_push;
27 => X"49_4C_5F_50_43_20_3C_3D_20_69_6E_63_2C_20_69_66",

-- L0415@001C 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 38;
-- trace(from_microcode), directByte = 38;
28 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0416@001D 696620535441434B5F49535F454D5054.  if STACK_IS_EMPTY then ESTACK_ERR;
-- if STACK_IS_EMPTY then ESTACK_ERR;
29 => X"69_66_20_53_54_41_43_4B_5F_49_53_5F_45_4D_50_54",

-- L0417@001E 54203C3D20457870537461636B2C2069.  T <= ExpStack, if STACK_IS_FULL then ESTACK_ERR else push_T;
-- T <= ExpStack, if STACK_IS_FULL then ESTACK_ERR else push_T;
30 => X"54_20_3C_3D_20_45_78_70_53_74_61_63_6B_2C_20_69",

-- L0422@001F 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 34;
-- trace(from_microcode), directByte = 34;
31 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0423@0020 457870537461636B203C3D20706F7032.  ExpStack <= pop2, if STACK_IS_EMPTY then ESTACK_ERR else fetch;
-- ExpStack <= pop2, if STACK_IS_EMPTY then ESTACK_ERR else fetch;
32 => X"45_78_70_53_74_61_63_6B_20_3C_3D_20_70_6F_70_32",

-- L0428@0021 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 10;
-- trace(from_microcode), directByte = 10;
33 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0429@0022 69662042505F494E5F494E504C494E45.  if BP_IN_INPLINE then next else ptr_exc;
-- if BP_IN_INPLINE then next else ptr_exc;
34 => X"69_66_20_42_50_5F_49_4E_5F_49_4E_50_4C_49_4E_45",

-- L0430@0023 736176655F62703A2053765074203C3D.save_bp:  SvPt <= BP;
-- save_bp: SvPt <= BP;
35 => X"73_61_76_65_5F_62_70_3A_20_53_76_50_74_20_3C_3D",

-- L0431@0024 62705F646F6E653A2074726163654250.bp_done:  traceBP();
-- bp_done: traceBP();
36 => X"62_70_5F_64_6F_6E_65_3A_20_74_72_61_63_65_42_50",

-- L0432@0025 69662066616C7365207468656E20636F.  if false then continue else fetch;
-- if false then continue else fetch;
37 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0437@0026 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 11;
-- trace(from_microcode), directByte = 11;
38 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0438@0027 6966205356505F494E5F494E504C494E.  if SVP_IN_INPLINE then save_bp;
-- if SVP_IN_INPLINE then save_bp;
39 => X"69_66_20_53_56_50_5F_49_4E_5F_49_4E_50_4C_49_4E",

-- L0439@0028 7074725F6578633A2053765074203C3D.ptr_exc:  SvPt <= BP, BP <= SvPt, if false then continue else bp_done;
-- ptr_exc: SvPt <= BP, BP <= SvPt, if false then continue else bp_done;
40 => X"70_74_72_5F_65_78_63_3A_20_53_76_50_74_20_3C_3D",

-- L0444@0029 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 36;
-- trace(from_microcode), directByte = 36;
41 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0445@002A 56617273203C3D20696E64657846726F.  Vars <= indexFromExpStack, if STACK_IS_EMPTY then ESTACK_ERR;
-- Vars <= indexFromExpStack, if STACK_IS_EMPTY then ESTACK_ERR;
42 => X"56_61_72_73_20_3C_3D_20_69_6E_64_65_78_46_72_6F",

-- L0446@002B 54203C3D2066726F6D5F766172732C20.  T <= from_vars, ExpStack <= pop1;
-- T <= from_vars, ExpStack <= pop1;
43 => X"54_20_3C_3D_20_66_72_6F_6D_5F_76_61_72_73_2C_20",

-- L0447@002C 707573685F543A20457870537461636B.push_T:  ExpStack <= push_TWord, if false then continue else fetch;
-- push_T: ExpStack <= push_TWord, if false then continue else fetch;
44 => X"70_75_73_68_5F_54_3A_20_45_78_70_53_74_61_63_6B",

-- L0452@002D 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 37;
-- trace(from_microcode), directByte = 37;
45 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0453@002E 696620535441434B5F49535F454D5054.  if STACK_IS_EMPTY then ESTACK_ERR;
-- if STACK_IS_EMPTY then ESTACK_ERR;
46 => X"69_66_20_53_54_41_43_4B_5F_49_53_5F_45_4D_50_54",

-- L0454@002F 54203C3D20457870537461636B2C2045.  T <= ExpStack, ExpStack <= pop2;
-- T <= ExpStack, ExpStack <= pop2;
47 => X"54_20_3C_3D_20_45_78_70_53_74_61_63_6B_2C_20_45",

-- L0455@0030 56617273203C3D20696E64657846726F.  Vars <= indexFromExpStack, if STACK_IS_EMPTY then ESTACK_ERR;
-- Vars <= indexFromExpStack, if STACK_IS_EMPTY then ESTACK_ERR;
48 => X"56_61_72_73_20_3C_3D_20_69_6E_64_65_78_46_72_6F",

-- L0456@0031 457870537461636B203C3D20706F7031.  ExpStack <= pop1, Vars <= T, if false then continue else fetch;
-- ExpStack <= pop1, Vars <= T, if false then continue else fetch;
49 => X"45_78_70_53_74_61_63_6B_20_3C_3D_20_70_6F_70_31",

-- L0461@0032 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 47;
-- trace(from_microcode), directByte = 47;
50 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0462@0033 69662049535F52554E4D4F4445207468.  if IS_RUNMODE then next else INTERNAL_ERR;
-- if IS_RUNMODE then next else INTERNAL_ERR;
51 => X"69_66_20_49_53_5F_52_55_4E_4D_4F_44_45_20_74_68",

-- L0463@0034 696620535441434B5F49535F46554C4C.  if STACK_IS_FULL then BSTACK_ERR;
-- if STACK_IS_FULL then BSTACK_ERR;
52 => X"69_66_20_53_54_41_43_4B_5F_49_53_5F_46_55_4C_4C",

-- L0464@0035 426173537461636B203C3D2070757368.  BasStack <= push_Lino_and_BP, if false then continue else fetch;
-- BasStack <= push_Lino_and_BP, if false then continue else fetch;
53 => X"42_61_73_53_74_61_63_6B_20_3C_3D_20_70_75_73_68",

-- L0469@0036 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 48;
-- trace(from_microcode), directByte = 48;
54 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0470@0037 69662049535F52554E4D4F4445207468.  if IS_RUNMODE then next else INTERNAL_ERR;
-- if IS_RUNMODE then next else INTERNAL_ERR;
55 => X"69_66_20_49_53_5F_52_55_4E_4D_4F_44_45_20_74_68",

-- L0471@0038 54203C3D20426173537461636B5F4869.  T <= BasStack_Hi,if STACK_IS_EMPTY then BSTACK_ERR;
-- T <= BasStack_Hi,if STACK_IS_EMPTY then BSTACK_ERR;
56 => X"54_20_3C_3D_20_42_61_73_53_74_61_63_6B_5F_48_69",

-- L0472@0039 4C696E6F203C3D20542C2054203C3D20.  Lino <= T, T <= BasStack_Lo, trace(from_microcode), directByte = 51;
-- Lino <= T, T <= BasStack_Lo, trace(from_microcode), directByte = 51;
57 => X"4C_69_6E_6F_20_3C_3D_20_54_2C_20_54_20_3C_3D_20",

-- L0473@003A 4250203C3D20542C2042617353746163.  BP <= T, BasStack <= pop, if false then continue else fetch1;
-- BP <= T, BasStack <= pop, if false then continue else fetch1;
58 => X"42_50_20_3C_3D_20_54_2C_20_42_61_73_53_74_61_63",

-- L0478@003B 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 45;
-- trace(from_microcode), directByte = 45;
59 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0479@003C 494C5F5043203C3D205851686572652C.  IL_PC <= XQhere, if STACK_IS_EMPTY then ESTACK_ERR;
-- IL_PC <= XQhere, if STACK_IS_EMPTY then ESTACK_ERR;
60 => X"49_4C_5F_50_43_20_3C_3D_20_58_51_68_65_72_65_2C",

-- L0480@003D 616C75203C3D20525F66726F6D537461.  alu <= R_fromStack, ExpStack <= pop2;
-- alu <= R_fromStack, ExpStack <= pop2;
61 => X"61_6C_75_20_3C_3D_20_52_5F_66_72_6F_6D_53_74_61",

-- L0481@003E 54203C3D2066726F6D5F523B20202020.  T <= from_R;
-- T <= from_R;
62 => X"54_20_3C_3D_20_66_72_6F_6D_5F_52_3B_20_20_20_20",

-- L0482@003F 4C696E6F203C3D20542C20696620525F.  Lino <= T, if R_IS_ZERO then NOPROG_ERR;
-- Lino <= T, if R_IS_ZERO then NOPROG_ERR;
63 => X"4C_69_6E_6F_20_3C_3D_20_54_2C_20_69_66_20_52_5F",

-- L0484@0040 54203C3D2043616368655F446174612C.  T <= Cache_Data, if CACHE_VALID then go_cvalid;
-- T <= Cache_Data, if CACHE_VALID then go_cvalid;
64 => X"54_20_3C_3D_20_43_61_63_68_65_5F_44_61_74_61_2C",

-- L0486@0041 66696E644C696E6F2850726F675F7374.  findLino(Prog_start);
-- findLino(Prog_start);
65 => X"66_69_6E_64_4C_69_6E_6F_28_50_72_6F_67_5F_73_74",

-- L0487@0042 616C75203C3D2063616368655F73746F.  alu <= cache_store, if false then continue else fetch;
-- alu <= cache_store, if false then continue else fetch;
66 => X"61_6C_75_20_3C_3D_20_63_61_63_68_65_5F_73_74_6F",

-- L0489@0043 676F5F6376616C69643A204250203C3D.go_cvalid:  BP <= T, if CACHE_HIT then fetch else go_cmiss;
-- go_cvalid: BP <= T, if CACHE_HIT then fetch else go_cmiss;
67 => X"67_6F_5F_63_76_61_6C_69_64_3A_20_42_50_20_3C_3D",

-- L0494@0044 676F5F636D6973733A2066696E644C69.go_cmiss:  findLino(Prog_start);
-- go_cmiss: findLino(Prog_start);
68 => X"67_6F_5F_63_6D_69_73_73_3A_20_66_69_6E_64_4C_69",

-- L0495@0045 69662066616C7365207468656E20636F.  if false then continue else fetch;
-- if false then continue else fetch;
69 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0497@0046 66696E644C696E6F3A20616C75203C3D.findLino:  alu <= reset1, readCore(T);
-- findLino: alu <= reset1, readCore(T);
70 => X"66_69_6E_64_4C_69_6E_6F_3A_20_61_6C_75_20_3C_3D",

-- L0498@0047 616C75203C3D2052783235365F706C75.  alu <= Rx256_plus_MDR, T <= inc;
-- alu <= Rx256_plus_MDR, T <= inc;
71 => X"61_6C_75_20_3C_3D_20_52_78_32_35_36_5F_70_6C_75",

-- L0499@0048 616C75203C3D20535F66726F6D4C696E.  alu <= S_fromLino, readCore(T);
-- alu <= S_fromLino, readCore(T);
72 => X"61_6C_75_20_3C_3D_20_53_5F_66_72_6F_6D_4C_69_6E",

-- L0500@0049 616C75203C3D2052783235365F706C75.  alu <= Rx256_plus_MDR, T <= inc;
-- alu <= Rx256_plus_MDR, T <= inc;
73 => X"61_6C_75_20_3C_3D_20_52_78_32_35_36_5F_70_6C_75",

-- L0501@004A 616C75203C3D20535F6D696E75735F52.  alu <= S_minus_R, if R_IS_ZERO then nx_err;
-- alu <= S_minus_R, if R_IS_ZERO then nx_err;
74 => X"61_6C_75_20_3C_3D_20_53_5F_6D_69_6E_75_73_5F_52",

-- L0503@004B 4250203C3D20542C20696620595F5A45.  BP <= T, if Y_ZERO then return;
-- BP <= T, if Y_ZERO then return;
75 => X"42_50_20_3C_3D_20_54_2C_20_69_66_20_59_5F_5A_45",

-- L0504@004C 66696E644E65787443522873616D6529.  findNextCR(same);
-- findNextCR(same);
76 => X"66_69_6E_64_4E_65_78_74_43_52_28_73_61_6D_65_29",

-- L0505@004D 54203C3D20696E632C2069662066616C.  T <= inc, if false then continue else findLino;
-- T <= inc, if false then continue else findLino;
77 => X"54_20_3C_3D_20_69_6E_63_2C_20_69_66_20_66_61_6C",

-- L0510@004E 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 25;
-- trace(from_microcode), directByte = 25;
78 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0511@004F 616C75203C3D20525F66726F6D537461.  alu <= R_fromStack, if STACK_IS_EMPTY then ESTACK_ERR;
-- alu <= R_fromStack, if STACK_IS_EMPTY then ESTACK_ERR;
79 => X"61_6C_75_20_3C_3D_20_52_5F_66_72_6F_6D_53_74_61",

-- L0512@0050 457870537461636B203C3D20706F7032.  ExpStack <= pop2, alu <= neg_R, if false then continue else alu_done;
-- ExpStack <= pop2, alu <= neg_R, if false then continue else alu_done;
80 => X"45_78_70_53_74_61_63_6B_20_3C_3D_20_70_6F_70_32",

-- L0517@0051 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 22;
-- trace(from_microcode), directByte = 22;
81 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0518@0052 70756C6C525328293B20202020202020.  pullRS();
-- pullRS();
82 => X"70_75_6C_6C_52_53_28_29_3B_20_20_20_20_20_20_20",

-- L0519@0053 616C75203C3D20535F706C75735F522C.  alu <= S_plus_R, if ALU_READY then next else repeat;
-- alu <= S_plus_R, if ALU_READY then next else repeat;
83 => X"61_6C_75_20_3C_3D_20_53_5F_70_6C_75_73_5F_52_2C",

-- L0520@0054 616C755F646F6E653A20747261636541.alu_done:  traceALU();
-- alu_done: traceALU();
84 => X"61_6C_75_5F_64_6F_6E_65_3A_20_74_72_61_63_65_41",

-- L0521@0055 54203C3D2066726F6D5F594C6F2C2069.  T <= from_YLo, if ALU_OVERFLOW then OVERFLOW_ERR;
-- T <= from_YLo, if ALU_OVERFLOW then OVERFLOW_ERR;
85 => X"54_20_3C_3D_20_66_72_6F_6D_5F_59_4C_6F_2C_20_69",

-- L0522@0056 755F646F6E653A20457870537461636B.u_done:  ExpStack <= push_TWord, if false then continue else fetch;
-- u_done: ExpStack <= push_TWord, if false then continue else fetch;
86 => X"75_5F_64_6F_6E_65_3A_20_45_78_70_53_74_61_63_6B",

-- L0527@0057 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 23;
-- trace(from_microcode), directByte = 23;
87 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0528@0058 70756C6C525328293B20202020202020.  pullRS();
-- pullRS();
88 => X"70_75_6C_6C_52_53_28_29_3B_20_20_20_20_20_20_20",

-- L0529@0059 616C75203C3D20535F6D696E75735F52.  alu <= S_minus_R, if ALU_READY then alu_done else repeat;
-- alu <= S_minus_R, if ALU_READY then alu_done else repeat;
89 => X"61_6C_75_20_3C_3D_20_53_5F_6D_69_6E_75_73_5F_52",

-- L0534@005A 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 24;
-- trace(from_microcode), directByte = 24;
90 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0535@005B 70756C6C525328293B20202020202020.  pullRS();
-- pullRS();
91 => X"70_75_6C_6C_52_53_28_29_3B_20_20_20_20_20_20_20",

-- L0536@005C 616C75203C3D20535F6D756C5F522C20.  alu <= S_mul_R, if ALU_READY then alu_done else repeat;
-- alu <= S_mul_R, if ALU_READY then alu_done else repeat;
92 => X"61_6C_75_20_3C_3D_20_53_5F_6D_75_6C_5F_52_2C_20",

-- L0541@005D 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 35;
-- trace(from_microcode), directByte = 35;
93 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0542@005E 70756C6C525328293B20202020202020.  pullRS();
-- pullRS();
94 => X"70_75_6C_6C_52_53_28_29_3B_20_20_20_20_20_20_20",

-- L0543@005F 6469765F6D6F6428293B202020202020.  div_mod();
-- div_mod();
95 => X"64_69_76_5F_6D_6F_64_28_29_3B_20_20_20_20_20_20",

-- L0544@0060 69662066616C7365207468656E20636F.  if false then continue else alu_done;
-- if false then continue else alu_done;
96 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0546@0061 6469765F6D6F643A20616C75203C3D20.div_mod:  alu <= div_start, if R_IS_ZERO then DIVBY0_ERR;
-- div_mod: alu <= div_start, if R_IS_ZERO then DIVBY0_ERR;
97 => X"64_69_76_5F_6D_6F_64_3A_20_61_6C_75_20_3C_3D_20",

-- L0547@0062 6469765F6C6F6F703A20616C75203C3D.div_loop:  alu <= div_shift;
-- div_loop: alu <= div_shift;
98 => X"64_69_76_5F_6C_6F_6F_70_3A_20_61_6C_75_20_3C_3D",

-- L0548@0063 696620414C555F524541445920746865.  if ALU_READY then div_done;
-- if ALU_READY then div_done;
99 => X"69_66_20_41_4C_55_5F_52_45_41_44_59_20_74_68_65",

-- L0549@0064 616C75203C3D206469765F7375627365.  alu <= div_subset, if false then continue else div_loop;
-- alu <= div_subset, if false then continue else div_loop;
100 => X"61_6C_75_20_3C_3D_20_64_69_76_5F_73_75_62_73_65",

-- L0550@0065 6469765F646F6E653A20616C75203C3D.div_done:  alu <= div_end, if true then return else continue;
-- div_done: alu <= div_end, if true then return else continue;
101 => X"64_69_76_5F_64_6F_6E_65_3A_20_61_6C_75_20_3C_3D",

-- L0555@0066 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 46;
-- trace(from_microcode), directByte = 46;
102 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0556@0067 616C75203C3D20525F66726F6D537461.  alu <= R_fromStack, ExpStack <= pop2;
-- alu <= R_fromStack, ExpStack <= pop2;
103 => X"61_6C_75_20_3C_3D_20_52_5F_66_72_6F_6D_53_74_61",

-- L0557@0068 457870537461636B203C3D2070757368.  ExpStack <= push_TByte;
-- ExpStack <= push_TByte;
104 => X"45_78_70_53_74_61_63_6B_20_3C_3D_20_70_75_73_68",

-- L0558@0069 54203C3D20457870537461636B2C2045.  T <= ExpStack, ExpStack <= pop2;
-- T <= ExpStack, ExpStack <= pop2;
105 => X"54_20_3C_3D_20_45_78_70_53_74_61_63_6B_2C_20_45",

-- L0559@006A 616C75203C3D20535F66726F6D537461.  alu <= S_fromStack, ExpStack <= pop2, trace(from_microcode), directByte = 51;
-- alu <= S_fromStack, ExpStack <= pop2, trace(from_microcode), directByte = 51;
106 => X"61_6C_75_20_3C_3D_20_53_5F_66_72_6F_6D_53_74_61",

-- L0560@006B 69662043505F534B4950207468656E20.  if CP_SKIP then next else fetch1;
-- if CP_SKIP then next else fetch1;
107 => X"69_66_20_43_50_5F_53_4B_49_50_20_74_68_65_6E_20",

-- L0561@006C 494C5F5043203C3D20696E632C206966.  IL_PC <= inc, if false then continue else fetch1;
-- IL_PC <= inc, if false then continue else fetch1;
108 => X"49_4C_5F_50_43_20_3C_3D_20_69_6E_63_2C_20_69_66",

-- L0566@006D 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 39;
-- trace(from_microcode), directByte = 39;
109 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0567@006E 6E785F73746172743A20494C5F504320.nx_start:  IL_PC <= T, if IS_RUNMODE then next else fetch;
-- nx_start: IL_PC <= T, if IS_RUNMODE then next else fetch;
110 => X"6E_78_5F_73_74_61_72_74_3A_20_49_4C_5F_50_43_20",

-- L0568@006F 66696E644E7828293B20202020202020.  findNx();
-- findNx();
111 => X"66_69_6E_64_4E_78_28_29_3B_20_20_20_20_20_20_20",

-- L0569@0070 4C696E6F203C3D20542C20494C5F5043.  Lino <= T, IL_PC <= XQhere;
-- Lino <= T, IL_PC <= XQhere;
112 => X"4C_69_6E_6F_20_3C_3D_20_54_2C_20_49_4C_5F_50_43",

-- L0571@0071 6E785F636F6E743A2074726163654250.nx_cont:  traceBP();
-- nx_cont: traceBP();
113 => X"6E_78_5F_63_6F_6E_74_3A_20_74_72_61_63_65_42_50",

-- L0572@0072 6966204B42445F425245414B20746865.  if KBD_BREAK then BREAK else fetch;
-- if KBD_BREAK then BREAK else fetch;
114 => X"69_66_20_4B_42_44_5F_42_52_45_41_4B_20_74_68_65",

-- L0574@0073 66696E644E783A2066696E644E657874.findNx:  findNextCR(BP);
-- findNx: findNextCR(BP);
115 => X"66_69_6E_64_4E_78_3A_20_66_69_6E_64_4E_65_78_74",

-- L0575@0074 54203C3D20696E633B20202020202020.  T <= inc;
-- T <= inc;
116 => X"54_20_3C_3D_20_69_6E_63_3B_20_20_20_20_20_20_20",

-- L0576@0075 4250203C3D20543B2020202020202020.  BP <= T;
-- BP <= T;
117 => X"42_50_20_3C_3D_20_54_3B_20_20_20_20_20_20_20_20",

-- L0577@0076 72656164436F72653136287265736574.  readCore16(reset1, BP);
-- readCore16(reset1, BP);
118 => X"72_65_61_64_43_6F_72_65_31_36_28_72_65_73_65_74",

-- L0578@0077 4250203C3D20542C2054203C3D206672.  BP <= T, T <= from_R, if R_IS_ZERO then next else return;
-- BP <= T, T <= from_R, if R_IS_ZERO then next else return;
119 => X"42_50_20_3C_3D_20_54_2C_20_54_20_3C_3D_20_66_72",

-- L0580@0078 6E785F6572723A206469726563744279.nx_err:  directByte = 0x07, outChar(from_microcode);
-- nx_err: directByte = 0x07, outChar(from_microcode);
120 => X"6E_78_5F_65_72_72_3A_20_64_69_72_65_63_74_42_79",

-- L0581@0079 69662066616C7365207468656E20636F.  if false then continue else stop_run;
-- if false then continue else stop_run;
121 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0586@007A 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 4;
-- trace(from_microcode), directByte = 4;
122 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0587@007B 736B697053706163657328293B202020.  skipSpaces();
-- skipSpaces();
123 => X"73_6B_69_70_53_70_61_63_65_73_28_29_3B_20_20_20",

-- L0588@007C 66696E645F636F6C6F6E3A2072656164.find_colon:  readCore(BP);
-- find_colon: readCore(BP);
124 => X"66_69_6E_64_5F_63_6F_6C_6F_6E_3A_20_72_65_61_64",

-- L0589@007D 64697265637442797465203D20307830.  directByte = 0x0D, if MDR_MATCHES_DB then nx_start;
-- directByte = 0x0D, if MDR_MATCHES_DB then nx_start;
125 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_30_78_30",

-- L0590@007E 64697265637442797465203D20307833.  directByte = 0x3A, if MDR_MATCHES_DB then found_colon;
-- directByte = 0x3A, if MDR_MATCHES_DB then found_colon;
126 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_30_78_33",

-- L0591@007F 4250203C3D20696E632C206469726563.  BP <= inc, directByte = 0x00, if MDR_MATCHES_DB then INTERNAL_ERR else find_colon;
-- BP <= inc, directByte = 0x00, if MDR_MATCHES_DB then INTERNAL_ERR else find_colon;
127 => X"42_50_20_3C_3D_20_69_6E_63_2C_20_64_69_72_65_63",

-- L0592@0080 666F756E645F636F6C6F6E3A20425020.found_colon:  BP <= inc, IL_PC <= XQhere, if IS_RUNMODE then nx_cont else SYNTAX_ERR;
-- found_colon: BP <= inc, IL_PC <= XQhere, if IS_RUNMODE then nx_cont else SYNTAX_ERR;
128 => X"66_6F_75_6E_64_5F_63_6F_6C_6F_6E_3A_20_42_50_20",

-- L0597@0081 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 41;
-- trace(from_microcode), directByte = 41;
129 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0598@0082 616C75203C3D207265736574312C2069.  alu <= reset1, if IS_RUNMODE then badop;
-- alu <= reset1, if IS_RUNMODE then badop;
130 => X"61_6C_75_20_3C_3D_20_72_65_73_65_74_31_2C_20_69",

-- L0599@0083 6C735F7061726C6F61643A2054203C3D.ls_parload:  T <= from_R, if STACK_IS_EMPTY then ls_parchk;
-- ls_parload: T <= from_R, if STACK_IS_EMPTY then ls_parchk;
131 => X"6C_73_5F_70_61_72_6C_6F_61_64_3A_20_54_20_3C_3D",

-- L0600@0084 616C75203C3D20535F66726F6D543B20.  alu <= S_fromT;
-- alu <= S_fromT;
132 => X"61_6C_75_20_3C_3D_20_53_5F_66_72_6F_6D_54_3B_20",

-- L0601@0085 616C75203C3D20525F66726F6D537461.  alu <= R_fromStack, ExpStack <= pop2, if false then continue else ls_parload;
-- alu <= R_fromStack, ExpStack <= pop2, if false then continue else ls_parload;
133 => X"61_6C_75_20_3C_3D_20_52_5F_66_72_6F_6D_53_74_61",

-- L0602@0086 6C735F70617263686B3A20616C75203C.ls_parchk:  alu <= ls_load;
-- ls_parchk: alu <= ls_load;
134 => X"6C_73_5F_70_61_72_63_68_6B_3A_20_61_6C_75_20_3C",

-- L0603@0087 6966204C535F504152414D535F4F4B20.  if LS_PARAMS_OK then next else SYNTAX_ERR;
-- if LS_PARAMS_OK then next else SYNTAX_ERR;
135 => X"69_66_20_4C_53_5F_50_41_52_41_4D_53_5F_4F_4B_20",

-- L0605@0088 6C735F73746172743A2054203C3D2050.ls_start:  T <= Prog_start;
-- ls_start: T <= Prog_start;
136 => X"6C_73_5F_73_74_61_72_74_3A_20_54_20_3C_3D_20_50",

-- L0606@0089 6C735F6C696E656C6F6F703A20696620.ls_lineloop:  if CHARIN_READY then next else ls_continue;
-- ls_lineloop: if CHARIN_READY then next else ls_continue;
137 => X"6C_73_5F_6C_69_6E_65_6C_6F_6F_70_3A_20_69_66_20",

-- L0607@008A 6966204B42445F425245414B20746865.  if KBD_BREAK then BREAK;
-- if KBD_BREAK then BREAK;
138 => X"69_66_20_4B_42_44_5F_42_52_45_41_4B_20_74_68_65",

-- L0608@008B 676F7443686172203D20312C20646972.  gotChar = 1, directByte = ' ', if CHARIN_EQU_DB then next else ls_continue;
-- gotChar = 1, directByte = ' ', if CHARIN_EQU_DB then next else ls_continue;
139 => X"67_6F_74_43_68_61_72_20_3D_20_31_2C_20_64_69_72",

-- L0609@008C 6C735F70617573653A20696620434841.ls_pause:  if CHARIN_READY then next else repeat;
-- ls_pause: if CHARIN_READY then next else repeat;
140 => X"6C_73_5F_70_61_75_73_65_3A_20_69_66_20_43_48_41",

-- L0610@008D 676F7443686172203D20312C20646972.  gotChar = 1, directByte = ' ', if CHARIN_EQU_DB then next else ls_pause;
-- gotChar = 1, directByte = ' ', if CHARIN_EQU_DB then next else ls_pause;
141 => X"67_6F_74_43_68_61_72_20_3D_20_31_2C_20_64_69_72",

-- L0611@008E 6C735F636F6E74696E75653A20676F74.ls_continue:  gotChar = 1, readCore16(reset1, same);
-- ls_continue: gotChar = 1, readCore16(reset1, same);
142 => X"6C_73_5F_63_6F_6E_74_69_6E_75_65_3A_20_67_6F_74",

-- L0612@008F 616C75203C3D206C735F636865636B2C.  alu <= ls_check, if R_IS_ZERO then fetch;
-- alu <= ls_check, if R_IS_ZERO then fetch;
143 => X"61_6C_75_20_3C_3D_20_6C_73_5F_63_68_65_63_6B_2C",

-- L0613@0090 6966204C535F5041535345445F454E44.  if LS_PASSED_END then fetch;
-- if LS_PASSED_END then fetch;
144 => X"69_66_20_4C_53_5F_50_41_53_53_45_44_5F_45_4E_44",

-- L0614@0091 6966204C535F494E5F52414E47452074.  if LS_IN_RANGE then next else ls_nextLine;
-- if LS_IN_RANGE then next else ls_nextLine;
145 => X"69_66_20_4C_53_5F_49_4E_5F_52_41_4E_47_45_20_74",

-- L0616@0092 54203C3D20736176652C207072696E74.  T <= save, printDecR(Y_save);
-- T <= save, printDecR(Y_save);
146 => X"54_20_3C_3D_20_73_61_76_65_2C_20_70_72_69_6E_74",

-- L0617@0093 54203C3D20726563616C6C2C20616C75.  T <= recall, alu <= Y_recall, directByte = ' ', outChar(from_microcode);
-- T <= recall, alu <= Y_recall, directByte = ' ', outChar(from_microcode);
147 => X"54_20_3C_3D_20_72_65_63_61_6C_6C_2C_20_61_6C_75",

-- L0618@0094 6C735F636861726C6F6F703A20726561.ls_charloop:  readCore(T);
-- ls_charloop: readCore(T);
148 => X"6C_73_5F_63_68_61_72_6C_6F_6F_70_3A_20_72_65_61",

-- L0619@0095 6F7574436861722866726F6D5F4D4452.  outChar(from_MDR);
-- outChar(from_MDR);
149 => X"6F_75_74_43_68_61_72_28_66_72_6F_6D_5F_4D_44_52",

-- L0620@0096 6C735F6E657874636861723A20646972.ls_nextchar:  directByte = 0x0D, if MDR_MATCHES_DB then next else ls_next;
-- ls_nextchar: directByte = 0x0D, if MDR_MATCHES_DB then next else ls_next;
150 => X"6C_73_5F_6E_65_78_74_63_68_61_72_3A_20_64_69_72",

-- L0621@0097 64697265637442797465203D20307830.  directByte = 0x0A, outChar(from_microcode);
-- directByte = 0x0A, outChar(from_microcode);
151 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_30_78_30",

-- L0622@0098 54203C3D20696E632C2069662066616C.  T <= inc, if false then continue else ls_lineloop;
-- T <= inc, if false then continue else ls_lineloop;
152 => X"54_20_3C_3D_20_69_6E_63_2C_20_69_66_20_66_61_6C",

-- L0623@0099 6C735F6E6578743A2054203C3D20696E.ls_next:  T <= inc, if false then continue else ls_charloop;
-- ls_next: T <= inc, if false then continue else ls_charloop;
153 => X"6C_73_5F_6E_65_78_74_3A_20_54_20_3C_3D_20_69_6E",

-- L0624@009A 6C735F6E6578744C696E653A2066696E.ls_nextLine:  findNextCR(same);
-- ls_nextLine: findNextCR(same);
154 => X"6C_73_5F_6E_65_78_74_4C_69_6E_65_3A_20_66_69_6E",

-- L0625@009B 54203C3D20696E632C2069662066616C.  T <= inc, if false then continue else ls_lineloop;
-- T <= inc, if false then continue else ls_lineloop;
155 => X"54_20_3C_3D_20_69_6E_63_2C_20_69_66_20_66_61_6C",

-- L0630@009C 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 26;
-- trace(from_microcode), directByte = 26;
156 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0631@009D 696620535441434B5F49535F454D5054.  if STACK_IS_EMPTY then ESTACK_ERR;
-- if STACK_IS_EMPTY then ESTACK_ERR;
157 => X"69_66_20_53_54_41_43_4B_5F_49_53_5F_45_4D_50_54",

-- L0632@009E 7072696E7444656328293B2020202020.  printDec();
-- printDec();
158 => X"70_72_69_6E_74_44_65_63_28_29_3B_20_20_20_20_20",

-- L0633@009F 69662066616C7365207468656E20636F.  if false then continue else fetch;
-- if false then continue else fetch;
159 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0638@00A0 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 18;
-- trace(from_microcode), directByte = 18;
160 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0639@00A1 70715F6C6F6F703A204250203C3D2069.pq_loop:  BP <= inc, readCore(BP);
-- pq_loop: BP <= inc, readCore(BP);
161 => X"70_71_5F_6C_6F_6F_70_3A_20_42_50_20_3C_3D_20_69",

-- L0640@00A2 64697265637442797465203D20272227.  directByte = '"', if MDR_MATCHES_DB then pq_done;
-- directByte = '"', if MDR_MATCHES_DB then pq_done;
162 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_27_22_27",

-- L0641@00A3 6F7574436861722866726F6D5F4D4452.  outChar(from_MDR);
-- outChar(from_MDR);
163 => X"6F_75_74_43_68_61_72_28_66_72_6F_6D_5F_4D_44_52",

-- L0643@00A4 64697265637442797465203D20307830.  directByte = 0x0D, if MDR_MATCHES_DB then INTERNAL_ERR else pq_loop;
-- directByte = 0x0D, if MDR_MATCHES_DB then INTERNAL_ERR else pq_loop;
164 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_30_78_30",

-- L0644@00A5 70715F646F6E653A2074726163654250.pq_done:  traceBP();
-- pq_done: traceBP();
165 => X"70_71_5F_64_6F_6E_65_3A_20_74_72_61_63_65_42_50",

-- L0645@00A6 69662066616C7365207468656E20636F.  if false then continue else fetch;
-- if false then continue else fetch;
166 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0650@00A7 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 27;
-- trace(from_microcode), directByte = 27;
167 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0651@00A8 70745F6C6F6F703A2069662041545F54.pt_loop:  if AT_TAB then fetch;
-- pt_loop: if AT_TAB then fetch;
168 => X"70_74_5F_6C_6F_6F_70_3A_20_69_66_20_41_54_5F_54",

-- L0652@00A9 64697265637442797465203D20272027.  directByte = ' ', outChar(from_microcode);
-- directByte = ' ', outChar(from_microcode);
169 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_27_20_27",

-- L0653@00AA 69662066616C7365207468656E20636F.  if false then continue else pt_loop;
-- if false then continue else pt_loop;
170 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0658@00AB 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 6;
-- trace(from_microcode), directByte = 6;
171 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0659@00AC 63726C665F66657463683A206F757443.crlf_fetch:  outCRLF();
-- crlf_fetch: outCRLF();
172 => X"63_72_6C_66_5F_66_65_74_63_68_3A_20_6F_75_74_43",

-- L0660@00AD 69662066616C7365207468656E20636F.  if false then continue else fetch;
-- if false then continue else fetch;
173 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0665@00AE 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 5;
-- trace(from_microcode), directByte = 5;
174 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0666@00AF 70635F6C6F6F703A206F757443686172.pc_loop:  outChar(from_interpreter);
-- pc_loop: outChar(from_interpreter);
175 => X"70_63_5F_6C_6F_6F_70_3A_20_6F_75_74_43_68_61_72",

-- L0667@00B0 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 3;
-- trace(from_microcode), directByte = 3;
176 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0668@00B1 494C5F5043203C3D20696E632C206966.  IL_PC <= inc, if ILCODEBYTE_BIT7 then fetch else pc_loop;
-- IL_PC <= inc, if ILCODEBYTE_BIT7 then fetch else pc_loop;
177 => X"49_4C_5F_50_43_20_3C_3D_20_69_6E_63_2C_20_69_66",

-- L0673@00B2 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 4;
-- trace(from_microcode), directByte = 4;
178 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0674@00B3 70756C6C525328293B20202020202020.  pullRS();
-- pullRS();
179 => X"70_75_6C_6C_52_53_28_29_3B_20_20_20_20_20_20_20",

-- L0675@00B4 54203C3D20457870537461636B2C2045.  T <= ExpStack, ExpStack <= pop2;
-- T <= ExpStack, ExpStack <= pop2;
180 => X"54_20_3C_3D_20_45_78_70_53_74_61_63_6B_2C_20_45",

-- L0676@00B5 56617273203C3D20696E64657846726F.  Vars <= indexFromExpStack, if STACK_IS_EMPTY then ESTACK_ERR;
-- Vars <= indexFromExpStack, if STACK_IS_EMPTY then ESTACK_ERR;
181 => X"56_61_72_73_20_3C_3D_20_69_6E_64_65_78_46_72_6F",

-- L0678@00B6 457870537461636B203C3D20706F7031.  ExpStack <= pop1, if NEXT_SET then next else for_first;
-- ExpStack <= pop1, if NEXT_SET then next else for_first;
182 => X"45_78_70_53_74_61_63_6B_20_3C_3D_20_70_6F_70_31",

-- L0681@00B7 56617273203C3D20666F725F66726F6D.  Vars <= for_fromLino, T <= from_vars, if FOR_SET then next else SYNTAX_ERR;
-- Vars <= for_fromLino, T <= from_vars, if FOR_SET then next else SYNTAX_ERR;
183 => X"56_61_72_73_20_3C_3D_20_66_6F_72_5F_66_72_6F_6D",

-- L0682@00B8 616C75203C3D20666F725F737465703B.  alu <= for_step;
-- alu <= for_step;
184 => X"61_6C_75_20_3C_3D_20_66_6F_72_5F_73_74_65_70_3B",

-- L0683@00B9 54203C3D2066726F6D5F594C6F2C2069.  T <= from_YLo, if false then continue else for_check;
-- T <= from_YLo, if false then continue else for_check;
185 => X"54_20_3C_3D_20_66_72_6F_6D_5F_59_4C_6F_2C_20_69",

-- L0686@00BA 666F725F66697273743A205661727320.for_first:  Vars <= for_fromLino;
-- for_first: Vars <= for_fromLino;
186 => X"66_6F_72_5F_66_69_72_73_74_3A_20_56_61_72_73_20",

-- L0687@00BB 666F725F636865636B3A20616C75203C.for_check:  alu <= for_check;
-- for_check: alu <= for_check;
187 => X"66_6F_72_5F_63_68_65_63_6B_3A_20_61_6C_75_20_3C",

-- L0688@00BC 56617273203C3D20542C20696620414C.  Vars <= T, if ALU_READY then for_done;
-- Vars <= T, if ALU_READY then for_done;
188 => X"56_61_72_73_20_3C_3D_20_54_2C_20_69_66_20_41_4C",

-- L0691@00BD 54203C3D2066726F6D5F7661725F4E65.  T <= from_var_Next, if NEXT_SET then next else find_next;
-- T <= from_var_Next, if NEXT_SET then next else find_next;
189 => X"54_20_3C_3D_20_66_72_6F_6D_5F_76_61_72_5F_4E_65",

-- L0692@00BE 56617273203C3D20666F725F636C6561.  Vars <= for_clear, BP <= T, if false then continue else for_done;
-- Vars <= for_clear, BP <= T, if false then continue else for_done;
190 => X"56_61_72_73_20_3C_3D_20_66_6F_72_5F_63_6C_65_61",

-- L0695@00BF 66696E645F6E6578743A205661727320.find_next:  Vars <= for_clear, findNx();
-- find_next: Vars <= for_clear, findNx();
191 => X"66_69_6E_64_5F_6E_65_78_74_3A_20_56_61_72_73_20",

-- L0696@00C0 736B697053706163657328293B202020.  skipSpaces();
-- skipSpaces();
192 => X"73_6B_69_70_53_70_61_63_65_73_28_29_3B_20_20_20",

-- L0697@00C1 72656164436F7265284250292C204250.  readCore(BP), BP <= inc;
-- readCore(BP), BP <= inc;
193 => X"72_65_61_64_43_6F_72_65_28_42_50_29_2C_20_42_50",

-- L0698@00C2 64697265637442797465203D20274E27.  directByte = 'N', if MDR_MATCHES_DB then next else find_cont;
-- directByte = 'N', if MDR_MATCHES_DB then next else find_cont;
194 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_27_4E_27",

-- L0699@00C3 72656164436F7265284250292C204250.  readCore(BP), BP <= inc;
-- readCore(BP), BP <= inc;
195 => X"72_65_61_64_43_6F_72_65_28_42_50_29_2C_20_42_50",

-- L0700@00C4 64697265637442797465203D20274527.  directByte = 'E', if MDR_MATCHES_DB then next else find_cont;
-- directByte = 'E', if MDR_MATCHES_DB then next else find_cont;
196 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_27_45_27",

-- L0701@00C5 72656164436F7265284250292C204250.  readCore(BP), BP <= inc;
-- readCore(BP), BP <= inc;
197 => X"72_65_61_64_43_6F_72_65_28_42_50_29_2C_20_42_50",

-- L0702@00C6 64697265637442797465203D20275827.  directByte = 'X', if MDR_MATCHES_DB then next else find_cont;
-- directByte = 'X', if MDR_MATCHES_DB then next else find_cont;
198 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_27_58_27",

-- L0703@00C7 72656164436F7265284250292C204250.  readCore(BP), BP <= inc;
-- readCore(BP), BP <= inc;
199 => X"72_65_61_64_43_6F_72_65_28_42_50_29_2C_20_42_50",

-- L0704@00C8 64697265637442797465203D20275427.  directByte = 'T', if MDR_MATCHES_DB then next else find_cont;
-- directByte = 'T', if MDR_MATCHES_DB then next else find_cont;
200 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_27_54_27",

-- L0705@00C9 736B697053706163657328293B202020.  skipSpaces();
-- skipSpaces();
201 => X"73_6B_69_70_53_70_61_63_65_73_28_29_3B_20_20_20",

-- L0706@00CA 72656164436F7265284250293B202020.  readCore(BP);
-- readCore(BP);
202 => X"72_65_61_64_43_6F_72_65_28_42_50_29_3B_20_20_20",

-- L0707@00CB 6966204D44525F4D4154434845535F56.  if MDR_MATCHES_VARNAME then for_done;
-- if MDR_MATCHES_VARNAME then for_done;
203 => X"69_66_20_4D_44_52_5F_4D_41_54_43_48_45_53_5F_56",

-- L0708@00CC 66696E645F636F6E743A2066696E644E.find_cont:  findNextCR(BP);
-- find_cont: findNextCR(BP);
204 => X"66_69_6E_64_5F_63_6F_6E_74_3A_20_66_69_6E_64_4E",

-- L0709@00CD 69662066616C7365207468656E20636F.  if false then continue else find_next;
-- if false then continue else find_next;
205 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0711@00CE 666F725F646F6E653A2056617273203C.for_done:  Vars <= next_clear, findNx();
-- for_done: Vars <= next_clear, findNx();
206 => X"66_6F_72_5F_64_6F_6E_65_3A_20_56_61_72_73_20_3C",

-- L0713@00CF 457870537461636B203C3D2020707573.  ExpStack <=  push_TWord, if false then continue else fetch;
-- ExpStack <=  push_TWord, if false then continue else fetch;
207 => X"45_78_70_53_74_61_63_6B_20_3C_3D_20_20_70_75_73",

-- L0718@00D0 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 4;
-- trace(from_microcode), directByte = 4;
208 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0719@00D1 56617273203C3D20696E64657846726F.  Vars <= indexFromExpStack, if STACK_IS_EMPTY then ESTACK_ERR;
-- Vars <= indexFromExpStack, if STACK_IS_EMPTY then ESTACK_ERR;
209 => X"56_61_72_73_20_3C_3D_20_69_6E_64_65_78_46_72_6F",

-- L0720@00D2 457870537461636B203C3D20706F7031.  ExpStack <= pop1, T <= from_var_For, if FOR_SET then next else INTERNAL_ERR;
-- ExpStack <= pop1, T <= from_var_For, if FOR_SET then next else INTERNAL_ERR;
210 => X"45_78_70_53_74_61_63_6B_20_3C_3D_20_70_6F_70_31",

-- L0721@00D3 56617273203C3D206E6578745F66726F.  Vars <= next_fromBP, ExpStack <= push_TWord, if false then continue else fetch;
-- Vars <= next_fromBP, ExpStack <= push_TWord, if false then continue else fetch;
211 => X"56_61_72_73_20_3C_3D_20_6E_65_78_74_5F_66_72_6F",

-- L0726@00D4 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 8;
-- trace(from_microcode), directByte = 8;
212 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0727@00D5 676C3A20496E6C456E64203C3D20496E.gl:  InlEnd <= InLine_start;
-- gl: InlEnd <= InLine_start;
213 => X"67_6C_3A_20_49_6E_6C_45_6E_64_20_3C_3D_20_49_6E",

-- L0728@00D6 676C5F6C6F6F703A2069662043484152.gl_loop:  if CHARIN_READY then next else repeat;
-- gl_loop: if CHARIN_READY then next else repeat;
214 => X"67_6C_5F_6C_6F_6F_70_3A_20_69_66_20_43_48_41_52",

-- L0729@00D7 6966204B42445F425245414B20746865.  if KBD_BREAK then next else gl_char;
-- if KBD_BREAK then next else gl_char;
215 => X"69_66_20_4B_42_44_5F_42_52_45_41_4B_20_74_68_65",

-- L0730@00D8 676F7443686172203D20312C20696620.  gotChar = 1, if IS_RUNMODE then stop_run else gl_esc;
-- gotChar = 1, if IS_RUNMODE then stop_run else gl_esc;
216 => X"67_6F_74_43_68_61_72_20_3D_20_31_2C_20_69_66_20",

-- L0731@00D9 676C5F636861723A2069662043484152.gl_char:  if CHARIN_PRINTABLE then gl_print;
-- gl_char: if CHARIN_PRINTABLE then gl_print;
217 => X"67_6C_5F_63_68_61_72_3A_20_69_66_20_43_48_41_52",

-- L0732@00DA 64697265637442797465203D20307830.  directByte = 0x0D, if CHARIN_EQU_DB then gl_cr;
-- directByte = 0x0D, if CHARIN_EQU_DB then gl_cr;
218 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_30_78_30",

-- L0733@00DB 64697265637442797465203D20307830.  directByte = 0x08, if CHARIN_EQU_DB then gl_bs;
-- directByte = 0x08, if CHARIN_EQU_DB then gl_bs;
219 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_30_78_30",

-- L0734@00DC 64697265637442797465203D20307831.  directByte = 0x1b, if CHARIN_EQU_DB then gl_esc;
-- directByte = 0x1b, if CHARIN_EQU_DB then gl_esc;
220 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_30_78_31",

-- L0735@00DD 64697265637442797465203D20307830.  directByte = 0x09, if CHARIN_EQU_DB then gl_tab;
-- directByte = 0x09, if CHARIN_EQU_DB then gl_tab;
221 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_30_78_30",

-- L0737@00DE 676C5F69676E6F72653A206469726563.gl_ignore:  directByte = 0x07, outChar(from_microcode);
-- gl_ignore: directByte = 0x07, outChar(from_microcode);
222 => X"67_6C_5F_69_67_6E_6F_72_65_3A_20_64_69_72_65_63",

-- L0738@00DF 676F7443686172203D20312C20696620.  gotChar = 1, if false then continue else gl_loop;
-- gotChar = 1, if false then continue else gl_loop;
223 => X"67_6F_74_43_68_61_72_20_3D_20_31_2C_20_69_66_20",

-- L0740@00E0 676C5F7072696E743A20696620494E4C.gl_print:  if INLEND_MAX then gl_ignore;
-- gl_print: if INLEND_MAX then gl_ignore;
224 => X"67_6C_5F_70_72_69_6E_74_3A_20_69_66_20_49_4E_4C",

-- L0741@00E1 6F7574436861722866726F6D5F636861.  outChar(from_charin);
-- outChar(from_charin);
225 => X"6F_75_74_43_68_61_72_28_66_72_6F_6D_5F_63_68_61",

-- L0742@00E2 7772697465436F726528496E6C456E64.  writeCore(InlEnd, CHARIN), InlEnd <= inc;
-- writeCore(InlEnd, CHARIN), InlEnd <= inc;
226 => X"77_72_69_74_65_43_6F_72_65_28_49_6E_6C_45_6E_64",

-- L0743@00E3 676C5F7772697465303A207772697465.gl_write0:  writeCore(InlEnd, zero);
-- gl_write0: writeCore(InlEnd, zero);
227 => X"67_6C_5F_77_72_69_74_65_30_3A_20_77_72_69_74_65",

-- L0744@00E4 676F7443686172203D20312C20696620.  gotChar = 1, if false then continue else gl_loop;
-- gotChar = 1, if false then continue else gl_loop;
228 => X"67_6F_74_43_68_61_72_20_3D_20_31_2C_20_69_66_20",

-- L0746@00E5 676C5F6573633A206F75744265657028.gl_esc:  outBeep();
-- gl_esc: outBeep();
229 => X"67_6C_5F_65_73_63_3A_20_6F_75_74_42_65_65_70_28",

-- L0747@00E6 676F7443686172203D20312C20696620.  gotChar = 1, if false then continue else gl;
-- gotChar = 1, if false then continue else gl;
230 => X"67_6F_74_43_68_61_72_20_3D_20_31_2C_20_69_66_20",

-- L0749@00E7 676C5F62733A20696620494E4C454E44.gl_bs:  if INLEND_MIN then gl_ignore;
-- gl_bs: if INLEND_MIN then gl_ignore;
231 => X"67_6C_5F_62_73_3A_20_69_66_20_49_4E_4C_45_4E_44",

-- L0750@00E8 64697265637442797465203D20307830.  directByte = 0x08, outChar(from_microcode);
-- directByte = 0x08, outChar(from_microcode);
232 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_30_78_30",

-- L0751@00E9 496E6C456E64203C3D206465632C2069.  InlEnd <= dec, if false then continue else gl_write0;
-- InlEnd <= dec, if false then continue else gl_write0;
233 => X"49_6E_6C_45_6E_64_20_3C_3D_20_64_65_63_2C_20_69",

-- L0753@00EA 676C5F63723A207772697465436F7265.gl_cr:  writeCore(InlEnd, CHARIN), InlEnd <= inc;
-- gl_cr: writeCore(InlEnd, CHARIN), InlEnd <= inc;
234 => X"67_6C_5F_63_72_3A_20_77_72_69_74_65_43_6F_72_65",

-- L0754@00EB 7772697465436F726528496E6C456E64.  writeCore(InlEnd, zero);
-- writeCore(InlEnd, zero);
235 => X"77_72_69_74_65_43_6F_72_65_28_49_6E_6C_45_6E_64",

-- L0756@00EC 6F757443524C4628293B202020202020.  outCRLF();
-- outCRLF();
236 => X"6F_75_74_43_52_4C_46_28_29_3B_20_20_20_20_20_20",

-- L0757@00ED 676F7443686172203D20312C20425020.  gotChar = 1, BP <= Inline_start, if false then continue else fetch;
-- gotChar = 1, BP <= Inline_start, if false then continue else fetch;
237 => X"67_6F_74_43_68_61_72_20_3D_20_31_2C_20_42_50_20",

-- L0759@00EE 676C5F7461623A20696620494E4C454E.gl_tab:  if INLEND_MAX then gl_ignore;
-- gl_tab: if INLEND_MAX then gl_ignore;
238 => X"67_6C_5F_74_61_62_3A_20_69_66_20_49_4E_4C_45_4E",

-- L0760@00EF 676C5F7461626C6F6F703A2069662041.gl_tabloop:  if AT_TAB then gl_write0;
-- gl_tabloop: if AT_TAB then gl_write0;
239 => X"67_6C_5F_74_61_62_6C_6F_6F_70_3A_20_69_66_20_41",

-- L0761@00F0 64697265637442797465203D20272027.  directByte = ' ', outChar(from_microcode);
-- directByte = ' ', outChar(from_microcode);
240 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_27_20_27",

-- L0762@00F1 64697265637442797465203D20272027.  directByte = ' ', writeCore(InlEnd, from_microcode), InlEnd <= inc;
-- directByte = ' ', writeCore(InlEnd, from_microcode), InlEnd <= inc;
241 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_27_20_27",

-- L0763@00F2 69662066616C7365207468656E20636F.  if false then continue else gl_tabloop;
-- if false then continue else gl_tabloop;
242 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0768@00F3 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 40;
-- trace(from_microcode), directByte = 40;
243 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0769@00F4 616C75203C3D20535F66726F6D537461.  alu <= S_fromStack, ExpStack <= pop2;
-- alu <= S_fromStack, ExpStack <= pop2;
244 => X"61_6C_75_20_3C_3D_20_53_5F_66_72_6F_6D_53_74_61",

-- L0770@00F5 616C75203C3D20535F706C75735F523B.  alu <= S_plus_R;
-- alu <= S_plus_R;
245 => X"61_6C_75_20_3C_3D_20_53_5F_70_6C_75_73_5F_52_3B",

-- L0771@00F6 54203C3D2066726F6D5F594C6F2C2069.  T <= from_YLo, if Y_SIGN then SYNTAX_ERR;
-- T <= from_YLo, if Y_SIGN then SYNTAX_ERR;
246 => X"54_20_3C_3D_20_66_72_6F_6D_5F_59_4C_6F_2C_20_69",

-- L0772@00F7 4C696E6F203C3D20542C20696620595F.  Lino <= T, if Y_ZERO then SYNTAX_ERR;
-- Lino <= T, if Y_ZERO then SYNTAX_ERR;
247 => X"4C_69_6E_6F_20_3C_3D_20_54_2C_20_69_66_20_59_5F",

-- L0775@00F8 736B697053706163657328293B202020.  skipSpaces();
-- skipSpaces();
248 => X"73_6B_69_70_53_70_61_63_65_73_28_29_3B_20_20_20",

-- L0776@00F9 54203C3D2042503B2020202020202020.  T <= BP;
-- T <= BP;
249 => X"54_20_3C_3D_20_42_50_3B_20_20_20_20_20_20_20_20",

-- L0777@00FA 696C5F66696E6442453A204245203C3D.il_findBE:  BE <= T, readCore(T);
-- il_findBE: BE <= T, readCore(T);
250 => X"69_6C_5F_66_69_6E_64_42_45_3A_20_42_45_20_3C_3D",

-- L0778@00FB 64697265637442797465203D20307830.  directByte = 0x0D, if MDR_MATCHES_DB then il_fork;
-- directByte = 0x0D, if MDR_MATCHES_DB then il_fork;
251 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_30_78_30",

-- L0779@00FC 54203C3D20696E632C2069662066616C.  T <= inc, if false then continue else il_findBE;
-- T <= inc, if false then continue else il_findBE;
252 => X"54_20_3C_3D_20_69_6E_63_2C_20_69_66_20_66_61_6C",

-- L0781@00FD 696C5F666F726B3A207363616E50726F.il_fork:  scanProgram();
-- il_fork: scanProgram();
253 => X"69_6C_5F_66_6F_72_6B_3A_20_73_63_61_6E_50_72_6F",

-- L0782@00FE 696620494D504C494E455F454D505459.  if IMPLINE_EMPTY then next else changeLine;
-- if IMPLINE_EMPTY then next else changeLine;
254 => X"69_66_20_49_4D_50_4C_49_4E_45_5F_45_4D_50_54_59",

-- L0784@00FF 64656C6574654C696E653A2069662052.deleteLine:  if R_IS_ZERO then WarmStart;
-- deleteLine: if R_IS_ZERO then WarmStart;
255 => X"64_65_6C_65_74_65_4C_69_6E_65_3A_20_69_66_20_52",

-- L0785@0100 696620595F5A45524F207468656E206E.  if Y_ZERO then next else WarmStart;
-- if Y_ZERO then next else WarmStart;
256 => X"69_66_20_59_5F_5A_45_52_4F_20_74_68_65_6E_20_6E",

-- L0786@0101 66696E64507267456E6428293B202020.  findPrgEnd();
-- findPrgEnd();
257 => X"66_69_6E_64_50_72_67_45_6E_64_28_29_3B_20_20_20",

-- L0787@0102 636F7079436F726528636F70795F696E.  copyCore(copy_init_del);
-- copyCore(copy_init_del);
258 => X"63_6F_70_79_43_6F_72_65_28_63_6F_70_79_5F_69_6E",

-- L0788@0103 69662066616C7365207468656E20636F.  if false then continue else WarmStart;
-- if false then continue else WarmStart;
259 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0790@0104 6368616E67654C696E653A2069662052.changeLine:  if R_IS_ZERO then appendLine;
-- changeLine: if R_IS_ZERO then appendLine;
260 => X"63_68_61_6E_67_65_4C_69_6E_65_3A_20_69_66_20_52",

-- L0791@0105 696620595F5A45524F207468656E206E.  if Y_ZERO then next else insertLine;
-- if Y_ZERO then next else insertLine;
261 => X"69_66_20_59_5F_5A_45_52_4F_20_74_68_65_6E_20_6E",

-- L0793@0106 7265706C6163654C696E653A2066696E.replaceLine:  findPrgEnd();
-- replaceLine: findPrgEnd();
262 => X"72_65_70_6C_61_63_65_4C_69_6E_65_3A_20_66_69_6E",

-- L0794@0107 636F7079436F726528636F70795F696E.  copyCore(copy_init_del);
-- copyCore(copy_init_del);
263 => X"63_6F_70_79_43_6F_72_65_28_63_6F_70_79_5F_69_6E",

-- L0795@0108 7363616E50726F6772616D28293B2020.  scanProgram();
-- scanProgram();
264 => X"73_63_61_6E_50_72_6F_67_72_61_6D_28_29_3B_20_20",

-- L0796@0109 696E736572744C696E653A2066696E64.insertLine:  findPrgEnd();
-- insertLine: findPrgEnd();
265 => X"69_6E_73_65_72_74_4C_69_6E_65_3A_20_66_69_6E_64",

-- L0797@010A 636F7079436F726528636F70795F696E.  copyCore(copy_init_ins);
-- copyCore(copy_init_ins);
266 => X"63_6F_70_79_43_6F_72_65_28_63_6F_70_79_5F_69_6E",

-- L0798@010B 696E735F66696E6973683A20636F7079.ins_finish:  copyLine(LS);
-- ins_finish: copyLine(LS);
267 => X"69_6E_73_5F_66_69_6E_69_73_68_3A_20_63_6F_70_79",

-- L0799@010C 69662066616C7365207468656E20636F.  if false then continue else WarmStart;
-- if false then continue else WarmStart;
268 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0801@010D 617070656E644C696E653A2054203C3D.appendLine:  T <= dec;
-- appendLine: T <= dec;
269 => X"61_70_70_65_6E_64_4C_69_6E_65_3A_20_54_20_3C_3D",

-- L0802@010E 636F70794C696E6528646563293B2020.  copyLine(dec);
-- copyLine(dec);
270 => X"63_6F_70_79_4C_69_6E_65_28_64_65_63_29_3B_20_20",

-- L0803@010F 7772697465324E756C6C732873616D65.  write2Nulls(same);
-- write2Nulls(same);
271 => X"77_72_69_74_65_32_4E_75_6C_6C_73_28_73_61_6D_65",

-- L0804@0110 69662066616C7365207468656E20636F.  if false then continue else WarmStart;
-- if false then continue else WarmStart;
272 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0806@0111 636F70794C696E653A20616C75203C3D.copyLine:  alu <= S_fromLino;
-- copyLine: alu <= S_fromLino;
273 => X"63_6F_70_79_4C_69_6E_65_3A_20_61_6C_75_20_3C_3D",

-- L0807@0112 7772697465436F726528542C2066726F.  writeCore(T, from_SHi);
-- writeCore(T, from_SHi);
274 => X"77_72_69_74_65_43_6F_72_65_28_54_2C_20_66_72_6F",

-- L0808@0113 54203C3D20696E633B20202020202020.  T <= inc;
-- T <= inc;
275 => X"54_20_3C_3D_20_69_6E_63_3B_20_20_20_20_20_20_20",

-- L0809@0114 7772697465436F726528542C2066726F.  writeCore(T, from_SLo);
-- writeCore(T, from_SLo);
276 => X"77_72_69_74_65_43_6F_72_65_28_54_2C_20_66_72_6F",

-- L0810@0115 54203C3D20696E633B20202020202020.  T <= inc;
-- T <= inc;
277 => X"54_20_3C_3D_20_69_6E_63_3B_20_20_20_20_20_20_20",

-- L0811@0116 6170705F6C6F6F703A2072656164436F.app_loop:  readCore(BP);
-- app_loop: readCore(BP);
278 => X"61_70_70_5F_6C_6F_6F_70_3A_20_72_65_61_64_43_6F",

-- L0812@0117 7772697465436F726528542C2073616D.  writeCore(T, same);
-- writeCore(T, same);
279 => X"77_72_69_74_65_43_6F_72_65_28_54_2C_20_73_61_6D",

-- L0813@0118 4250203C3D20696E632C2054203C3D20.  BP <= inc, T <= inc, directByte = 0x0D, if MDR_MATCHES_DB then return else app_loop;
-- BP <= inc, T <= inc, directByte = 0x0D, if MDR_MATCHES_DB then return else app_loop;
280 => X"42_50_20_3C_3D_20_69_6E_63_2C_20_54_20_3C_3D_20",

-- L0815@0119 66696E64507267456E643A2054203C3D.findPrgEnd:  T <= Prog_start;
-- findPrgEnd: T <= Prog_start;
281 => X"66_69_6E_64_50_72_67_45_6E_64_3A_20_54_20_3C_3D",

-- L0816@011A 6670655F6C6F6F703A2072656164436F.fpe_loop:  readCore16(reset1, same);
-- fpe_loop: readCore16(reset1, same);
282 => X"66_70_65_5F_6C_6F_6F_70_3A_20_72_65_61_64_43_6F",

-- L0817@011B 696620525F49535F5A45524F20746865.  if R_IS_ZERO then next else fpe_next;
-- if R_IS_ZERO then next else fpe_next;
283 => X"69_66_20_52_5F_49_53_5F_5A_45_52_4F_20_74_68_65",

-- L0818@011C 54203C3D206465633B20202020202020.  T <= dec;
-- T <= dec;
284 => X"54_20_3C_3D_20_64_65_63_3B_20_20_20_20_20_20_20",

-- L0819@011D 507267456E64203C3D20542C20696620.  PrgEnd <= T, if true then return else continue;
-- PrgEnd <= T, if true then return else continue;
285 => X"50_72_67_45_6E_64_20_3C_3D_20_54_2C_20_69_66_20",

-- L0820@011E 6670655F6E6578743A2066696E644E65.fpe_next:  findNextCR(same);
-- fpe_next: findNextCR(same);
286 => X"66_70_65_5F_6E_65_78_74_3A_20_66_69_6E_64_4E_65",

-- L0821@011F 54203C3D20696E632C2069662066616C.  T <= inc, if false then continue else fpe_loop;
-- T <= inc, if false then continue else fpe_loop;
287 => X"54_20_3C_3D_20_69_6E_63_2C_20_69_66_20_66_61_6C",

-- L0825@0120 7363616E50726F6772616D3A2054203C.scanProgram:  T <= zero;
-- scanProgram: T <= zero;
288 => X"73_63_61_6E_50_72_6F_67_72_61_6D_3A_20_54_20_3C",

-- L0826@0121 4C53203C3D20542C204C45203C3D2054.  LS <= T, LE <= T, T <= Prog_start;
-- LS <= T, LE <= T, T <= Prog_start;
289 => X"4C_53_20_3C_3D_20_54_2C_20_4C_45_20_3C_3D_20_54",

-- L0828@0122 7363616E5F6C6F6F703A204C53203C3D.scan_loop:  LS <= T, readCore16(reset1, same);
-- scan_loop: LS <= T, readCore16(reset1, same);
290 => X"73_63_61_6E_5F_6C_6F_6F_70_3A_20_4C_53_20_3C_3D",

-- L0829@0123 616C75203C3D20535F66726F6D4C696E.  alu <= S_fromLino, if R_IS_ZERO then return;
-- alu <= S_fromLino, if R_IS_ZERO then return;
291 => X"61_6C_75_20_3C_3D_20_53_5F_66_72_6F_6D_4C_69_6E",

-- L0830@0124 7363616E5F636865636B3A20616C7520.scan_check:  alu <= S_minus_R;
-- scan_check: alu <= S_minus_R;
292 => X"73_63_61_6E_5F_63_68_65_63_6B_3A_20_61_6C_75_20",

-- L0832@0125 696620595F5A45524F207468656E2073.  if Y_ZERO then scan_found else next;
-- if Y_ZERO then scan_found else next;
293 => X"69_66_20_59_5F_5A_45_52_4F_20_74_68_65_6E_20_73",

-- L0833@0126 696620595F5349474E207468656E2073.  if Y_SIGN then scan_found else next;
-- if Y_SIGN then scan_found else next;
294 => X"69_66_20_59_5F_53_49_47_4E_20_74_68_65_6E_20_73",

-- L0834@0127 7363616E5F6E6578743A2066696E644E.scan_next:  findNextCR(same);
-- scan_next: findNextCR(same);
295 => X"73_63_61_6E_5F_6E_65_78_74_3A_20_66_69_6E_64_4E",

-- L0835@0128 7363616E5F6C696E653A2054203C3D20.scan_line:  T <= inc, if false then continue else scan_loop;
-- scan_line: T <= inc, if false then continue else scan_loop;
296 => X"73_63_61_6E_5F_6C_69_6E_65_3A_20_54_20_3C_3D_20",

-- L0837@0129 7363616E5F666F756E643A2066696E64.scan_found:  findNextCR(same);
-- scan_found: findNextCR(same);
297 => X"73_63_61_6E_5F_66_6F_75_6E_64_3A_20_66_69_6E_64",

-- L0838@012A 4C45203C3D20542C2069662074727565.  LE <= T, if true then return else continue;
-- LE <= T, if true then return else continue;
298 => X"4C_45_20_3C_3D_20_54_2C_20_69_66_20_74_72_75_65",

-- L0841@012B 636F7079436F72653A2054203C3D2066.copyCore:  T <= from_S, if Y_ZERO then return;
-- copyCore: T <= from_S, if Y_ZERO then return;
299 => X"63_6F_70_79_43_6F_72_65_3A_20_54_20_3C_3D_20_66",

-- L0842@012C 72656164436F72652854293B20202020.  readCore(T);
-- readCore(T);
300 => X"72_65_61_64_43_6F_72_65_28_54_29_3B_20_20_20_20",

-- L0843@012D 54203C3D2066726F6D5F523B20202020.  T <= from_R;
-- T <= from_R;
301 => X"54_20_3C_3D_20_66_72_6F_6D_5F_52_3B_20_20_20_20",

-- L0844@012E 7772697465436F726528542C2073616D.  writeCore(T, same);
-- writeCore(T, same);
302 => X"77_72_69_74_65_43_6F_72_65_28_54_2C_20_73_61_6D",

-- L0846@012F 616C75203C3D20636F70795F6E657874.  alu <= copy_next, if false then continue else copyCore;
-- alu <= copy_next, if false then continue else copyCore;
303 => X"61_6C_75_20_3C_3D_20_63_6F_70_79_5F_6E_65_78_74",

-- L0851@0130 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 43;
-- trace(from_microcode), directByte = 43;
304 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0852@0131 69662066616C7365207468656E20636F.  if false then continue else ColdStart;
-- if false then continue else ColdStart;
305 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0857@0132 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 42;
-- trace(from_microcode), directByte = 42;
306 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0858@0133 54203C3D20494C5F50433B2020202020.  T <= IL_PC;
-- T <= IL_PC;
307 => X"54_20_3C_3D_20_49_4C_5F_50_43_3B_20_20_20_20_20",

-- L0859@0134 585168657265203C3D20542C20726561.  XQhere <= T, readCore16(reset1, Prog_start);
-- XQhere <= T, readCore16(reset1, Prog_start);
308 => X"58_51_68_65_72_65_20_3C_3D_20_54_2C_20_72_65_61",

-- L0860@0135 4250203C3D20542C2054203C3D206672.  BP <= T, T <= from_R, if R_IS_ZERO then NOPROG_ERR;
-- BP <= T, T <= from_R, if R_IS_ZERO then NOPROG_ERR;
309 => X"42_50_20_3C_3D_20_54_2C_20_54_20_3C_3D_20_66_72",

-- L0861@0136 4C696E6F203C3D20542C206966206661.  Lino <= T, if false then continue else fetch;
-- Lino <= T, if false then continue else fetch;
310 => X"4C_69_6E_6F_20_3C_3D_20_54_2C_20_69_66_20_66_61",

-- L0866@0137 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 44;
-- trace(from_microcode), directByte = 44;
311 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0867@0138 73746F705F72756E3A20646972656374.stop_run:  directByte = 'S', outChar(from_microcode);
-- stop_run: directByte = 'S', outChar(from_microcode);
312 => X"73_74_6F_70_5F_72_75_6E_3A_20_64_69_72_65_63_74",

-- L0868@0139 64697265637442797465203D20275427.  directByte = 'T', outChar(from_microcode);
-- directByte = 'T', outChar(from_microcode);
313 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_27_54_27",

-- L0869@013A 64697265637442797465203D20274F27.  directByte = 'O', outChar(from_microcode);
-- directByte = 'O', outChar(from_microcode);
314 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_27_4F_27",

-- L0870@013B 64697265637442797465203D20275027.  directByte = 'P', outChar(from_microcode);
-- directByte = 'P', outChar(from_microcode);
315 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_27_50_27",

-- L0871@013C 69662066616C7365207468656E20636F.  if false then continue else print_lino;
-- if false then continue else print_lino;
316 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0876@013D 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 49;
-- trace(from_microcode), directByte = 49;
317 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0877@013E 616C75203C3D20525F66726F6D537461.  alu <= R_fromStack, ExpStack <= pop2;
-- alu <= R_fromStack, ExpStack <= pop2;
318 => X"61_6C_75_20_3C_3D_20_52_5F_66_72_6F_6D_53_74_61",

-- L0878@013F 54203C3D20457870537461636B2C2045.  T <= ExpStack, ExpStack <= pop2;
-- T <= ExpStack, ExpStack <= pop2;
319 => X"54_20_3C_3D_20_45_78_70_53_74_61_63_6B_2C_20_45",

-- L0879@0140 616C75203C3D20535F66726F6D537461.  alu <= S_fromStack, ExpStack <= pop2;
-- alu <= S_fromStack, ExpStack <= pop2;
320 => X"61_6C_75_20_3C_3D_20_53_5F_66_72_6F_6D_53_74_61",

-- L0883@0141 64697265637442797465203D2033302C.  directByte = 30, if S_EQU_DB_MOD32 then u_getarray;
-- directByte = 30, if S_EQU_DB_MOD32 then u_getarray;
321 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_33_30_2C",

-- L0884@0142 64697265637442797465203D2033312C.  directByte = 31, if S_EQU_DB_MOD32 then u_setarray;
-- directByte = 31, if S_EQU_DB_MOD32 then u_setarray;
322 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_33_31_2C",

-- L0886@0143 64697265637442797465203D2032302C.  directByte = 20, if S_EQU_DB_MOD32 then u_peek8;
-- directByte = 20, if S_EQU_DB_MOD32 then u_peek8;
323 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_32_30_2C",

-- L0887@0144 64697265637442797465203D2032342C.  directByte = 24, if S_EQU_DB_MOD32 then u_poke8;
-- directByte = 24, if S_EQU_DB_MOD32 then u_poke8;
324 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_32_34_2C",

-- L0889@0145 64697265637442797465203D2032312C.  directByte = 21, if S_EQU_DB_MOD32 then u_peek16;
-- directByte = 21, if S_EQU_DB_MOD32 then u_peek16;
325 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_32_31_2C",

-- L0890@0146 64697265637442797465203D2032352C.  directByte = 25, if S_EQU_DB_MOD32 then u_poke16;
-- directByte = 25, if S_EQU_DB_MOD32 then u_poke16;
326 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_32_35_2C",

-- L0892@0147 64697265637442797465203D2032322C.  directByte = 22, if S_EQU_DB_MOD32 then u_peek32;
-- directByte = 22, if S_EQU_DB_MOD32 then u_peek32;
327 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_32_32_2C",

-- L0893@0148 64697265637442797465203D2032362C.  directByte = 26, if S_EQU_DB_MOD32 then u_poke32;
-- directByte = 26, if S_EQU_DB_MOD32 then u_poke32;
328 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_32_36_2C",

-- L0895@0149 64697265637442797465203D2032372C.  directByte = 27, if S_EQU_DB_MOD32 then u_modulo;
-- directByte = 27, if S_EQU_DB_MOD32 then u_modulo;
329 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_32_37_2C",

-- L0896@014A 64697265637442797465203D2031382C.  directByte = 18, if S_EQU_DB_MOD32 then u_random;
-- directByte = 18, if S_EQU_DB_MOD32 then u_random;
330 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_31_38_2C",

-- L0898@014B 64697265637442797465203D2032332C.  directByte = 23, if S_EQU_DB_MOD32 then u_charin;
-- directByte = 23, if S_EQU_DB_MOD32 then u_charin;
331 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_32_33_2C",

-- L0899@014C 64697265637442797465203D2032382C.  directByte = 28, if S_EQU_DB_MOD32 then u_charout;
-- directByte = 28, if S_EQU_DB_MOD32 then u_charout;
332 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_32_38_2C",

-- L0901@014D 64697265637442797465203D2031392C.  directByte = 19, if S_EQU_DB_MOD32 then u_coreend;
-- directByte = 19, if S_EQU_DB_MOD32 then u_coreend;
333 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_31_39_2C",

-- L0902@014E 64697265637442797465203D2032392C.  directByte = 29, if S_EQU_DB_MOD32 then u_prgend;
-- directByte = 29, if S_EQU_DB_MOD32 then u_prgend;
334 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_32_39_2C",

-- L0904@014F 54203C3D2062696E6F702C2069662066.  T <= binop, if false then continue else u_done;
-- T <= binop, if false then continue else u_done;
335 => X"54_20_3C_3D_20_62_69_6E_6F_70_2C_20_69_66_20_66",

-- L0906@0150 755F72616E646F6D3A2054203C3D2066.u_random:  T <= from_lfsr;
-- u_random: T <= from_lfsr;
336 => X"75_5F_72_61_6E_64_6F_6D_3A_20_54_20_3C_3D_20_66",

-- L0907@0151 755F6D6F64756C6F3A20616C75203C3D.u_modulo:  alu <= S_fromT, div_mod();
-- u_modulo: alu <= S_fromT, div_mod();
337 => X"75_5F_6D_6F_64_75_6C_6F_3A_20_61_6C_75_20_3C_3D",

-- L0908@0152 54203C3D2066726F6D5F5948692C2069.  T <= from_YHi, if false then continue else u_done;
-- T <= from_YHi, if false then continue else u_done;
338 => X"54_20_3C_3D_20_66_72_6F_6D_5F_59_48_69_2C_20_69",

-- L0910@0153 755F636861726F75743A20616C75203C.u_charout:  alu <= S_fromT;
-- u_charout: alu <= S_fromT;
339 => X"75_5F_63_68_61_72_6F_75_74_3A_20_61_6C_75_20_3C",

-- L0911@0154 4D4452203C3D2066726F6D5F534C6F2C.  MDR <= from_SLo, trace(from_microcode), directByte = 51;
-- MDR <= from_SLo, trace(from_microcode), directByte = 51;
340 => X"4D_44_52_20_3C_3D_20_66_72_6F_6D_5F_53_4C_6F_2C",

-- L0912@0155 6F7574436861722866726F6D5F4D4452.  outChar(from_MDR);
-- outChar(from_MDR);
341 => X"6F_75_74_43_68_61_72_28_66_72_6F_6D_5F_4D_44_52",

-- L0913@0156 457870537461636B203C3D2070757368.  ExpStack <= push_TWord, if false then continue else fetch1;
-- ExpStack <= push_TWord, if false then continue else fetch1;
342 => X"45_78_70_53_74_61_63_6B_20_3C_3D_20_70_75_73_68",

-- L0915@0157 755F63686172696E3A20696620434841.u_charin:  if CHARIN_READY then next else repeat;
-- u_charin: if CHARIN_READY then next else repeat;
343 => X"75_5F_63_68_61_72_69_6E_3A_20_69_66_20_43_48_41",

-- L0916@0158 676F7443686172203D20312C204D4452.  gotChar = 1, MDR <= CHARIN, if false then continue else u_in;
-- gotChar = 1, MDR <= CHARIN, if false then continue else u_in;
344 => X"67_6F_74_43_68_61_72_20_3D_20_31_2C_20_4D_44_52",

-- L0918@0159 755F7065656B383A2072656164436F72.u_peek8:  readCore(T);
-- u_peek8: readCore(T);
345 => X"75_5F_70_65_65_6B_38_3A_20_72_65_61_64_43_6F_72",

-- L0919@015A 755F696E3A2054203C3D204D44522C20.u_in:  T <= MDR, if false then continue else u_done;
-- u_in: T <= MDR, if false then continue else u_done;
346 => X"75_5F_69_6E_3A_20_54_20_3C_3D_20_4D_44_52_2C_20",

-- L0921@015B 755F707267656E643A2054203C3D2050.u_prgend:  T <= PrgEnd, if false then continue else u_done;
-- u_prgend: T <= PrgEnd, if false then continue else u_done;
347 => X"75_5F_70_72_67_65_6E_64_3A_20_54_20_3C_3D_20_50",

-- L0922@015C 755F636F7265656E643A2054203C3D20.u_coreend:  T <= Core_End, if false then continue else u_done;
-- u_coreend: T <= Core_End, if false then continue else u_done;
348 => X"75_5F_63_6F_72_65_65_6E_64_3A_20_54_20_3C_3D_20",

-- L0924@015D 755F67657461727261793A2054203C3D.u_getarray:  T <= index2address, if IS_CPU32 then u_peek32;
-- u_getarray: T <= index2address, if IS_CPU32 then u_peek32;
349 => X"75_5F_67_65_74_61_72_72_61_79_3A_20_54_20_3C_3D",

-- L0925@015E 755F7065656B31363A2072656164436F.u_peek16:  readCore16(reset0, same);
-- u_peek16: readCore16(reset0, same);
350 => X"75_5F_70_65_65_6B_31_36_3A_20_72_65_61_64_43_6F",

-- L0926@015F 54203C3D2066726F6D5F522C20696620.  T <= from_R, if false then continue else u_done;
-- T <= from_R, if false then continue else u_done;
351 => X"54_20_3C_3D_20_66_72_6F_6D_5F_52_2C_20_69_66_20",

-- L0927@0160 755F7065656B33323A2072656164436F.u_peek32:  readCore16(reset0, same);
-- u_peek32: readCore16(reset0, same);
352 => X"75_5F_70_65_65_6B_33_32_3A_20_72_65_61_64_43_6F",

-- L0928@0161 72656164436F72653136286E6F702C20.  readCore16(nop, same);
-- readCore16(nop, same);
353 => X"72_65_61_64_43_6F_72_65_31_36_28_6E_6F_70_2C_20",

-- L0929@0162 54203C3D2066726F6D5F522C20696620.  T <= from_R, if false then continue else u_done;
-- T <= from_R, if false then continue else u_done;
354 => X"54_20_3C_3D_20_66_72_6F_6D_5F_52_2C_20_69_66_20",

-- L0931@0163 755F706F6B65383A2070726570577269.u_poke8:  prepWrite();
-- u_poke8: prepWrite();
355 => X"75_5F_70_6F_6B_65_38_3A_20_70_72_65_70_57_72_69",

-- L0932@0164 7772697465436F726528542C2066726F.  writeCore(T, from_SLo);
-- writeCore(T, from_SLo);
356 => X"77_72_69_74_65_43_6F_72_65_28_54_2C_20_66_72_6F",

-- L0933@0165 69662066616C7365207468656E20636F.  if false then continue else fetch1;
-- if false then continue else fetch1;
357 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0935@0166 755F73657461727261793A2054203C3D.u_setarray:  T <= index2address, if IS_CPU32 then u_poke32;
-- u_setarray: T <= index2address, if IS_CPU32 then u_poke32;
358 => X"75_5F_73_65_74_61_72_72_61_79_3A_20_54_20_3C_3D",

-- L0936@0167 755F706F6B6531363A20707265705772.u_poke16:  prepWrite();
-- u_poke16: prepWrite();
359 => X"75_5F_70_6F_6B_65_31_36_3A_20_70_72_65_70_57_72",

-- L0937@0168 54203C3D20696E632C20777269746553.  T <= inc, writeS16();
-- T <= inc, writeS16();
360 => X"54_20_3C_3D_20_69_6E_63_2C_20_77_72_69_74_65_53",

-- L0938@0169 69662066616C7365207468656E20636F.  if false then continue else fetch1;
-- if false then continue else fetch1;
361 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0940@016A 755F706F6B6533323A20707265705772.u_poke32:  prepWrite();
-- u_poke32: prepWrite();
362 => X"75_5F_70_6F_6B_65_33_32_3A_20_70_72_65_70_57_72",

-- L0941@016B 54203C3D20696E633B20202020202020.  T <= inc;
-- T <= inc;
363 => X"54_20_3C_3D_20_69_6E_63_3B_20_20_20_20_20_20_20",

-- L0942@016C 54203C3D20696E633B20202020202020.  T <= inc;
-- T <= inc;
364 => X"54_20_3C_3D_20_69_6E_63_3B_20_20_20_20_20_20_20",

-- L0943@016D 54203C3D20696E632C20777269746553.  T <= inc, writeS16();
-- T <= inc, writeS16();
365 => X"54_20_3C_3D_20_69_6E_63_2C_20_77_72_69_74_65_53",

-- L0944@016E 616C75203C3D20535F7377617033322C.  alu <= S_swap32, writeS16();
-- alu <= S_swap32, writeS16();
366 => X"61_6C_75_20_3C_3D_20_53_5F_73_77_61_70_33_32_2C",

-- L0945@016F 69662066616C7365207468656E20636F.  if false then continue else fetch1;
-- if false then continue else fetch1;
367 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0947@0170 7072657057726974653A2054203C3D20.prepWrite:  T <= save, trace(from_microcode), directByte = 51;
-- prepWrite: T <= save, trace(from_microcode), directByte = 51;
368 => X"70_72_65_70_57_72_69_74_65_3A_20_54_20_3C_3D_20",

-- L0948@0171 54203C3D2066726F6D5F523B20202020.  T <= from_R;
-- T <= from_R;
369 => X"54_20_3C_3D_20_66_72_6F_6D_5F_52_3B_20_20_20_20",

-- L0949@0172 457870537461636B203C3D2070757368.  ExpStack <= push_TWord, alu <= S_fromT, T <= recall, if true then return else continue;
-- ExpStack <= push_TWord, alu <= S_fromT, T <= recall, if true then return else continue;
370 => X"45_78_70_53_74_61_63_6B_20_3C_3D_20_70_75_73_68",

-- L0954@0173 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 19;
-- trace(from_microcode), directByte = 19;
371 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0955@0174 696620535441434B5F49535F454D5054.  if STACK_IS_EMPTY then RSTACK_ERR;
-- if STACK_IS_EMPTY then RSTACK_ERR;
372 => X"69_66_20_53_54_41_43_4B_5F_49_53_5F_45_4D_50_54",

-- L0956@0175 494C5F5043203C3D2052657453746163.  IL_PC <= RetStack, RetStack <= pop, if false then continue else fetch;
-- IL_PC <= RetStack, RetStack <= pop, if false then continue else fetch;
373 => X"49_4C_5F_50_43_20_3C_3D_20_52_65_74_53_74_61_63",

-- L0961@0176 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 20;
-- trace(from_microcode), directByte = 20;
374 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0962@0177 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 3;
-- trace(from_microcode), directByte = 3;
375 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0963@0178 696620535441434B5F49535F46554C4C.  if STACK_IS_FULL then RSTACK_ERR;
-- if STACK_IS_FULL then RSTACK_ERR;
376 => X"69_66_20_53_54_41_43_4B_5F_49_53_5F_46_55_4C_4C",

-- L0964@0179 526574537461636B203C3D2070757368.  RetStack <= push_IL_PC_PLUS_1, if false then continue else jump;
-- RetStack <= push_IL_PC_PLUS_1, if false then continue else jump;
377 => X"52_65_74_53_74_61_63_6B_20_3C_3D_20_70_75_73_68",

-- L0969@017A 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 21;
-- trace(from_microcode), directByte = 21;
378 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0970@017B 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 3;
-- trace(from_microcode), directByte = 3;
379 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0971@017C 6A756D703A20494C5F5043203C3D2064.jump:  IL_PC <= direct11, if false then continue else fetch;
-- jump: IL_PC <= direct11, if false then continue else fetch;
380 => X"6A_75_6D_70_3A_20_49_4C_5F_50_43_20_3C_3D_20_64",

-- L0976@017D 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 7;
-- trace(from_microcode), directByte = 7;
381 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0977@017E 494C5F5043203C3D2070635F706C7573.  IL_PC <= pc_plus_off6;
-- IL_PC <= pc_plus_off6;
382 => X"49_4C_5F_50_43_20_3C_3D_20_70_63_5F_70_6C_75_73",

-- L0978@017F 62725F657869743A2074726163652866.br_exit:  trace(from_microcode), directByte = 30;
-- br_exit: trace(from_microcode), directByte = 30;
383 => X"62_72_5F_65_78_69_74_3A_20_74_72_61_63_65_28_66",

-- L0979@0180 69662066616C7365207468656E20636F.  if false then continue else fetch;
-- if false then continue else fetch;
384 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0984@0181 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 7;
-- trace(from_microcode), directByte = 7;
385 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0985@0182 69662066616C7365207468656E20636F.  if false then continue else badop;
-- if false then continue else badop;
386 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0990@0183 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 17;
-- trace(from_microcode), directByte = 17;
387 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0991@0184 54203C3D20494C5F50432C204250203C.  T <= IL_PC, BP <= save, skipSpaces();
-- T <= IL_PC, BP <= save, skipSpaces();
388 => X"54_20_3C_3D_20_49_4C_5F_50_43_2C_20_42_50_20_3C",

-- L0992@0185 62635F6C6F6F703A2074726163652866.bc_loop:  trace(from_microcode), directByte = 3;
-- bc_loop: trace(from_microcode), directByte = 3;
389 => X"62_63_5F_6C_6F_6F_70_3A_20_74_72_61_63_65_28_66",

-- L0993@0186 72656164436F7265284250293B202020.  readCore(BP);
-- readCore(BP);
390 => X"72_65_61_64_43_6F_72_65_28_42_50_29_3B_20_20_20",

-- L0994@0187 6966204D44525F4D4154434845535F49.  if MDR_MATCHES_ILCODEBYTE then next else bc_exit;
-- if MDR_MATCHES_ILCODEBYTE then next else bc_exit;
391 => X"69_66_20_4D_44_52_5F_4D_41_54_43_48_45_53_5F_49",

-- L0995@0188 4250203C3D20696E632C20494C5F5043.  BP <= inc, IL_PC <= inc, if ILCODEBYTE_BIT7 then next else bc_loop;
-- BP <= inc, IL_PC <= inc, if ILCODEBYTE_BIT7 then next else bc_loop;
392 => X"42_50_20_3C_3D_20_69_6E_63_2C_20_49_4C_5F_50_43",

-- L0997@0189 69662066616C7365207468656E20636F.  if false then continue else fetch;
-- if false then continue else fetch;
393 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0998@018A 62635F657869743A204250203C3D2072.bc_exit:  BP <= recall, IL_PC <= T;
-- bc_exit: BP <= recall, IL_PC <= T;
394 => X"62_63_5F_65_78_69_74_3A_20_42_50_20_3C_3D_20_72",

-- L1000@018B 494C5F5043203C3D2070635F706C7573.  IL_PC <= pc_plus_off5, if OFF_IS_ZERO then SYNTAX_ERR else br_exit;
-- IL_PC <= pc_plus_off5, if OFF_IS_ZERO then SYNTAX_ERR else br_exit;
395 => X"49_4C_5F_50_43_20_3C_3D_20_70_63_5F_70_6C_75_73",

-- L1005@018C 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 16;
-- trace(from_microcode), directByte = 16;
396 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L1006@018D 736B697053706163657328293B202020.  skipSpaces();
-- skipSpaces();
397 => X"73_6B_69_70_53_70_61_63_65_73_28_29_3B_20_20_20",

-- L1007@018E 4D4452203C3D20546F55707065722C20.  MDR <= ToUpper, if MDR_IS_ALPHA then bv_exec;
-- MDR <= ToUpper, if MDR_IS_ALPHA then bv_exec;
398 => X"4D_44_52_20_3C_3D_20_54_6F_55_70_70_65_72_2C_20",

-- L1008@018F 494C5F5043203C3D2070635F706C7573.  IL_PC <= pc_plus_off5, if OFF_IS_ZERO then SYNTAX_ERR else br_exit;
-- IL_PC <= pc_plus_off5, if OFF_IS_ZERO then SYNTAX_ERR else br_exit;
399 => X"49_4C_5F_50_43_20_3C_3D_20_70_63_5F_70_6C_75_73",

-- L1009@0190 62765F657865633A2054203C3D204D44.bv_exec:  T <= MDRx2, if STACK_IS_FULL then ESTACK_ERR;
-- bv_exec: T <= MDRx2, if STACK_IS_FULL then ESTACK_ERR;
400 => X"62_76_5F_65_78_65_63_3A_20_54_20_3C_3D_20_4D_44",

-- L1010@0191 457870537461636B203C3D2070757368.  ExpStack <= push_TByte, BP <= inc, if false then continue else fetch;
-- ExpStack <= push_TByte, BP <= inc, if false then continue else fetch;
401 => X"45_78_70_53_74_61_63_6B_20_3C_3D_20_70_75_73_68",

-- L1015@0192 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 14;
-- trace(from_microcode), directByte = 14;
402 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L1016@0193 736B697053706163657328293B202020.  skipSpaces();
-- skipSpaces();
403 => X"73_6B_69_70_53_70_61_63_65_73_28_29_3B_20_20_20",

-- L1017@0194 616C75203C3D207265736574302C2069.  alu <= reset0, if MDR_IS_NUM then bn_loop;
-- alu <= reset0, if MDR_IS_NUM then bn_loop;
404 => X"61_6C_75_20_3C_3D_20_72_65_73_65_74_30_2C_20_69",

-- L1018@0195 494C5F5043203C3D2070635F706C7573.  IL_PC <= pc_plus_off5, if OFF_IS_ZERO then badop;
-- IL_PC <= pc_plus_off5, if OFF_IS_ZERO then badop;
405 => X"49_4C_5F_50_43_20_3C_3D_20_70_63_5F_70_6C_75_73",

-- L1019@0196 626E5F657869743A2074726163655928.bn_exit:  traceY();
-- bn_exit: traceY();
406 => X"62_6E_5F_65_78_69_74_3A_20_74_72_61_63_65_59_28",

-- L1020@0197 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 30;
-- trace(from_microcode), directByte = 30;
407 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L1021@0198 69662066616C7365207468656E20636F.  if false then continue else fetch;
-- if false then continue else fetch;
408 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L1022@0199 626E5F6C6F6F703A20616C75203C3D20.bn_loop:  alu <= Yx10_plus_MDR, BP <= inc;
-- bn_loop: alu <= Yx10_plus_MDR, BP <= inc;
409 => X"62_6E_5F_6C_6F_6F_70_3A_20_61_6C_75_20_3C_3D_20",

-- L1023@019A 696620414C555F4F564552464C4F5720.  if ALU_OVERFLOW then OVERFLOW_ERR;
-- if ALU_OVERFLOW then OVERFLOW_ERR;
410 => X"69_66_20_41_4C_55_5F_4F_56_45_52_46_4C_4F_57_20",

-- L1024@019B 72656164436F7265284250293B202020.  readCore(BP);
-- readCore(BP);
411 => X"72_65_61_64_43_6F_72_65_28_42_50_29_3B_20_20_20",

-- L1025@019C 6966204D44525F49535F4E554D207468.  if MDR_IS_NUM then bn_loop;
-- if MDR_IS_NUM then bn_loop;
412 => X"69_66_20_4D_44_52_5F_49_53_5F_4E_55_4D_20_74_68",

-- L1026@019D 54203C3D2066726F6D5F594C6F2C2069.  T <= from_YLo, if STACK_IS_FULL then ESTACK_ERR;
-- T <= from_YLo, if STACK_IS_FULL then ESTACK_ERR;
413 => X"54_20_3C_3D_20_66_72_6F_6D_5F_59_4C_6F_2C_20_69",

-- L1027@019E 457870537461636B203C3D2070757368.  ExpStack <= push_TWord, if false then continue else bn_exit;
-- ExpStack <= push_TWord, if false then continue else bn_exit;
414 => X"45_78_70_53_74_61_63_6B_20_3C_3D_20_70_75_73_68",

-- L1032@019F 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 13;
-- trace(from_microcode), directByte = 13;
415 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L1033@01A0 736B697053706163657328293B202020.  skipSpaces();
-- skipSpaces();
416 => X"73_6B_69_70_53_70_61_63_65_73_28_29_3B_20_20_20",

-- L1034@01A1 64697265637442797465203D20307830.  directByte = 0x0D, if MDR_MATCHES_DB then fetch;
-- directByte = 0x0D, if MDR_MATCHES_DB then fetch;
417 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_30_78_30",

-- L1035@01A2 494C5F5043203C3D2070635F706C7573.  IL_PC <= pc_plus_off5, if OFF_IS_ZERO then SYNTAX_ERR else br_exit;
-- IL_PC <= pc_plus_off5, if OFF_IS_ZERO then SYNTAX_ERR else br_exit;
418 => X"49_4C_5F_50_43_20_3C_3D_20_70_63_5F_70_6C_75_73",

-- L1037@01A3 425245414B3A20676F7443686172203D.BREAK:  gotChar = 1, trace(from_microcode), directByte = 55;
-- BREAK: gotChar = 1, trace(from_microcode), directByte = 55;
419 => X"42_52_45_41_4B_3A_20_67_6F_74_43_68_61_72_20_3D",

-- L1038@01A4 6F75744265657028293B202020202020.  outBeep();
-- outBeep();
420 => X"6F_75_74_42_65_65_70_28_29_3B_20_20_20_20_20_20",

-- L1039@01A5 64697265637442797465203D20274227.  directByte = 'B', outChar(from_microcode);
-- directByte = 'B', outChar(from_microcode);
421 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_27_42_27",

-- L1040@01A6 64697265637442797465203D20275227.  directByte = 'R', outChar(from_microcode);
-- directByte = 'R', outChar(from_microcode);
422 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_27_52_27",

-- L1041@01A7 64697265637442797465203D20274B27.  directByte = 'K', outChar(from_microcode);
-- directByte = 'K', outChar(from_microcode);
423 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_27_4B_27",

-- L1042@01A8 69662066616C7365207468656E20636F.  if false then continue else traceDetails;
-- if false then continue else traceDetails;
424 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L1044@01A9 4E4F50524F475F4552523A2064697265.NOPROG_ERR:  directByte = 50, DBGINDEX <= from_microcode, if false then continue else traceError;
-- NOPROG_ERR: directByte = 50, DBGINDEX <= from_microcode, if false then continue else traceError;
425 => X"4E_4F_50_52_4F_47_5F_45_52_52_3A_20_64_69_72_65",

-- L1045@01AA 4449564259305F4552523A2064697265.DIVBY0_ERR:  directByte = 57, DBGINDEX <= from_microcode, if false then continue else traceError;
-- DIVBY0_ERR: directByte = 57, DBGINDEX <= from_microcode, if false then continue else traceError;
426 => X"44_49_56_42_59_30_5F_45_52_52_3A_20_64_69_72_65",

-- L1046@01AB 4F564552464C4F575F4552523A206469.OVERFLOW_ERR:  directByte = 58, DBGINDEX <= from_microcode, if false then continue else traceError;
-- OVERFLOW_ERR: directByte = 58, DBGINDEX <= from_microcode, if false then continue else traceError;
427 => X"4F_56_45_52_46_4C_4F_57_5F_45_52_52_3A_20_64_69",

-- L1047@01AC 53594E5441585F4552523A2064697265.SYNTAX_ERR:  directByte = 61, DBGINDEX <= from_microcode, if false then continue else traceError;
-- SYNTAX_ERR: directByte = 61, DBGINDEX <= from_microcode, if false then continue else traceError;
428 => X"53_59_4E_54_41_58_5F_45_52_52_3A_20_64_69_72_65",

-- L1048@01AD 494E5445524E414C5F4552523A206469.INTERNAL_ERR:  directByte = 62, DBGINDEX <= from_microcode, if false then continue else traceError;
-- INTERNAL_ERR: directByte = 62, DBGINDEX <= from_microcode, if false then continue else traceError;
429 => X"49_4E_54_45_52_4E_41_4C_5F_45_52_52_3A_20_64_69",

-- L1049@01AE 45535441434B5F4552523A2064697265.ESTACK_ERR:  directByte = 60, DBGINDEX <= from_microcode, if false then continue else traceError;
-- ESTACK_ERR: directByte = 60, DBGINDEX <= from_microcode, if false then continue else traceError;
430 => X"45_53_54_41_43_4B_5F_45_52_52_3A_20_64_69_72_65",

-- L1050@01AF 52535441434B5F4552523A2064697265.RSTACK_ERR:  directByte = 59, DBGINDEX <= from_microcode, if false then continue else traceError;
-- RSTACK_ERR: directByte = 59, DBGINDEX <= from_microcode, if false then continue else traceError;
431 => X"52_53_54_41_43_4B_5F_45_52_52_3A_20_64_69_72_65",

-- L1051@01B0 42535441434B5F4552523A2064697265.BSTACK_ERR:  directByte = 54, DBGINDEX <= from_microcode;
-- BSTACK_ERR: directByte = 54, DBGINDEX <= from_microcode;
432 => X"42_53_54_41_43_4B_5F_45_52_52_3A_20_64_69_72_65",

-- L1052@01B1 74726163654572726F723A2069662044.traceError:  if DBG_READY then next else repeat;
-- traceError: if DBG_READY then next else repeat;
433 => X"74_72_61_63_65_45_72_72_6F_72_3A_20_69_66_20_44",

-- L1053@01B2 6966204442475F524541445920746865.  if DBG_READY then next else repeat;
-- if DBG_READY then next else repeat;
434 => X"69_66_20_44_42_47_5F_52_45_41_44_59_20_74_68_65",

-- L1054@01B3 444247494E444558203C3D207A65726F.  DBGINDEX <= zero, outBeep();
-- DBGINDEX <= zero, outBeep();
435 => X"44_42_47_49_4E_44_45_58_20_3C_3D_20_7A_65_72_6F",

-- L1055@01B4 64697265637442797465203D20274527.  directByte = 'E', outChar(from_microcode);
-- directByte = 'E', outChar(from_microcode);
436 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_27_45_27",

-- L1056@01B5 64697265637442797465203D20275227.  directByte = 'R', outChar(from_microcode);
-- directByte = 'R', outChar(from_microcode);
437 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_27_52_27",

-- L1057@01B6 64697265637442797465203D20275227.  directByte = 'R', outChar(from_microcode);
-- directByte = 'R', outChar(from_microcode);
438 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_27_52_27",

-- L1058@01B7 747261636544657461696C733A206469.traceDetails:  directByte = '#', outChar(from_microcode), T <= IL_PC;
-- traceDetails: directByte = '#', outChar(from_microcode), T <= IL_PC;
439 => X"74_72_61_63_65_44_65_74_61_69_6C_73_3A_20_64_69",

-- L1059@01B8 54203C3D206465633B20202020202020.  T <= dec;
-- T <= dec;
440 => X"54_20_3C_3D_20_64_65_63_3B_20_20_20_20_20_20_20",

-- L1060@01B9 7072696E744465635228525F66726F6D.  printDecR(R_fromT);
-- printDecR(R_fromT);
441 => X"70_72_69_6E_74_44_65_63_52_28_52_5F_66_72_6F_6D",

-- L1061@01BA 69662049535F52554E4D4F4445207468.  if IS_RUNMODE then next else err_done;
-- if IS_RUNMODE then next else err_done;
442 => X"69_66_20_49_53_5F_52_55_4E_4D_4F_44_45_20_74_68",

-- L1062@01BB 7072696E745F6C696E6F3A2064697265.print_lino:  directByte = ' ', outChar(from_microcode), alu <= S_fromLino;
-- print_lino: directByte = ' ', outChar(from_microcode), alu <= S_fromLino;
443 => X"70_72_69_6E_74_5F_6C_69_6E_6F_3A_20_64_69_72_65",

-- L1063@01BC 64697265637442797465203D20274127.  directByte = 'A', outChar(from_microcode), T <= from_S;
-- directByte = 'A', outChar(from_microcode), T <= from_S;
444 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_27_41_27",

-- L1064@01BD 64697265637442797465203D20275427.  directByte = 'T', outChar(from_microcode), LS <= T;
-- directByte = 'T', outChar(from_microcode), LS <= T;
445 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_27_54_27",

-- L1065@01BE 64697265637442797465203D20272027.  directByte = ' ', outChar(from_microcode), T <= LS;
-- directByte = ' ', outChar(from_microcode), T <= LS;
446 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_27_20_27",

-- L1066@01BF 7072696E744465635228525F66726F6D.  printDecR(R_fromT);
-- printDecR(R_fromT);
447 => X"70_72_69_6E_74_44_65_63_52_28_52_5F_66_72_6F_6D",

-- L1067@01C0 64697265637442797465203D20272027.  directByte = ' ', outChar(from_microcode), T <= fromTicks;
-- directByte = ' ', outChar(from_microcode), T <= fromTicks;
448 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_27_20_27",

-- L1068@01C1 7072696E744465635228525F66726F6D.  printDecR(R_fromT);
-- printDecR(R_fromT);
449 => X"70_72_69_6E_74_44_65_63_52_28_52_5F_66_72_6F_6D",

-- L1069@01C2 64697265637442797465203D20272E27.  directByte = ' 64697265637442797465203D20272E27.', outChar(from_microcode), T <= recall;
-- directByte = '.', outChar(from_microcode), T <= recall;
450 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_27_2E_27",

-- L1070@01C3 7072696E744465635228525F66726F6D.  printDecR(R_fromT);
-- printDecR(R_fromT);
451 => X"70_72_69_6E_74_44_65_63_52_28_52_5F_66_72_6F_6D",

-- L1071@01C4 6572725F646F6E653A206F757443524C.err_done:  outCRLF();
-- err_done: outCRLF();
452 => X"65_72_72_5F_64_6F_6E_65_3A_20_6F_75_74_43_52_4C",

-- L1072@01C5 74726163652863726C66293B20202020.  trace(crlf);
-- trace(crlf);
453 => X"74_72_61_63_65_28_63_72_6C_66_29_3B_20_20_20_20",

-- L1073@01C6 444247494E444558203C3D207A65726F.  DBGINDEX <= zero, ExpStack <= clear, RetStack <= clear, BasStack <= clear, T <= zero, alu <= reset0, if false then continue else WarmStart2;
-- DBGINDEX <= zero, ExpStack <= clear, RetStack <= clear, BasStack <= clear, T <= zero, alu <= reset0, if false then continue else WarmStart2;
454 => X"44_42_47_49_4E_44_45_58_20_3C_3D_20_7A_65_72_6F",

-- L1075@01C7 66696E644E65787443523A2072656164.findNextCR:  readCore(T);
-- findNextCR: readCore(T);
455 => X"66_69_6E_64_4E_65_78_74_43_52_3A_20_72_65_61_64",

-- L1076@01C8 64697265637442797465203D20307830.  directByte = 0x0D, if MDR_MATCHES_DB then return;
-- directByte = 0x0D, if MDR_MATCHES_DB then return;
456 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_30_78_30",

-- L1077@01C9 54203C3D20696E632C20646972656374.  T <= inc, directByte = 0x00, if MDR_MATCHES_DB then INTERNAL_ERR else findNextCR;
-- T <= inc, directByte = 0x00, if MDR_MATCHES_DB then INTERNAL_ERR else findNextCR;
457 => X"54_20_3C_3D_20_69_6E_63_2C_20_64_69_72_65_63_74",

-- L1079@01CA 72656164436F726531363A2072656164.readCore16:  readCore(T);
-- readCore16: readCore(T);
458 => X"72_65_61_64_43_6F_72_65_31_36_3A_20_72_65_61_64",

-- L1080@01CB 616C75203C3D2052783235365F706C75.  alu <= Rx256_plus_MDR, T <= inc;
-- alu <= Rx256_plus_MDR, T <= inc;
459 => X"61_6C_75_20_3C_3D_20_52_78_32_35_36_5F_70_6C_75",

-- L1081@01CC 72656164436F72652854293B20202020.  readCore(T);
-- readCore(T);
460 => X"72_65_61_64_43_6F_72_65_28_54_29_3B_20_20_20_20",

-- L1082@01CD 616C75203C3D2052783235365F706C75.  alu <= Rx256_plus_MDR, T <= inc, if true then return else continue;
-- alu <= Rx256_plus_MDR, T <= inc, if true then return else continue;
461 => X"61_6C_75_20_3C_3D_20_52_78_32_35_36_5F_70_6C_75",

-- L1084@01CE 7772697465324E756C6C733A20777269.write2Nulls:  writeCore(T, zero), T <= inc;
-- write2Nulls: writeCore(T, zero), T <= inc;
462 => X"77_72_69_74_65_32_4E_75_6C_6C_73_3A_20_77_72_69",

-- L1085@01CF 4D4152203C3D20542C204D4452203C3D.  MAR <= T, MDR <= zero, if false then continue else writeCore;
-- MAR <= T, MDR <= zero, if false then continue else writeCore;
463 => X"4D_41_52_20_3C_3D_20_54_2C_20_4D_44_52_20_3C_3D",

-- L1088@01D0 70756C6C52533A20616C75203C3D2052.pullRS:  alu <= R_fromStack, ExpStack <= pop2, if STACK_IS_EMPTY then ESTACK_ERR;
-- pullRS: alu <= R_fromStack, ExpStack <= pop2, if STACK_IS_EMPTY then ESTACK_ERR;
464 => X"70_75_6C_6C_52_53_3A_20_61_6C_75_20_3C_3D_20_52",

-- L1089@01D1 616C75203C3D20535F66726F6D537461.  alu <= S_fromStack, ExpStack <= pop2, if STACK_IS_EMPTY then ESTACK_ERR else return;
-- alu <= S_fromStack, ExpStack <= pop2, if STACK_IS_EMPTY then ESTACK_ERR else return;
465 => X"61_6C_75_20_3C_3D_20_53_5F_66_72_6F_6D_53_74_61",

-- L1092@01D2 7072696E744465633A20616C75203C3D.printDec:  alu <= R_fromStack, ExpStack <= pop2;
-- printDec: alu <= R_fromStack, ExpStack <= pop2;
466 => X"70_72_69_6E_74_44_65_63_3A_20_61_6C_75_20_3C_3D",

-- L1094@01D3 7072696E74446563523A20616C75203C.printDecR:  alu <= bcd_start;
-- printDecR: alu <= bcd_start;
467 => X"70_72_69_6E_74_44_65_63_52_3A_20_61_6C_75_20_3C",

-- L1095@01D4 616C75203C3D206263645F6E6578742C.  alu <= bcd_next, if ALU_READY then next else repeat;
-- alu <= bcd_next, if ALU_READY then next else repeat;
468 => X"61_6C_75_20_3C_3D_20_62_63_64_5F_6E_65_78_74_2C",

-- L1096@01D5 696620414C555F5349474E207468656E.  if ALU_SIGN then next else printY;
-- if ALU_SIGN then next else printY;
469 => X"69_66_20_41_4C_55_5F_53_49_47_4E_20_74_68_65_6E",

-- L1097@01D6 64697265637442797465203D20272D27.  directByte = '-', outChar(from_microcode);
-- directByte = '-', outChar(from_microcode);
470 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_27_2D_27",

-- L1098@01D7 7072696E74593A206469726563744279.printY:  directByte = 6, T <= from_microcode, if IS_CPU32 then next else printY1;
-- printY: directByte = 6, T <= from_microcode, if IS_CPU32 then next else printY1;
471 => X"70_72_69_6E_74_59_3A_20_64_69_72_65_63_74_42_79",

-- L1099@01D8 64697265637442797465203D2031342C.  directByte = 14, T <= from_microcode;
-- directByte = 14, T <= from_microcode;
472 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_31_34_2C",

-- L1100@01D9 7072696E7459313A206F75744E5A4368.printY1:  outNZChar(from_YtoAlphaZ);
-- printY1: outNZChar(from_YtoAlphaZ);
473 => X"70_72_69_6E_74_59_31_3A_20_6F_75_74_4E_5A_43_68",

-- L1101@01DA 7072696E74596C703A206F75744E5A43.printYlp:  outNZChar(from_YtoAlphaZ), T <= dec;
-- printYlp: outNZChar(from_YtoAlphaZ), T <= dec;
474 => X"70_72_69_6E_74_59_6C_70_3A_20_6F_75_74_4E_5A_43",

-- L1102@01DB 616C75203C3D20525F66726F6D543B20.  alu <= R_fromT;
-- alu <= R_fromT;
475 => X"61_6C_75_20_3C_3D_20_52_5F_66_72_6F_6D_54_3B_20",

-- L1103@01DC 696620525F49535F5A45524F20746865.  if R_IS_ZERO then next else printYlp;
-- if R_IS_ZERO then next else printYlp;
476 => X"69_66_20_52_5F_49_53_5F_5A_45_52_4F_20_74_68_65",

-- L1104@01DD 434841524F5554203C3D2066726F6D5F.  CHAROUT <= from_YtoAlpha, if false then continue else outChar;
-- CHAROUT <= from_YtoAlpha, if false then continue else outChar;
477 => X"43_48_41_52_4F_55_54_20_3C_3D_20_66_72_6F_6D_5F",

-- L1106@01DE 6F75744E5A436861723A206F75744368.outNZChar:  outChar(from_YtoAlphaZ);
-- outNZChar: outChar(from_YtoAlphaZ);
478 => X"6F_75_74_4E_5A_43_68_61_72_3A_20_6F_75_74_43_68",

-- L1107@01DF 616C75203C3D20597831362C20696620.  alu <= Yx16, if true then return else continue;
-- alu <= Yx16, if true then return else continue;
479 => X"61_6C_75_20_3C_3D_20_59_78_31_36_2C_20_69_66_20",

-- L1109@01E0 736B69705370616365733A2072656164.skipSpaces:  readCore(BP);
-- skipSpaces: readCore(BP);
480 => X"73_6B_69_70_53_70_61_63_65_73_3A_20_72_65_61_64",

-- L1110@01E1 64697265637442797465203D20272027.  directByte = ' ', if MDR_MATCHES_DB then skipSp;
-- directByte = ' ', if MDR_MATCHES_DB then skipSp;
481 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_27_20_27",

-- L1111@01E2 64697265637442797465203D20307830.  directByte = 0x09, if MDR_MATCHES_DB then skipSp else return;
-- directByte = 0x09, if MDR_MATCHES_DB then skipSp else return;
482 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_30_78_30",

-- L1112@01E3 736B697053703A204250203C3D20696E.skipSp:  BP <= inc, if false then continue else skipSpaces;
-- skipSp: BP <= inc, if false then continue else skipSpaces;
483 => X"73_6B_69_70_53_70_3A_20_42_50_20_3C_3D_20_69_6E",

-- L1114@01E4 6F7574426565703A206F757443524C46.outBeep:  outCRLF();
-- outBeep: outCRLF();
484 => X"6F_75_74_42_65_65_70_3A_20_6F_75_74_43_52_4C_46",

-- L1115@01E5 74726163652863726C66293B20202020.  trace(crlf);
-- trace(crlf);
485 => X"74_72_61_63_65_28_63_72_6C_66_29_3B_20_20_20_20",

-- L1116@01E6 64697265637442797465203D20307830.  directByte = 0x07, CHAROUT <= from_microcode, if false then continue else outChar;
-- directByte = 0x07, CHAROUT <= from_microcode, if false then continue else outChar;
486 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_30_78_30",

-- L1118@01E7 6F757443524C463A2064697265637442.outCRLF:  directByte = 0x0D, outChar(from_microcode);
-- outCRLF: directByte = 0x0D, outChar(from_microcode);
487 => X"6F_75_74_43_52_4C_46_3A_20_64_69_72_65_63_74_42",

-- L1119@01E8 64697265637442797465203D20307830.  directByte = 0x0A, CHAROUT <= from_microcode;
-- directByte = 0x0A, CHAROUT <= from_microcode;
488 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_30_78_30",

-- L1120@01E9 6F7574436861723A2069662043484152.outChar:  if CHAROUT_READY then next else repeat;
-- outChar: if CHAROUT_READY then next else repeat;
489 => X"6F_75_74_43_68_61_72_3A_20_69_66_20_43_48_41_52",

-- L1121@01EA 696620434841524F55545F5245414459.  if CHAROUT_READY then return else repeat;
-- if CHAROUT_READY then return else repeat;
490 => X"69_66_20_43_48_41_52_4F_55_54_5F_52_45_41_44_59",

-- L1123@01EB 77726974655331363A20777269746543.writeS16:  writeCore(T, from_SLo), T <= dec;
-- writeS16: writeCore(T, from_SLo), T <= dec;
491 => X"77_72_69_74_65_53_31_36_3A_20_77_72_69_74_65_43",

-- L1124@01EC 4D4152203C3D20542C204D4452203C3D.  MAR <= T, MDR <= from_SHi, T <= dec;
-- MAR <= T, MDR <= from_SHi, T <= dec;
492 => X"4D_41_52_20_3C_3D_20_54_2C_20_4D_44_52_20_3C_3D",

-- L1125@01ED 7772697465436F72653A206E5752203D.writeCore:  nWR = 0;
-- writeCore: nWR = 0;
493 => X"77_72_69_74_65_43_6F_72_65_3A_20_6E_57_52_20_3D",

-- L1126@01EE 6E5752203D20302C206966206E425553.  nWR = 0, if nBUSACK then repeat else return;
-- nWR = 0, if nBUSACK then repeat else return;
494 => X"6E_57_52_20_3D_20_30_2C_20_69_66_20_6E_42_55_53",

-- L1128@01EF 72656164436F72653A206E5244203D20.readCore:  nRD = 0;
-- readCore: nRD = 0;
495 => X"72_65_61_64_43_6F_72_65_3A_20_6E_52_44_20_3D_20",

-- L1129@01F0 6E5244203D20302C204D4452203C3D20.  nRD = 0, MDR <= from_Bus, if nBUSACK then repeat else return;
-- nRD = 0, MDR <= from_Bus, if nBUSACK then repeat else return;
496 => X"6E_52_44_20_3D_20_30_2C_20_4D_44_52_20_3C_3D_20",

-- L1141@01F1 747261636542503A2045787053746163.traceBP:  ExpStack <= push_TWord, T <= BP, trace(from_microcode), directByte = 33;
-- traceBP: ExpStack <= push_TWord, T <= BP, trace(from_microcode), directByte = 33;
497 => X"74_72_61_63_65_42_50_3A_20_45_78_70_53_74_61_63",

-- L1142@01F2 54203C3D20457870537461636B2C2045.  T <= ExpStack, ExpStack <= pop2, if true then return else continue;
-- T <= ExpStack, ExpStack <= pop2, if true then return else continue;
498 => X"54_20_3C_3D_20_45_78_70_53_74_61_63_6B_2C_20_45",

-- L1144@01F3 7472616365593A20457870537461636B.traceY:  ExpStack <= push_TWord, T <= from_YLo, trace(from_microcode), directByte = 32;
-- traceY: ExpStack <= push_TWord, T <= from_YLo, trace(from_microcode), directByte = 32;
499 => X"74_72_61_63_65_59_3A_20_45_78_70_53_74_61_63_6B",

-- L1145@01F4 54203C3D20457870537461636B2C2045.  T <= ExpStack, ExpStack <= pop2, if true then return else continue;
-- T <= ExpStack, ExpStack <= pop2, if true then return else continue;
500 => X"54_20_3C_3D_20_45_78_70_53_74_61_63_6B_2C_20_45",

-- L1147@01F5 7472616365414C553A20747261636528.traceALU:  trace(crlf);
-- traceALU: trace(crlf);
501 => X"74_72_61_63_65_41_4C_55_3A_20_74_72_61_63_65_28",

-- L1148@01F6 54203C3D20736176652C207472616365.  T <= save, trace(from_microcode), directByte = 52;
-- T <= save, trace(from_microcode), directByte = 52;
502 => X"54_20_3C_3D_20_73_61_76_65_2C_20_74_72_61_63_65",

-- L1149@01F7 54203C3D2066726F6D5F532C20747261.  T <= from_S, trace(from_microcode), directByte = 52;
-- T <= from_S, trace(from_microcode), directByte = 52;
503 => X"54_20_3C_3D_20_66_72_6F_6D_5F_53_2C_20_74_72_61",

-- L1150@01F8 54203C3D2066726F6D5F522C20747261.  T <= from_R, trace(from_microcode), directByte = 52;
-- T <= from_R, trace(from_microcode), directByte = 52;
504 => X"54_20_3C_3D_20_66_72_6F_6D_5F_52_2C_20_74_72_61",

-- L1151@01F9 54203C3D2066726F6D5F5948692C2074.  T <= from_YHi, trace(from_microcode), directByte = 53;
-- T <= from_YHi, trace(from_microcode), directByte = 53;
505 => X"54_20_3C_3D_20_66_72_6F_6D_5F_59_48_69_2C_20_74",

-- L1152@01FA 54203C3D2066726F6D5F594C6F2C2074.  T <= from_YLo, trace(from_microcode), directByte = 52;
-- T <= from_YLo, trace(from_microcode), directByte = 52;
506 => X"54_20_3C_3D_20_66_72_6F_6D_5F_59_4C_6F_2C_20_74",

-- L1153@01FB 54203C3D20726563616C6C2C20444247.  T <= recall, DBGINDEX <= crlf;
-- T <= recall, DBGINDEX <= crlf;
507 => X"54_20_3C_3D_20_72_65_63_61_6C_6C_2C_20_44_42_47",

-- L1154@01FC 74726163653A206966204442475F5245.trace:  if DBG_READY then next else repeat;
-- trace: if DBG_READY then next else repeat;
508 => X"74_72_61_63_65_3A_20_69_66_20_44_42_47_5F_52_45",

-- L1155@01FD 6966204442475F524541445920746865.  if DBG_READY then next else repeat;
-- if DBG_READY then next else repeat;
509 => X"69_66_20_44_42_47_5F_52_45_41_44_59_20_74_68_65",

-- L1156@01FE 444247494E444558203C3D207A65726F.  DBGINDEX <= zero, if true then return else continue;
-- DBGINDEX <= zero, if true then return else continue;
510 => X"44_42_47_49_4E_44_45_58_20_3C_3D_20_7A_65_72_6F",

511 => X"20_20_20_20_20_20_20_20_20_20_20_20_20_20_20_20");

end microBasic_sym;

