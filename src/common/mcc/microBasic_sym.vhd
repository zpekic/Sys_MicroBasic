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

-- L0364@0004 436F6C6453746172743A207772697465.ColdStart:  write2Nulls(Prog_start);
-- ColdStart: write2Nulls(Prog_start);
4 => X"43_6F_6C_64_53_74_61_72_74_3A_20_77_72_69_74_65",

-- L0365@0005 5761726D53746172743A20444247494E.WarmStart:  DBGINDEX <= zero, ExpStack <= clear, RetStack <= clear, BasStack <= clear, T <= zero, alu <= reset0, findPrgEnd();
-- WarmStart: DBGINDEX <= zero, ExpStack <= clear, RetStack <= clear, BasStack <= clear, T <= zero, alu <= reset0, findPrgEnd();
5 => X"57_61_72_6D_53_74_61_72_74_3A_20_44_42_47_49_4E",

-- L0366@0006 4250203C3D20496E4C696E655F737461.  BP <= InLine_start, SvPt <= InLine_start, InlEnd <= InLine_start, T <= zero;
-- BP <= InLine_start, SvPt <= InLine_start, InlEnd <= InLine_start, T <= zero;
6 => X"42_50_20_3C_3D_20_49_6E_4C_69_6E_65_5F_73_74_61",

-- L0367@0007 4C696E6F203C3D20542C20494C5F5043.  Lino <= T, IL_PC <= T, write2Nulls(BP);
-- Lino <= T, IL_PC <= T, write2Nulls(BP);
7 => X"4C_69_6E_6F_20_3C_3D_20_54_2C_20_49_4C_5F_50_43",

-- L0369@0008 66657463683A2074726163652866726F.fetch:  trace(from_microcode), directByte = 51;
-- fetch: trace(from_microcode), directByte = 51;
8 => X"66_65_74_63_68_3A_20_74_72_61_63_65_28_66_72_6F",

-- L0370@0009 6665746368313A207472616365286672.fetch1:  trace(from_microcode), directByte = 2;
-- fetch1: trace(from_microcode), directByte = 2;
9 => X"66_65_74_63_68_31_3A_20_74_72_61_63_65_28_66_72",

-- L0371@000A 494C5F4F50203C3D2066726F6D5F696E.  IL_OP <= from_interpreter, IL_PC <= inc, trace(from_microcode), directByte = 56;
-- IL_OP <= from_interpreter, IL_PC <= inc, trace(from_microcode), directByte = 56;
10 => X"49_4C_5F_4F_50_20_3C_3D_20_66_72_6F_6D_5F_69_6E",

-- L0372@000B 54203C3D207A65726F2C20616C75203C.  T <= zero, alu <= reset0, if true then fork else INTERNAL_ERR;
-- T <= zero, alu <= reset0, if true then fork else INTERNAL_ERR;
11 => X"54_20_3C_3D_20_7A_65_72_6F_2C_20_61_6C_75_20_3C",

-- L0375@000C 6261646F703A2069662066616C736520.badop:  if false then continue else INTERNAL_ERR;
-- badop: if false then continue else INTERNAL_ERR;
12 => X"62_61_64_6F_70_3A_20_69_66_20_66_61_6C_73_65_20",

-- L0380@000D 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 15;
-- trace(from_microcode), directByte = 15;
13 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0381@000E 457870537461636B203C3D2073746172.  ExpStack <= startSwap, trace(from_microcode), directByte = 51;
-- ExpStack <= startSwap, trace(from_microcode), directByte = 51;
14 => X"45_78_70_53_74_61_63_6B_20_3C_3D_20_73_74_61_72",

-- L0382@000F 457870537461636B203C3D20656E6453.  ExpStack <= endSwap, if false then continue else fetch1;
-- ExpStack <= endSwap, if false then continue else fetch1;
15 => X"45_78_70_53_74_61_63_6B_20_3C_3D_20_65_6E_64_53",

-- L0385@0010 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 15;
-- trace(from_microcode), directByte = 15;
16 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0386@0011 69662066616C7365207468656E20636F.  if false then continue else fetch;
-- if false then continue else fetch;
17 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0391@0012 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 12;
-- trace(from_microcode), directByte = 12;
18 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0392@0013 69662066616C7365207468656E20636F.  if false then continue else fetch;
-- if false then continue else fetch;
19 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0397@0014 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 28;
-- trace(from_microcode), directByte = 28;
20 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0398@0015 6C625F707573683A2074726163652866.lb_push:  trace(from_microcode), directByte = 3, T <= codeByte;
-- lb_push: trace(from_microcode), directByte = 3, T <= codeByte;
21 => X"6C_62_5F_70_75_73_68_3A_20_74_72_61_63_65_28_66",

-- L0399@0016 457870537461636B203C3D2070757368.  ExpStack <= push_TByte;
-- ExpStack <= push_TByte;
22 => X"45_78_70_53_74_61_63_6B_20_3C_3D_20_70_75_73_68",

-- L0400@0017 494C5F5043203C3D20696E632C206966.  IL_PC <= inc, if STACK_IS_FULL then ESTACK_ERR else fetch;
-- IL_PC <= inc, if STACK_IS_FULL then ESTACK_ERR else fetch;
23 => X"49_4C_5F_50_43_20_3C_3D_20_69_6E_63_2C_20_69_66",

-- L0405@0018 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 29;
-- trace(from_microcode), directByte = 29;
24 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0406@0019 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 3, T <= codeByte;
-- trace(from_microcode), directByte = 3, T <= codeByte;
25 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0407@001A 457870537461636B203C3D2070757368.  ExpStack <= push_TByte;
-- ExpStack <= push_TByte;
26 => X"45_78_70_53_74_61_63_6B_20_3C_3D_20_70_75_73_68",

-- L0408@001B 494C5F5043203C3D20696E632C206966.  IL_PC <= inc, if STACK_IS_FULL then ESTACK_ERR else lb_push;
-- IL_PC <= inc, if STACK_IS_FULL then ESTACK_ERR else lb_push;
27 => X"49_4C_5F_50_43_20_3C_3D_20_69_6E_63_2C_20_69_66",

-- L0413@001C 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 38;
-- trace(from_microcode), directByte = 38;
28 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0414@001D 696620535441434B5F49535F454D5054.  if STACK_IS_EMPTY then ESTACK_ERR;
-- if STACK_IS_EMPTY then ESTACK_ERR;
29 => X"69_66_20_53_54_41_43_4B_5F_49_53_5F_45_4D_50_54",

-- L0415@001E 54203C3D20457870537461636B2C2069.  T <= ExpStack, if STACK_IS_FULL then ESTACK_ERR;
-- T <= ExpStack, if STACK_IS_FULL then ESTACK_ERR;
30 => X"54_20_3C_3D_20_45_78_70_53_74_61_63_6B_2C_20_69",

-- L0416@001F 457870537461636B203C3D2070757368.  ExpStack <= push_TWord, if false then continue else fetch;
-- ExpStack <= push_TWord, if false then continue else fetch;
31 => X"45_78_70_53_74_61_63_6B_20_3C_3D_20_70_75_73_68",

-- L0421@0020 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 34;
-- trace(from_microcode), directByte = 34;
32 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0422@0021 457870537461636B203C3D20706F7032.  ExpStack <= pop2, if STACK_IS_EMPTY then ESTACK_ERR else fetch;
-- ExpStack <= pop2, if STACK_IS_EMPTY then ESTACK_ERR else fetch;
33 => X"45_78_70_53_74_61_63_6B_20_3C_3D_20_70_6F_70_32",

-- L0427@0022 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 10;
-- trace(from_microcode), directByte = 10;
34 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0428@0023 69662042505F494E5F494E504C494E45.  if BP_IN_INPLINE then next else ptr_exc;
-- if BP_IN_INPLINE then next else ptr_exc;
35 => X"69_66_20_42_50_5F_49_4E_5F_49_4E_50_4C_49_4E_45",

-- L0429@0024 736176655F62703A2053765074203C3D.save_bp:  SvPt <= BP;
-- save_bp: SvPt <= BP;
36 => X"73_61_76_65_5F_62_70_3A_20_53_76_50_74_20_3C_3D",

-- L0430@0025 62705F646F6E653A2074726163654250.bp_done:  traceBP();
-- bp_done: traceBP();
37 => X"62_70_5F_64_6F_6E_65_3A_20_74_72_61_63_65_42_50",

-- L0431@0026 69662066616C7365207468656E20636F.  if false then continue else fetch;
-- if false then continue else fetch;
38 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0436@0027 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 11;
-- trace(from_microcode), directByte = 11;
39 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0437@0028 6966205356505F494E5F494E504C494E.  if SVP_IN_INPLINE then save_bp;
-- if SVP_IN_INPLINE then save_bp;
40 => X"69_66_20_53_56_50_5F_49_4E_5F_49_4E_50_4C_49_4E",

-- L0438@0029 7074725F6578633A2053765074203C3D.ptr_exc:  SvPt <= BP, BP <= SvPt, if false then continue else bp_done;
-- ptr_exc: SvPt <= BP, BP <= SvPt, if false then continue else bp_done;
41 => X"70_74_72_5F_65_78_63_3A_20_53_76_50_74_20_3C_3D",

-- L0443@002A 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 36;
-- trace(from_microcode), directByte = 36;
42 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0444@002B 56617273203C3D20696E64657846726F.  Vars <= indexFromExpStack, if STACK_IS_EMPTY then ESTACK_ERR;
-- Vars <= indexFromExpStack, if STACK_IS_EMPTY then ESTACK_ERR;
43 => X"56_61_72_73_20_3C_3D_20_69_6E_64_65_78_46_72_6F",

-- L0445@002C 54203C3D2066726F6D5F766172732C20.  T <= from_vars, ExpStack <= pop1, trace(from_microcode), directByte = 51;
-- T <= from_vars, ExpStack <= pop1, trace(from_microcode), directByte = 51;
44 => X"54_20_3C_3D_20_66_72_6F_6D_5F_76_61_72_73_2C_20",

-- L0446@002D 457870537461636B203C3D2070757368.  ExpStack <= push_TWord, if false then continue else fetch1;
-- ExpStack <= push_TWord, if false then continue else fetch1;
45 => X"45_78_70_53_74_61_63_6B_20_3C_3D_20_70_75_73_68",

-- L0451@002E 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 37;
-- trace(from_microcode), directByte = 37;
46 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0452@002F 696620535441434B5F49535F454D5054.  if STACK_IS_EMPTY then ESTACK_ERR;
-- if STACK_IS_EMPTY then ESTACK_ERR;
47 => X"69_66_20_53_54_41_43_4B_5F_49_53_5F_45_4D_50_54",

-- L0453@0030 54203C3D20457870537461636B2C2045.  T <= ExpStack, ExpStack <= pop2;
-- T <= ExpStack, ExpStack <= pop2;
48 => X"54_20_3C_3D_20_45_78_70_53_74_61_63_6B_2C_20_45",

-- L0454@0031 56617273203C3D20696E64657846726F.  Vars <= indexFromExpStack, if STACK_IS_EMPTY then ESTACK_ERR;
-- Vars <= indexFromExpStack, if STACK_IS_EMPTY then ESTACK_ERR;
49 => X"56_61_72_73_20_3C_3D_20_69_6E_64_65_78_46_72_6F",

-- L0455@0032 457870537461636B203C3D20706F7031.  ExpStack <= pop1, Vars <= T, if false then continue else fetch;
-- ExpStack <= pop1, Vars <= T, if false then continue else fetch;
50 => X"45_78_70_53_74_61_63_6B_20_3C_3D_20_70_6F_70_31",

-- L0460@0033 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 47;
-- trace(from_microcode), directByte = 47;
51 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0461@0034 69662049535F52554E4D4F4445207468.  if IS_RUNMODE then next else INTERNAL_ERR;
-- if IS_RUNMODE then next else INTERNAL_ERR;
52 => X"69_66_20_49_53_5F_52_55_4E_4D_4F_44_45_20_74_68",

-- L0462@0035 696620535441434B5F49535F46554C4C.  if STACK_IS_FULL then BSTACK_ERR;
-- if STACK_IS_FULL then BSTACK_ERR;
53 => X"69_66_20_53_54_41_43_4B_5F_49_53_5F_46_55_4C_4C",

-- L0463@0036 426173537461636B203C3D2070757368.  BasStack <= push_Lino_and_BP, if false then continue else fetch;
-- BasStack <= push_Lino_and_BP, if false then continue else fetch;
54 => X"42_61_73_53_74_61_63_6B_20_3C_3D_20_70_75_73_68",

-- L0468@0037 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 48;
-- trace(from_microcode), directByte = 48;
55 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0469@0038 69662049535F52554E4D4F4445207468.  if IS_RUNMODE then next else INTERNAL_ERR;
-- if IS_RUNMODE then next else INTERNAL_ERR;
56 => X"69_66_20_49_53_5F_52_55_4E_4D_4F_44_45_20_74_68",

-- L0470@0039 54203C3D20426173537461636B5F4869.  T <= BasStack_Hi,if STACK_IS_EMPTY then BSTACK_ERR;
-- T <= BasStack_Hi,if STACK_IS_EMPTY then BSTACK_ERR;
57 => X"54_20_3C_3D_20_42_61_73_53_74_61_63_6B_5F_48_69",

-- L0471@003A 4C696E6F203C3D20542C2054203C3D20.  Lino <= T, T <= BasStack_Lo, trace(from_microcode), directByte = 51;
-- Lino <= T, T <= BasStack_Lo, trace(from_microcode), directByte = 51;
58 => X"4C_69_6E_6F_20_3C_3D_20_54_2C_20_54_20_3C_3D_20",

-- L0472@003B 4250203C3D20542C2042617353746163.  BP <= T, BasStack <= pop, if false then continue else fetch1;
-- BP <= T, BasStack <= pop, if false then continue else fetch1;
59 => X"42_50_20_3C_3D_20_54_2C_20_42_61_73_53_74_61_63",

-- L0477@003C 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 45;
-- trace(from_microcode), directByte = 45;
60 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0478@003D 494C5F5043203C3D205851686572652C.  IL_PC <= XQhere, if STACK_IS_EMPTY then ESTACK_ERR;
-- IL_PC <= XQhere, if STACK_IS_EMPTY then ESTACK_ERR;
61 => X"49_4C_5F_50_43_20_3C_3D_20_58_51_68_65_72_65_2C",

-- L0479@003E 616C75203C3D20525F66726F6D537461.  alu <= R_fromStack, ExpStack <= pop2;
-- alu <= R_fromStack, ExpStack <= pop2;
62 => X"61_6C_75_20_3C_3D_20_52_5F_66_72_6F_6D_53_74_61",

-- L0480@003F 54203C3D2066726F6D5F523B20202020.  T <= from_R;
-- T <= from_R;
63 => X"54_20_3C_3D_20_66_72_6F_6D_5F_52_3B_20_20_20_20",

-- L0481@0040 4C696E6F203C3D20542C20696620525F.  Lino <= T, if R_IS_ZERO then NOPROG_ERR;
-- Lino <= T, if R_IS_ZERO then NOPROG_ERR;
64 => X"4C_69_6E_6F_20_3C_3D_20_54_2C_20_69_66_20_52_5F",

-- L0483@0041 54203C3D2043616368655F446174612C.  T <= Cache_Data, if CACHE_VALID then go_cvalid;
-- T <= Cache_Data, if CACHE_VALID then go_cvalid;
65 => X"54_20_3C_3D_20_43_61_63_68_65_5F_44_61_74_61_2C",

-- L0485@0042 66696E644C696E6F2850726F675F7374.  findLino(Prog_start);
-- findLino(Prog_start);
66 => X"66_69_6E_64_4C_69_6E_6F_28_50_72_6F_67_5F_73_74",

-- L0486@0043 616C75203C3D2063616368655F73746F.  alu <= cache_store, if false then continue else fetch;
-- alu <= cache_store, if false then continue else fetch;
67 => X"61_6C_75_20_3C_3D_20_63_61_63_68_65_5F_73_74_6F",

-- L0488@0044 676F5F6376616C69643A204250203C3D.go_cvalid:  BP <= T, if CACHE_HIT then fetch else go_cmiss;
-- go_cvalid: BP <= T, if CACHE_HIT then fetch else go_cmiss;
68 => X"67_6F_5F_63_76_61_6C_69_64_3A_20_42_50_20_3C_3D",

-- L0493@0045 676F5F636D6973733A2066696E644C69.go_cmiss:  findLino(Prog_start);
-- go_cmiss: findLino(Prog_start);
69 => X"67_6F_5F_63_6D_69_73_73_3A_20_66_69_6E_64_4C_69",

-- L0494@0046 69662066616C7365207468656E20636F.  if false then continue else fetch;
-- if false then continue else fetch;
70 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0496@0047 66696E644C696E6F3A20616C75203C3D.findLino:  alu <= reset1, readCore(T);
-- findLino: alu <= reset1, readCore(T);
71 => X"66_69_6E_64_4C_69_6E_6F_3A_20_61_6C_75_20_3C_3D",

-- L0497@0048 616C75203C3D2052783235365F706C75.  alu <= Rx256_plus_MDR, T <= inc;
-- alu <= Rx256_plus_MDR, T <= inc;
72 => X"61_6C_75_20_3C_3D_20_52_78_32_35_36_5F_70_6C_75",

-- L0498@0049 616C75203C3D20535F66726F6D4C696E.  alu <= S_fromLino, readCore(T);
-- alu <= S_fromLino, readCore(T);
73 => X"61_6C_75_20_3C_3D_20_53_5F_66_72_6F_6D_4C_69_6E",

-- L0499@004A 616C75203C3D2052783235365F706C75.  alu <= Rx256_plus_MDR, T <= inc;
-- alu <= Rx256_plus_MDR, T <= inc;
74 => X"61_6C_75_20_3C_3D_20_52_78_32_35_36_5F_70_6C_75",

-- L0500@004B 616C75203C3D20535F6D696E75735F52.  alu <= S_minus_R, if R_IS_ZERO then stop_run;
-- alu <= S_minus_R, if R_IS_ZERO then stop_run;
75 => X"61_6C_75_20_3C_3D_20_53_5F_6D_69_6E_75_73_5F_52",

-- L0501@004C 4250203C3D20542C20696620595F5A45.  BP <= T, if Y_ZERO then return;
-- BP <= T, if Y_ZERO then return;
76 => X"42_50_20_3C_3D_20_54_2C_20_69_66_20_59_5F_5A_45",

-- L0502@004D 66696E644E65787443522873616D6529.  findNextCR(same);
-- findNextCR(same);
77 => X"66_69_6E_64_4E_65_78_74_43_52_28_73_61_6D_65_29",

-- L0503@004E 54203C3D20696E632C2069662066616C.  T <= inc, if false then continue else findLino;
-- T <= inc, if false then continue else findLino;
78 => X"54_20_3C_3D_20_69_6E_63_2C_20_69_66_20_66_61_6C",

-- L0508@004F 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 25;
-- trace(from_microcode), directByte = 25;
79 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0509@0050 616C75203C3D20525F66726F6D537461.  alu <= R_fromStack, if STACK_IS_EMPTY then ESTACK_ERR;
-- alu <= R_fromStack, if STACK_IS_EMPTY then ESTACK_ERR;
80 => X"61_6C_75_20_3C_3D_20_52_5F_66_72_6F_6D_53_74_61",

-- L0510@0051 457870537461636B203C3D20706F7032.  ExpStack <= pop2, alu <= neg_R, if false then continue else alu_done;
-- ExpStack <= pop2, alu <= neg_R, if false then continue else alu_done;
81 => X"45_78_70_53_74_61_63_6B_20_3C_3D_20_70_6F_70_32",

-- L0515@0052 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 22;
-- trace(from_microcode), directByte = 22;
82 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0516@0053 70756C6C525328293B20202020202020.  pullRS();
-- pullRS();
83 => X"70_75_6C_6C_52_53_28_29_3B_20_20_20_20_20_20_20",

-- L0517@0054 616C75203C3D20535F706C75735F522C.  alu <= S_plus_R, if ALU_READY then next else repeat;
-- alu <= S_plus_R, if ALU_READY then next else repeat;
84 => X"61_6C_75_20_3C_3D_20_53_5F_70_6C_75_73_5F_52_2C",

-- L0518@0055 616C755F646F6E653A20747261636541.alu_done:  traceALU();
-- alu_done: traceALU();
85 => X"61_6C_75_5F_64_6F_6E_65_3A_20_74_72_61_63_65_41",

-- L0519@0056 54203C3D2066726F6D5F594C6F2C2069.  T <= from_YLo, if ALU_OVERFLOW then OVERFLOW_ERR;
-- T <= from_YLo, if ALU_OVERFLOW then OVERFLOW_ERR;
86 => X"54_20_3C_3D_20_66_72_6F_6D_5F_59_4C_6F_2C_20_69",

-- L0520@0057 755F646F6E653A20457870537461636B.u_done:  ExpStack <= push_TWord, if false then continue else fetch;
-- u_done: ExpStack <= push_TWord, if false then continue else fetch;
87 => X"75_5F_64_6F_6E_65_3A_20_45_78_70_53_74_61_63_6B",

-- L0525@0058 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 23;
-- trace(from_microcode), directByte = 23;
88 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0526@0059 70756C6C525328293B20202020202020.  pullRS();
-- pullRS();
89 => X"70_75_6C_6C_52_53_28_29_3B_20_20_20_20_20_20_20",

-- L0527@005A 616C75203C3D20535F6D696E75735F52.  alu <= S_minus_R, if ALU_READY then alu_done else repeat;
-- alu <= S_minus_R, if ALU_READY then alu_done else repeat;
90 => X"61_6C_75_20_3C_3D_20_53_5F_6D_69_6E_75_73_5F_52",

-- L0532@005B 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 24;
-- trace(from_microcode), directByte = 24;
91 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0533@005C 70756C6C525328293B20202020202020.  pullRS();
-- pullRS();
92 => X"70_75_6C_6C_52_53_28_29_3B_20_20_20_20_20_20_20",

-- L0534@005D 616C75203C3D20535F6D756C5F522C20.  alu <= S_mul_R, if ALU_READY then alu_done else repeat;
-- alu <= S_mul_R, if ALU_READY then alu_done else repeat;
93 => X"61_6C_75_20_3C_3D_20_53_5F_6D_75_6C_5F_52_2C_20",

-- L0539@005E 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 35;
-- trace(from_microcode), directByte = 35;
94 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0540@005F 70756C6C525328293B20202020202020.  pullRS();
-- pullRS();
95 => X"70_75_6C_6C_52_53_28_29_3B_20_20_20_20_20_20_20",

-- L0541@0060 6469765F6D6F6428293B202020202020.  div_mod();
-- div_mod();
96 => X"64_69_76_5F_6D_6F_64_28_29_3B_20_20_20_20_20_20",

-- L0542@0061 69662066616C7365207468656E20636F.  if false then continue else alu_done;
-- if false then continue else alu_done;
97 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0544@0062 6469765F6D6F643A20616C75203C3D20.div_mod:  alu <= div_start, if R_IS_ZERO then DIVBY0_ERR;
-- div_mod: alu <= div_start, if R_IS_ZERO then DIVBY0_ERR;
98 => X"64_69_76_5F_6D_6F_64_3A_20_61_6C_75_20_3C_3D_20",

-- L0545@0063 6469765F6C6F6F703A20616C75203C3D.div_loop:  alu <= div_shift;
-- div_loop: alu <= div_shift;
99 => X"64_69_76_5F_6C_6F_6F_70_3A_20_61_6C_75_20_3C_3D",

-- L0546@0064 696620414C555F524541445920746865.  if ALU_READY then div_done;
-- if ALU_READY then div_done;
100 => X"69_66_20_41_4C_55_5F_52_45_41_44_59_20_74_68_65",

-- L0547@0065 616C75203C3D206469765F7375627365.  alu <= div_subset, if false then continue else div_loop;
-- alu <= div_subset, if false then continue else div_loop;
101 => X"61_6C_75_20_3C_3D_20_64_69_76_5F_73_75_62_73_65",

-- L0548@0066 6469765F646F6E653A20616C75203C3D.div_done:  alu <= div_end, if true then return else continue;
-- div_done: alu <= div_end, if true then return else continue;
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

-- L0557@006B 616C75203C3D20535F66726F6D537461.  alu <= S_fromStack, ExpStack <= pop2, trace(from_microcode), directByte = 51;
-- alu <= S_fromStack, ExpStack <= pop2, trace(from_microcode), directByte = 51;
107 => X"61_6C_75_20_3C_3D_20_53_5F_66_72_6F_6D_53_74_61",

-- L0558@006C 69662043505F534B4950207468656E20.  if CP_SKIP then next else fetch1;
-- if CP_SKIP then next else fetch1;
108 => X"69_66_20_43_50_5F_53_4B_49_50_20_74_68_65_6E_20",

-- L0559@006D 494C5F5043203C3D20696E632C206966.  IL_PC <= inc, if false then continue else fetch1;
-- IL_PC <= inc, if false then continue else fetch1;
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

-- L0600@008C 54203C3D20736176652C207072696E74.  T <= save, printDecR(Y_save);
-- T <= save, printDecR(Y_save);
140 => X"54_20_3C_3D_20_73_61_76_65_2C_20_70_72_69_6E_74",

-- L0601@008D 54203C3D20726563616C6C2C20616C75.  T <= recall, alu <= Y_recall, directByte = ' ', outChar(from_microcode);
-- T <= recall, alu <= Y_recall, directByte = ' ', outChar(from_microcode);
141 => X"54_20_3C_3D_20_72_65_63_61_6C_6C_2C_20_61_6C_75",

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

-- L0627@009E 64697265637442797465203D20307830.  directByte = 0x0D, if MDR_MATCHES_DB then INTERNAL_ERR else pq_loop;
-- directByte = 0x0D, if MDR_MATCHES_DB then INTERNAL_ERR else pq_loop;
158 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_30_78_30",

-- L0628@009F 70715F646F6E653A2074726163654250.pq_done:  traceBP();
-- pq_done: traceBP();
159 => X"70_71_5F_64_6F_6E_65_3A_20_74_72_61_63_65_42_50",

-- L0629@00A0 69662066616C7365207468656E20636F.  if false then continue else fetch;
-- if false then continue else fetch;
160 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0634@00A1 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 27;
-- trace(from_microcode), directByte = 27;
161 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0635@00A2 70745F6C6F6F703A2069662041545F54.pt_loop:  if AT_TAB then fetch;
-- pt_loop: if AT_TAB then fetch;
162 => X"70_74_5F_6C_6F_6F_70_3A_20_69_66_20_41_54_5F_54",

-- L0636@00A3 64697265637442797465203D20272027.  directByte = ' ', outChar(from_microcode);
-- directByte = ' ', outChar(from_microcode);
163 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_27_20_27",

-- L0637@00A4 69662066616C7365207468656E20636F.  if false then continue else pt_loop;
-- if false then continue else pt_loop;
164 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0642@00A5 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 6;
-- trace(from_microcode), directByte = 6;
165 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0643@00A6 63726C665F66657463683A206F757443.crlf_fetch:  outCRLF();
-- crlf_fetch: outCRLF();
166 => X"63_72_6C_66_5F_66_65_74_63_68_3A_20_6F_75_74_43",

-- L0644@00A7 69662066616C7365207468656E20636F.  if false then continue else fetch;
-- if false then continue else fetch;
167 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0649@00A8 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 5;
-- trace(from_microcode), directByte = 5;
168 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0650@00A9 70635F6C6F6F703A206F757443686172.pc_loop:  outChar(from_interpreter);
-- pc_loop: outChar(from_interpreter);
169 => X"70_63_5F_6C_6F_6F_70_3A_20_6F_75_74_43_68_61_72",

-- L0651@00AA 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 3;
-- trace(from_microcode), directByte = 3;
170 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0652@00AB 494C5F5043203C3D20696E632C206966.  IL_PC <= inc, if ILCODEBYTE_BIT7 then fetch else pc_loop;
-- IL_PC <= inc, if ILCODEBYTE_BIT7 then fetch else pc_loop;
171 => X"49_4C_5F_50_43_20_3C_3D_20_69_6E_63_2C_20_69_66",

-- L0657@00AC 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 4;
-- trace(from_microcode), directByte = 4;
172 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0658@00AD 70756C6C525328293B20202020202020.  pullRS();
-- pullRS();
173 => X"70_75_6C_6C_52_53_28_29_3B_20_20_20_20_20_20_20",

-- L0659@00AE 54203C3D20457870537461636B2C2045.  T <= ExpStack, ExpStack <= pop2;
-- T <= ExpStack, ExpStack <= pop2;
174 => X"54_20_3C_3D_20_45_78_70_53_74_61_63_6B_2C_20_45",

-- L0660@00AF 56617273203C3D20696E64657846726F.  Vars <= indexFromExpStack, if STACK_IS_EMPTY then ESTACK_ERR;
-- Vars <= indexFromExpStack, if STACK_IS_EMPTY then ESTACK_ERR;
175 => X"56_61_72_73_20_3C_3D_20_69_6E_64_65_78_46_72_6F",

-- L0662@00B0 457870537461636B203C3D20706F7031.  ExpStack <= pop1, if NEXT_SET then next else for_first;
-- ExpStack <= pop1, if NEXT_SET then next else for_first;
176 => X"45_78_70_53_74_61_63_6B_20_3C_3D_20_70_6F_70_31",

-- L0665@00B1 56617273203C3D20666F725F66726F6D.  Vars <= for_fromLino, T <= from_vars, if FOR_SET then next else SYNTAX_ERR;
-- Vars <= for_fromLino, T <= from_vars, if FOR_SET then next else SYNTAX_ERR;
177 => X"56_61_72_73_20_3C_3D_20_66_6F_72_5F_66_72_6F_6D",

-- L0666@00B2 616C75203C3D20666F725F737465703B.  alu <= for_step;
-- alu <= for_step;
178 => X"61_6C_75_20_3C_3D_20_66_6F_72_5F_73_74_65_70_3B",

-- L0667@00B3 54203C3D2066726F6D5F594C6F2C2069.  T <= from_YLo, if false then continue else for_check;
-- T <= from_YLo, if false then continue else for_check;
179 => X"54_20_3C_3D_20_66_72_6F_6D_5F_59_4C_6F_2C_20_69",

-- L0670@00B4 666F725F66697273743A205661727320.for_first:  Vars <= for_fromLino;
-- for_first: Vars <= for_fromLino;
180 => X"66_6F_72_5F_66_69_72_73_74_3A_20_56_61_72_73_20",

-- L0671@00B5 666F725F636865636B3A20616C75203C.for_check:  alu <= for_check;
-- for_check: alu <= for_check;
181 => X"66_6F_72_5F_63_68_65_63_6B_3A_20_61_6C_75_20_3C",

-- L0672@00B6 56617273203C3D20542C20696620414C.  Vars <= T, if ALU_READY then for_done;
-- Vars <= T, if ALU_READY then for_done;
182 => X"56_61_72_73_20_3C_3D_20_54_2C_20_69_66_20_41_4C",

-- L0675@00B7 54203C3D2066726F6D5F7661725F4E65.  T <= from_var_Next, if NEXT_SET then next else find_next;
-- T <= from_var_Next, if NEXT_SET then next else find_next;
183 => X"54_20_3C_3D_20_66_72_6F_6D_5F_76_61_72_5F_4E_65",

-- L0676@00B8 56617273203C3D20666F725F636C6561.  Vars <= for_clear, BP <= T, if false then continue else for_done;
-- Vars <= for_clear, BP <= T, if false then continue else for_done;
184 => X"56_61_72_73_20_3C_3D_20_66_6F_72_5F_63_6C_65_61",

-- L0679@00B9 66696E645F6E6578743A205661727320.find_next:  Vars <= for_clear, findNx();
-- find_next: Vars <= for_clear, findNx();
185 => X"66_69_6E_64_5F_6E_65_78_74_3A_20_56_61_72_73_20",

-- L0680@00BA 736B697053706163657328293B202020.  skipSpaces();
-- skipSpaces();
186 => X"73_6B_69_70_53_70_61_63_65_73_28_29_3B_20_20_20",

-- L0681@00BB 72656164436F7265284250292C204250.  readCore(BP), BP <= inc;
-- readCore(BP), BP <= inc;
187 => X"72_65_61_64_43_6F_72_65_28_42_50_29_2C_20_42_50",

-- L0682@00BC 64697265637442797465203D20274E27.  directByte = 'N', if MDR_MATCHES_DB then next else find_cont;
-- directByte = 'N', if MDR_MATCHES_DB then next else find_cont;
188 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_27_4E_27",

-- L0683@00BD 72656164436F7265284250292C204250.  readCore(BP), BP <= inc;
-- readCore(BP), BP <= inc;
189 => X"72_65_61_64_43_6F_72_65_28_42_50_29_2C_20_42_50",

-- L0684@00BE 64697265637442797465203D20274527.  directByte = 'E', if MDR_MATCHES_DB then next else find_cont;
-- directByte = 'E', if MDR_MATCHES_DB then next else find_cont;
190 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_27_45_27",

-- L0685@00BF 72656164436F7265284250292C204250.  readCore(BP), BP <= inc;
-- readCore(BP), BP <= inc;
191 => X"72_65_61_64_43_6F_72_65_28_42_50_29_2C_20_42_50",

-- L0686@00C0 64697265637442797465203D20275827.  directByte = 'X', if MDR_MATCHES_DB then next else find_cont;
-- directByte = 'X', if MDR_MATCHES_DB then next else find_cont;
192 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_27_58_27",

-- L0687@00C1 72656164436F7265284250292C204250.  readCore(BP), BP <= inc;
-- readCore(BP), BP <= inc;
193 => X"72_65_61_64_43_6F_72_65_28_42_50_29_2C_20_42_50",

-- L0688@00C2 64697265637442797465203D20275427.  directByte = 'T', if MDR_MATCHES_DB then next else find_cont;
-- directByte = 'T', if MDR_MATCHES_DB then next else find_cont;
194 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_27_54_27",

-- L0689@00C3 736B697053706163657328293B202020.  skipSpaces();
-- skipSpaces();
195 => X"73_6B_69_70_53_70_61_63_65_73_28_29_3B_20_20_20",

-- L0690@00C4 72656164436F7265284250293B202020.  readCore(BP);
-- readCore(BP);
196 => X"72_65_61_64_43_6F_72_65_28_42_50_29_3B_20_20_20",

-- L0691@00C5 6966204D44525F4D4154434845535F56.  if MDR_MATCHES_VARNAME then for_done;
-- if MDR_MATCHES_VARNAME then for_done;
197 => X"69_66_20_4D_44_52_5F_4D_41_54_43_48_45_53_5F_56",

-- L0692@00C6 66696E645F636F6E743A2066696E644E.find_cont:  findNextCR(BP);
-- find_cont: findNextCR(BP);
198 => X"66_69_6E_64_5F_63_6F_6E_74_3A_20_66_69_6E_64_4E",

-- L0693@00C7 69662066616C7365207468656E20636F.  if false then continue else find_next;
-- if false then continue else find_next;
199 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0695@00C8 666F725F646F6E653A2056617273203C.for_done:  Vars <= next_clear, findNx();
-- for_done: Vars <= next_clear, findNx();
200 => X"66_6F_72_5F_64_6F_6E_65_3A_20_56_61_72_73_20_3C",

-- L0696@00C9 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 52;
-- trace(from_microcode), directByte = 52;
201 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0697@00CA 457870537461636B203C3D2020707573.  ExpStack <=  push_TWord, if false then continue else fetch;
-- ExpStack <=  push_TWord, if false then continue else fetch;
202 => X"45_78_70_53_74_61_63_6B_20_3C_3D_20_20_70_75_73",

-- L0702@00CB 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 4;
-- trace(from_microcode), directByte = 4;
203 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0703@00CC 56617273203C3D20696E64657846726F.  Vars <= indexFromExpStack, if STACK_IS_EMPTY then ESTACK_ERR;
-- Vars <= indexFromExpStack, if STACK_IS_EMPTY then ESTACK_ERR;
204 => X"56_61_72_73_20_3C_3D_20_69_6E_64_65_78_46_72_6F",

-- L0704@00CD 457870537461636B203C3D20706F7031.  ExpStack <= pop1, T <= from_var_For, if FOR_SET then next else INTERNAL_ERR;
-- ExpStack <= pop1, T <= from_var_For, if FOR_SET then next else INTERNAL_ERR;
205 => X"45_78_70_53_74_61_63_6B_20_3C_3D_20_70_6F_70_31",

-- L0705@00CE 56617273203C3D206E6578745F66726F.  Vars <= next_fromBP, ExpStack <= push_TWord, if false then continue else fetch;
-- Vars <= next_fromBP, ExpStack <= push_TWord, if false then continue else fetch;
206 => X"56_61_72_73_20_3C_3D_20_6E_65_78_74_5F_66_72_6F",

-- L0710@00CF 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 8;
-- trace(from_microcode), directByte = 8;
207 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0711@00D0 676C3A20496E6C456E64203C3D20496E.gl:  InlEnd <= InLine_start;
-- gl: InlEnd <= InLine_start;
208 => X"67_6C_3A_20_49_6E_6C_45_6E_64_20_3C_3D_20_49_6E",

-- L0712@00D1 676C5F6C6F6F703A2069662043484152.gl_loop:  if CHARIN_READY then next else repeat;
-- gl_loop: if CHARIN_READY then next else repeat;
209 => X"67_6C_5F_6C_6F_6F_70_3A_20_69_66_20_43_48_41_52",

-- L0713@00D2 6966204B42445F425245414B20746865.  if KBD_BREAK then next else gl_char;
-- if KBD_BREAK then next else gl_char;
210 => X"69_66_20_4B_42_44_5F_42_52_45_41_4B_20_74_68_65",

-- L0714@00D3 676F7443686172203D20312C20696620.  gotChar = 1, if IS_RUNMODE then stop_run else gl_esc;
-- gotChar = 1, if IS_RUNMODE then stop_run else gl_esc;
211 => X"67_6F_74_43_68_61_72_20_3D_20_31_2C_20_69_66_20",

-- L0715@00D4 676C5F636861723A2069662043484152.gl_char:  if CHARIN_PRINTABLE then gl_print;
-- gl_char: if CHARIN_PRINTABLE then gl_print;
212 => X"67_6C_5F_63_68_61_72_3A_20_69_66_20_43_48_41_52",

-- L0716@00D5 64697265637442797465203D20307830.  directByte = 0x0D, if CHARIN_EQU_DB then gl_cr;
-- directByte = 0x0D, if CHARIN_EQU_DB then gl_cr;
213 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_30_78_30",

-- L0717@00D6 64697265637442797465203D20307830.  directByte = 0x08, if CHARIN_EQU_DB then gl_bs;
-- directByte = 0x08, if CHARIN_EQU_DB then gl_bs;
214 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_30_78_30",

-- L0718@00D7 64697265637442797465203D20307831.  directByte = 0x1b, if CHARIN_EQU_DB then gl_esc;
-- directByte = 0x1b, if CHARIN_EQU_DB then gl_esc;
215 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_30_78_31",

-- L0719@00D8 64697265637442797465203D20307830.  directByte = 0x09, if CHARIN_EQU_DB then gl_tab;
-- directByte = 0x09, if CHARIN_EQU_DB then gl_tab;
216 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_30_78_30",

-- L0721@00D9 676C5F69676E6F72653A206469726563.gl_ignore:  directByte = 0x07, outChar(from_microcode);
-- gl_ignore: directByte = 0x07, outChar(from_microcode);
217 => X"67_6C_5F_69_67_6E_6F_72_65_3A_20_64_69_72_65_63",

-- L0722@00DA 676F7443686172203D20312C20696620.  gotChar = 1, if false then continue else gl_loop;
-- gotChar = 1, if false then continue else gl_loop;
218 => X"67_6F_74_43_68_61_72_20_3D_20_31_2C_20_69_66_20",

-- L0724@00DB 676C5F7072696E743A20696620494E4C.gl_print:  if INLEND_MAX then gl_ignore;
-- gl_print: if INLEND_MAX then gl_ignore;
219 => X"67_6C_5F_70_72_69_6E_74_3A_20_69_66_20_49_4E_4C",

-- L0725@00DC 6F7574436861722866726F6D5F636861.  outChar(from_charin);
-- outChar(from_charin);
220 => X"6F_75_74_43_68_61_72_28_66_72_6F_6D_5F_63_68_61",

-- L0726@00DD 7772697465436F726528496E6C456E64.  writeCore(InlEnd, CHARIN), InlEnd <= inc;
-- writeCore(InlEnd, CHARIN), InlEnd <= inc;
221 => X"77_72_69_74_65_43_6F_72_65_28_49_6E_6C_45_6E_64",

-- L0727@00DE 676C5F7772697465303A207772697465.gl_write0:  writeCore(InlEnd, zero);
-- gl_write0: writeCore(InlEnd, zero);
222 => X"67_6C_5F_77_72_69_74_65_30_3A_20_77_72_69_74_65",

-- L0728@00DF 676F7443686172203D20312C20696620.  gotChar = 1, if false then continue else gl_loop;
-- gotChar = 1, if false then continue else gl_loop;
223 => X"67_6F_74_43_68_61_72_20_3D_20_31_2C_20_69_66_20",

-- L0730@00E0 676C5F6573633A206469726563744279.gl_esc:  directByte = 0x07, outChar(from_microcode);
-- gl_esc: directByte = 0x07, outChar(from_microcode);
224 => X"67_6C_5F_65_73_63_3A_20_64_69_72_65_63_74_42_79",

-- L0731@00E1 6F757443524C4628293B202020202020.  outCRLF();
-- outCRLF();
225 => X"6F_75_74_43_52_4C_46_28_29_3B_20_20_20_20_20_20",

-- L0732@00E2 676F7443686172203D20312C20696620.  gotChar = 1, if false then continue else gl;
-- gotChar = 1, if false then continue else gl;
226 => X"67_6F_74_43_68_61_72_20_3D_20_31_2C_20_69_66_20",

-- L0734@00E3 676C5F62733A20696620494E4C454E44.gl_bs:  if INLEND_MIN then gl_ignore;
-- gl_bs: if INLEND_MIN then gl_ignore;
227 => X"67_6C_5F_62_73_3A_20_69_66_20_49_4E_4C_45_4E_44",

-- L0735@00E4 64697265637442797465203D20307830.  directByte = 0x08, outChar(from_microcode);
-- directByte = 0x08, outChar(from_microcode);
228 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_30_78_30",

-- L0736@00E5 496E6C456E64203C3D206465632C2069.  InlEnd <= dec, if false then continue else gl_write0;
-- InlEnd <= dec, if false then continue else gl_write0;
229 => X"49_6E_6C_45_6E_64_20_3C_3D_20_64_65_63_2C_20_69",

-- L0738@00E6 676C5F63723A207772697465436F7265.gl_cr:  writeCore(InlEnd, CHARIN), InlEnd <= inc;
-- gl_cr: writeCore(InlEnd, CHARIN), InlEnd <= inc;
230 => X"67_6C_5F_63_72_3A_20_77_72_69_74_65_43_6F_72_65",

-- L0739@00E7 7772697465436F726528496E6C456E64.  writeCore(InlEnd, zero);
-- writeCore(InlEnd, zero);
231 => X"77_72_69_74_65_43_6F_72_65_28_49_6E_6C_45_6E_64",

-- L0741@00E8 6F757443524C4628293B202020202020.  outCRLF();
-- outCRLF();
232 => X"6F_75_74_43_52_4C_46_28_29_3B_20_20_20_20_20_20",

-- L0742@00E9 676F7443686172203D20312C20425020.  gotChar = 1, BP <= Inline_start, if false then continue else fetch;
-- gotChar = 1, BP <= Inline_start, if false then continue else fetch;
233 => X"67_6F_74_43_68_61_72_20_3D_20_31_2C_20_42_50_20",

-- L0744@00EA 676C5F7461623A20696620494E4C454E.gl_tab:  if INLEND_MAX then gl_ignore;
-- gl_tab: if INLEND_MAX then gl_ignore;
234 => X"67_6C_5F_74_61_62_3A_20_69_66_20_49_4E_4C_45_4E",

-- L0745@00EB 676C5F7461626C6F6F703A2069662041.gl_tabloop:  if AT_TAB then gl_write0;
-- gl_tabloop: if AT_TAB then gl_write0;
235 => X"67_6C_5F_74_61_62_6C_6F_6F_70_3A_20_69_66_20_41",

-- L0746@00EC 64697265637442797465203D20272027.  directByte = ' ', outChar(from_microcode);
-- directByte = ' ', outChar(from_microcode);
236 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_27_20_27",

-- L0747@00ED 64697265637442797465203D20272027.  directByte = ' ', writeCore(InlEnd, from_microcode), InlEnd <= inc;
-- directByte = ' ', writeCore(InlEnd, from_microcode), InlEnd <= inc;
237 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_27_20_27",

-- L0748@00EE 69662066616C7365207468656E20636F.  if false then continue else gl_tabloop;
-- if false then continue else gl_tabloop;
238 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0753@00EF 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 40;
-- trace(from_microcode), directByte = 40;
239 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0754@00F0 616C75203C3D20535F66726F6D537461.  alu <= S_fromStack, ExpStack <= pop2;
-- alu <= S_fromStack, ExpStack <= pop2;
240 => X"61_6C_75_20_3C_3D_20_53_5F_66_72_6F_6D_53_74_61",

-- L0755@00F1 616C75203C3D20535F706C75735F523B.  alu <= S_plus_R;
-- alu <= S_plus_R;
241 => X"61_6C_75_20_3C_3D_20_53_5F_70_6C_75_73_5F_52_3B",

-- L0756@00F2 54203C3D2066726F6D5F594C6F2C2069.  T <= from_YLo, if Y_SIGN then SYNTAX_ERR;
-- T <= from_YLo, if Y_SIGN then SYNTAX_ERR;
242 => X"54_20_3C_3D_20_66_72_6F_6D_5F_59_4C_6F_2C_20_69",

-- L0757@00F3 4C696E6F203C3D20542C20696620595F.  Lino <= T, if Y_ZERO then SYNTAX_ERR;
-- Lino <= T, if Y_ZERO then SYNTAX_ERR;
243 => X"4C_69_6E_6F_20_3C_3D_20_54_2C_20_69_66_20_59_5F",

-- L0760@00F4 736B697053706163657328293B202020.  skipSpaces();
-- skipSpaces();
244 => X"73_6B_69_70_53_70_61_63_65_73_28_29_3B_20_20_20",

-- L0761@00F5 54203C3D2042503B2020202020202020.  T <= BP;
-- T <= BP;
245 => X"54_20_3C_3D_20_42_50_3B_20_20_20_20_20_20_20_20",

-- L0762@00F6 696C5F66696E6442453A204245203C3D.il_findBE:  BE <= T, readCore(T);
-- il_findBE: BE <= T, readCore(T);
246 => X"69_6C_5F_66_69_6E_64_42_45_3A_20_42_45_20_3C_3D",

-- L0763@00F7 64697265637442797465203D20307830.  directByte = 0x0D, if MDR_MATCHES_DB then il_fork;
-- directByte = 0x0D, if MDR_MATCHES_DB then il_fork;
247 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_30_78_30",

-- L0764@00F8 54203C3D20696E632C2069662066616C.  T <= inc, if false then continue else il_findBE;
-- T <= inc, if false then continue else il_findBE;
248 => X"54_20_3C_3D_20_69_6E_63_2C_20_69_66_20_66_61_6C",

-- L0766@00F9 696C5F666F726B3A207363616E50726F.il_fork:  scanProgram();
-- il_fork: scanProgram();
249 => X"69_6C_5F_66_6F_72_6B_3A_20_73_63_61_6E_50_72_6F",

-- L0767@00FA 696620494D504C494E455F454D505459.  if IMPLINE_EMPTY then next else changeLine;
-- if IMPLINE_EMPTY then next else changeLine;
250 => X"69_66_20_49_4D_50_4C_49_4E_45_5F_45_4D_50_54_59",

-- L0769@00FB 64656C6574654C696E653A2069662052.deleteLine:  if R_IS_ZERO then WarmStart;
-- deleteLine: if R_IS_ZERO then WarmStart;
251 => X"64_65_6C_65_74_65_4C_69_6E_65_3A_20_69_66_20_52",

-- L0770@00FC 696620595F5A45524F207468656E206E.  if Y_ZERO then next else WarmStart;
-- if Y_ZERO then next else WarmStart;
252 => X"69_66_20_59_5F_5A_45_52_4F_20_74_68_65_6E_20_6E",

-- L0771@00FD 66696E64507267456E6428293B202020.  findPrgEnd();
-- findPrgEnd();
253 => X"66_69_6E_64_50_72_67_45_6E_64_28_29_3B_20_20_20",

-- L0772@00FE 636F7079436F726528636F70795F696E.  copyCore(copy_init_del);
-- copyCore(copy_init_del);
254 => X"63_6F_70_79_43_6F_72_65_28_63_6F_70_79_5F_69_6E",

-- L0773@00FF 69662066616C7365207468656E20636F.  if false then continue else WarmStart;
-- if false then continue else WarmStart;
255 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0775@0100 6368616E67654C696E653A2069662052.changeLine:  if R_IS_ZERO then appendLine;
-- changeLine: if R_IS_ZERO then appendLine;
256 => X"63_68_61_6E_67_65_4C_69_6E_65_3A_20_69_66_20_52",

-- L0776@0101 696620595F5A45524F207468656E206E.  if Y_ZERO then next else insertLine;
-- if Y_ZERO then next else insertLine;
257 => X"69_66_20_59_5F_5A_45_52_4F_20_74_68_65_6E_20_6E",

-- L0778@0102 7265706C6163654C696E653A2066696E.replaceLine:  findPrgEnd();
-- replaceLine: findPrgEnd();
258 => X"72_65_70_6C_61_63_65_4C_69_6E_65_3A_20_66_69_6E",

-- L0779@0103 636F7079436F726528636F70795F696E.  copyCore(copy_init_del);
-- copyCore(copy_init_del);
259 => X"63_6F_70_79_43_6F_72_65_28_63_6F_70_79_5F_69_6E",

-- L0780@0104 7363616E50726F6772616D28293B2020.  scanProgram();
-- scanProgram();
260 => X"73_63_61_6E_50_72_6F_67_72_61_6D_28_29_3B_20_20",

-- L0781@0105 696E736572744C696E653A2066696E64.insertLine:  findPrgEnd();
-- insertLine: findPrgEnd();
261 => X"69_6E_73_65_72_74_4C_69_6E_65_3A_20_66_69_6E_64",

-- L0782@0106 636F7079436F726528636F70795F696E.  copyCore(copy_init_ins);
-- copyCore(copy_init_ins);
262 => X"63_6F_70_79_43_6F_72_65_28_63_6F_70_79_5F_69_6E",

-- L0783@0107 696E735F66696E6973683A20636F7079.ins_finish:  copyLine(LS);
-- ins_finish: copyLine(LS);
263 => X"69_6E_73_5F_66_69_6E_69_73_68_3A_20_63_6F_70_79",

-- L0784@0108 69662066616C7365207468656E20636F.  if false then continue else WarmStart;
-- if false then continue else WarmStart;
264 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0786@0109 617070656E644C696E653A2054203C3D.appendLine:  T <= dec;
-- appendLine: T <= dec;
265 => X"61_70_70_65_6E_64_4C_69_6E_65_3A_20_54_20_3C_3D",

-- L0787@010A 636F70794C696E6528646563293B2020.  copyLine(dec);
-- copyLine(dec);
266 => X"63_6F_70_79_4C_69_6E_65_28_64_65_63_29_3B_20_20",

-- L0788@010B 7772697465324E756C6C732873616D65.  write2Nulls(same);
-- write2Nulls(same);
267 => X"77_72_69_74_65_32_4E_75_6C_6C_73_28_73_61_6D_65",

-- L0789@010C 69662066616C7365207468656E20636F.  if false then continue else WarmStart;
-- if false then continue else WarmStart;
268 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0791@010D 636F70794C696E653A20616C75203C3D.copyLine:  alu <= S_fromLino;
-- copyLine: alu <= S_fromLino;
269 => X"63_6F_70_79_4C_69_6E_65_3A_20_61_6C_75_20_3C_3D",

-- L0792@010E 7772697465436F726528542C2066726F.  writeCore(T, from_SHi);
-- writeCore(T, from_SHi);
270 => X"77_72_69_74_65_43_6F_72_65_28_54_2C_20_66_72_6F",

-- L0793@010F 54203C3D20696E633B20202020202020.  T <= inc;
-- T <= inc;
271 => X"54_20_3C_3D_20_69_6E_63_3B_20_20_20_20_20_20_20",

-- L0794@0110 7772697465436F726528542C2066726F.  writeCore(T, from_SLo);
-- writeCore(T, from_SLo);
272 => X"77_72_69_74_65_43_6F_72_65_28_54_2C_20_66_72_6F",

-- L0795@0111 54203C3D20696E633B20202020202020.  T <= inc;
-- T <= inc;
273 => X"54_20_3C_3D_20_69_6E_63_3B_20_20_20_20_20_20_20",

-- L0796@0112 6170705F6C6F6F703A2072656164436F.app_loop:  readCore(BP);
-- app_loop: readCore(BP);
274 => X"61_70_70_5F_6C_6F_6F_70_3A_20_72_65_61_64_43_6F",

-- L0797@0113 7772697465436F726528542C2073616D.  writeCore(T, same);
-- writeCore(T, same);
275 => X"77_72_69_74_65_43_6F_72_65_28_54_2C_20_73_61_6D",

-- L0798@0114 4250203C3D20696E632C2054203C3D20.  BP <= inc, T <= inc;
-- BP <= inc, T <= inc;
276 => X"42_50_20_3C_3D_20_69_6E_63_2C_20_54_20_3C_3D_20",

-- L0799@0115 64697265637442797465203D20307830.  directByte = 0x0D, if MDR_MATCHES_DB then return else app_loop;
-- directByte = 0x0D, if MDR_MATCHES_DB then return else app_loop;
277 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_30_78_30",

-- L0801@0116 66696E64507267456E643A2054203C3D.findPrgEnd:  T <= Prog_start;
-- findPrgEnd: T <= Prog_start;
278 => X"66_69_6E_64_50_72_67_45_6E_64_3A_20_54_20_3C_3D",

-- L0802@0117 6670655F6C6F6F703A2072656164436F.fpe_loop:  readCore16(same);
-- fpe_loop: readCore16(same);
279 => X"66_70_65_5F_6C_6F_6F_70_3A_20_72_65_61_64_43_6F",

-- L0803@0118 696620525F49535F5A45524F20746865.  if R_IS_ZERO then next else fpe_next;
-- if R_IS_ZERO then next else fpe_next;
280 => X"69_66_20_52_5F_49_53_5F_5A_45_52_4F_20_74_68_65",

-- L0804@0119 54203C3D206465633B20202020202020.  T <= dec;
-- T <= dec;
281 => X"54_20_3C_3D_20_64_65_63_3B_20_20_20_20_20_20_20",

-- L0805@011A 507267456E64203C3D20542C20696620.  PrgEnd <= T, if true then return else continue;
-- PrgEnd <= T, if true then return else continue;
282 => X"50_72_67_45_6E_64_20_3C_3D_20_54_2C_20_69_66_20",

-- L0806@011B 6670655F6E6578743A2066696E644E65.fpe_next:  findNextCR(same);
-- fpe_next: findNextCR(same);
283 => X"66_70_65_5F_6E_65_78_74_3A_20_66_69_6E_64_4E_65",

-- L0807@011C 54203C3D20696E632C2069662066616C.  T <= inc, if false then continue else fpe_loop;
-- T <= inc, if false then continue else fpe_loop;
284 => X"54_20_3C_3D_20_69_6E_63_2C_20_69_66_20_66_61_6C",

-- L0811@011D 7363616E50726F6772616D3A2054203C.scanProgram:  T <= zero;
-- scanProgram: T <= zero;
285 => X"73_63_61_6E_50_72_6F_67_72_61_6D_3A_20_54_20_3C",

-- L0812@011E 4C53203C3D20542C204C45203C3D2054.  LS <= T, LE <= T, T <= Prog_start;
-- LS <= T, LE <= T, T <= Prog_start;
286 => X"4C_53_20_3C_3D_20_54_2C_20_4C_45_20_3C_3D_20_54",

-- L0814@011F 7363616E5F6C6F6F703A204C53203C3D.scan_loop:  LS <= T, readCore16(same);
-- scan_loop: LS <= T, readCore16(same);
287 => X"73_63_61_6E_5F_6C_6F_6F_70_3A_20_4C_53_20_3C_3D",

-- L0815@0120 616C75203C3D20535F66726F6D4C696E.  alu <= S_fromLino, if R_IS_ZERO then return;
-- alu <= S_fromLino, if R_IS_ZERO then return;
288 => X"61_6C_75_20_3C_3D_20_53_5F_66_72_6F_6D_4C_69_6E",

-- L0816@0121 7363616E5F636865636B3A20616C7520.scan_check:  alu <= S_minus_R;
-- scan_check: alu <= S_minus_R;
289 => X"73_63_61_6E_5F_63_68_65_63_6B_3A_20_61_6C_75_20",

-- L0818@0122 696620595F5A45524F207468656E2073.  if Y_ZERO then scan_found else next;
-- if Y_ZERO then scan_found else next;
290 => X"69_66_20_59_5F_5A_45_52_4F_20_74_68_65_6E_20_73",

-- L0819@0123 696620595F5349474E207468656E2073.  if Y_SIGN then scan_found else next;
-- if Y_SIGN then scan_found else next;
291 => X"69_66_20_59_5F_53_49_47_4E_20_74_68_65_6E_20_73",

-- L0820@0124 7363616E5F6E6578743A2066696E644E.scan_next:  findNextCR(same);
-- scan_next: findNextCR(same);
292 => X"73_63_61_6E_5F_6E_65_78_74_3A_20_66_69_6E_64_4E",

-- L0821@0125 7363616E5F6C696E653A2054203C3D20.scan_line:  T <= inc, if false then continue else scan_loop;
-- scan_line: T <= inc, if false then continue else scan_loop;
293 => X"73_63_61_6E_5F_6C_69_6E_65_3A_20_54_20_3C_3D_20",

-- L0823@0126 7363616E5F666F756E643A2066696E64.scan_found:  findNextCR(same);
-- scan_found: findNextCR(same);
294 => X"73_63_61_6E_5F_66_6F_75_6E_64_3A_20_66_69_6E_64",

-- L0824@0127 4C45203C3D20543B2020202020202020.  LE <= T;
-- LE <= T;
295 => X"4C_45_20_3C_3D_20_54_3B_20_20_20_20_20_20_20_20",

-- L0826@0128 69662074727565207468656E20726574.  if true then return else continue;
-- if true then return else continue;
296 => X"69_66_20_74_72_75_65_20_74_68_65_6E_20_72_65_74",

-- L0829@0129 636F7079436F72653A2054203C3D2066.copyCore:  T <= from_S, if Y_ZERO then return;
-- copyCore: T <= from_S, if Y_ZERO then return;
297 => X"63_6F_70_79_43_6F_72_65_3A_20_54_20_3C_3D_20_66",

-- L0830@012A 72656164436F72652854293B20202020.  readCore(T);
-- readCore(T);
298 => X"72_65_61_64_43_6F_72_65_28_54_29_3B_20_20_20_20",

-- L0831@012B 54203C3D2066726F6D5F523B20202020.  T <= from_R;
-- T <= from_R;
299 => X"54_20_3C_3D_20_66_72_6F_6D_5F_52_3B_20_20_20_20",

-- L0832@012C 7772697465436F726528542C2073616D.  writeCore(T, same);
-- writeCore(T, same);
300 => X"77_72_69_74_65_43_6F_72_65_28_54_2C_20_73_61_6D",

-- L0834@012D 616C75203C3D20636F70795F6E657874.  alu <= copy_next, if false then continue else copyCore;
-- alu <= copy_next, if false then continue else copyCore;
301 => X"61_6C_75_20_3C_3D_20_63_6F_70_79_5F_6E_65_78_74",

-- L0839@012E 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 43;
-- trace(from_microcode), directByte = 43;
302 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0840@012F 69662066616C7365207468656E20636F.  if false then continue else ColdStart;
-- if false then continue else ColdStart;
303 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0845@0130 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 42;
-- trace(from_microcode), directByte = 42;
304 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0846@0131 54203C3D20494C5F50433B2020202020.  T <= IL_PC;
-- T <= IL_PC;
305 => X"54_20_3C_3D_20_49_4C_5F_50_43_3B_20_20_20_20_20",

-- L0847@0132 585168657265203C3D20542C20726561.  XQhere <= T, readCore16(Prog_start);
-- XQhere <= T, readCore16(Prog_start);
306 => X"58_51_68_65_72_65_20_3C_3D_20_54_2C_20_72_65_61",

-- L0848@0133 4250203C3D20542C2054203C3D206672.  BP <= T, T <= from_R, if R_IS_ZERO then NOPROG_ERR;
-- BP <= T, T <= from_R, if R_IS_ZERO then NOPROG_ERR;
307 => X"42_50_20_3C_3D_20_54_2C_20_54_20_3C_3D_20_66_72",

-- L0849@0134 4C696E6F203C3D20542C206966206661.  Lino <= T, if false then continue else fetch;
-- Lino <= T, if false then continue else fetch;
308 => X"4C_69_6E_6F_20_3C_3D_20_54_2C_20_69_66_20_66_61",

-- L0854@0135 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 44;
-- trace(from_microcode), directByte = 44;
309 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0855@0136 73746F705F72756E3A20646972656374.stop_run:  directByte = 'S', outChar(from_microcode);
-- stop_run: directByte = 'S', outChar(from_microcode);
310 => X"73_74_6F_70_5F_72_75_6E_3A_20_64_69_72_65_63_74",

-- L0856@0137 64697265637442797465203D20275427.  directByte = 'T', outChar(from_microcode);
-- directByte = 'T', outChar(from_microcode);
311 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_27_54_27",

-- L0857@0138 64697265637442797465203D20274F27.  directByte = 'O', outChar(from_microcode);
-- directByte = 'O', outChar(from_microcode);
312 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_27_4F_27",

-- L0858@0139 64697265637442797465203D20275027.  directByte = 'P', outChar(from_microcode);
-- directByte = 'P', outChar(from_microcode);
313 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_27_50_27",

-- L0859@013A 69662066616C7365207468656E20636F.  if false then continue else print_lino;
-- if false then continue else print_lino;
314 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0864@013B 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 49;
-- trace(from_microcode), directByte = 49;
315 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0865@013C 616C75203C3D20525F66726F6D537461.  alu <= R_fromStack, ExpStack <= pop2;
-- alu <= R_fromStack, ExpStack <= pop2;
316 => X"61_6C_75_20_3C_3D_20_52_5F_66_72_6F_6D_53_74_61",

-- L0866@013D 54203C3D20457870537461636B2C2045.  T <= ExpStack, ExpStack <= pop2;
-- T <= ExpStack, ExpStack <= pop2;
317 => X"54_20_3C_3D_20_45_78_70_53_74_61_63_6B_2C_20_45",

-- L0867@013E 616C75203C3D20535F66726F6D537461.  alu <= S_fromStack, ExpStack <= pop2;
-- alu <= S_fromStack, ExpStack <= pop2;
318 => X"61_6C_75_20_3C_3D_20_53_5F_66_72_6F_6D_53_74_61",

-- L0868@013F 7472616365414C5528293B2020202020.  traceALU();
-- traceALU();
319 => X"74_72_61_63_65_41_4C_55_28_29_3B_20_20_20_20_20",

-- L0870@0140 64697265637442797465203D2032302C.  directByte = 20, if S_EQU_DB_MOD32 then u_peek8;
-- directByte = 20, if S_EQU_DB_MOD32 then u_peek8;
320 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_32_30_2C",

-- L0871@0141 64697265637442797465203D2032312C.  directByte = 21, if S_EQU_DB_MOD32 then u_peek16;
-- directByte = 21, if S_EQU_DB_MOD32 then u_peek16;
321 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_32_31_2C",

-- L0872@0142 64697265637442797465203D2032322C.  directByte = 22, if S_EQU_DB_MOD32 then u_charout;
-- directByte = 22, if S_EQU_DB_MOD32 then u_charout;
322 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_32_32_2C",

-- L0873@0143 64697265637442797465203D2032332C.  directByte = 23, if S_EQU_DB_MOD32 then u_charin;
-- directByte = 23, if S_EQU_DB_MOD32 then u_charin;
323 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_32_33_2C",

-- L0874@0144 64697265637442797465203D2032342C.  directByte = 24, if S_EQU_DB_MOD32 then u_poke8;
-- directByte = 24, if S_EQU_DB_MOD32 then u_poke8;
324 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_32_34_2C",

-- L0875@0145 64697265637442797465203D2032352C.  directByte = 25, if S_EQU_DB_MOD32 then u_poke16;
-- directByte = 25, if S_EQU_DB_MOD32 then u_poke16;
325 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_32_35_2C",

-- L0877@0146 64697265637442797465203D2032372C.  directByte = 27, if S_EQU_DB_MOD32 then u_modulo;
-- directByte = 27, if S_EQU_DB_MOD32 then u_modulo;
326 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_32_37_2C",

-- L0878@0147 64697265637442797465203D2032392C.  directByte = 29, if S_EQU_DB_MOD32 then u_size;
-- directByte = 29, if S_EQU_DB_MOD32 then u_size;
327 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_32_39_2C",

-- L0879@0148 64697265637442797465203D2033302C.  directByte = 30, if S_EQU_DB_MOD32 then u_getarray;
-- directByte = 30, if S_EQU_DB_MOD32 then u_getarray;
328 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_33_30_2C",

-- L0880@0149 64697265637442797465203D2033312C.  directByte = 31, if S_EQU_DB_MOD32 then u_setarray;
-- directByte = 31, if S_EQU_DB_MOD32 then u_setarray;
329 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_33_31_2C",

-- L0881@014A 54203C3D2062696E6F702C2069662066.  T <= binop, if false then continue else u_done;
-- T <= binop, if false then continue else u_done;
330 => X"54_20_3C_3D_20_62_69_6E_6F_70_2C_20_69_66_20_66",

-- L0883@014B 755F6D6F64756C6F3A20616C75203C3D.u_modulo:  alu <= S_fromT, div_mod();
-- u_modulo: alu <= S_fromT, div_mod();
331 => X"75_5F_6D_6F_64_75_6C_6F_3A_20_61_6C_75_20_3C_3D",

-- L0884@014C 54203C3D2066726F6D5F5948692C2069.  T <= from_YHi, if false then continue else u_done;
-- T <= from_YHi, if false then continue else u_done;
332 => X"54_20_3C_3D_20_66_72_6F_6D_5F_59_48_69_2C_20_69",

-- L0886@014D 755F636861726F75743A20616C75203C.u_charout:  alu <= S_fromT;
-- u_charout: alu <= S_fromT;
333 => X"75_5F_63_68_61_72_6F_75_74_3A_20_61_6C_75_20_3C",

-- L0887@014E 4D4452203C3D2066726F6D5F534C6F3B.  MDR <= from_SLo;
-- MDR <= from_SLo;
334 => X"4D_44_52_20_3C_3D_20_66_72_6F_6D_5F_53_4C_6F_3B",

-- L0888@014F 6F7574436861722866726F6D5F4D4452.  outChar(from_MDR);
-- outChar(from_MDR);
335 => X"6F_75_74_43_68_61_72_28_66_72_6F_6D_5F_4D_44_52",

-- L0889@0150 457870537461636B203C3D2070757368.  ExpStack <= push_TWord, if false then continue else fetch;
-- ExpStack <= push_TWord, if false then continue else fetch;
336 => X"45_78_70_53_74_61_63_6B_20_3C_3D_20_70_75_73_68",

-- L0891@0151 755F63686172696E3A20696620434841.u_charin:  if CHARIN_READY then next else repeat;
-- u_charin: if CHARIN_READY then next else repeat;
337 => X"75_5F_63_68_61_72_69_6E_3A_20_69_66_20_43_48_41",

-- L0892@0152 676F7443686172203D20312C204D4452.  gotChar = 1, MDR <= CHARIN, if false then continue else u_in;
-- gotChar = 1, MDR <= CHARIN, if false then continue else u_in;
338 => X"67_6F_74_43_68_61_72_20_3D_20_31_2C_20_4D_44_52",

-- L0894@0153 755F7065656B383A2072656164436F72.u_peek8:  readCore(T);
-- u_peek8: readCore(T);
339 => X"75_5F_70_65_65_6B_38_3A_20_72_65_61_64_43_6F_72",

-- L0895@0154 755F696E3A2054203C3D204D44522C20.u_in:  T <= MDR, if false then continue else u_done;
-- u_in: T <= MDR, if false then continue else u_done;
340 => X"75_5F_69_6E_3A_20_54_20_3C_3D_20_4D_44_52_2C_20",

-- L0897@0155 755F73697A653A2054203C3D2066726F.u_size:  T <= fromSize, if false then continue else u_done;
-- u_size: T <= fromSize, if false then continue else u_done;
341 => X"75_5F_73_69_7A_65_3A_20_54_20_3C_3D_20_66_72_6F",

-- L0899@0156 755F67657461727261793A2054203C3D.u_getarray:  T <= index2address;
-- u_getarray: T <= index2address;
342 => X"75_5F_67_65_74_61_72_72_61_79_3A_20_54_20_3C_3D",

-- L0900@0157 755F7065656B31363A2072656164436F.u_peek16:  readCore16(same);
-- u_peek16: readCore16(same);
343 => X"75_5F_70_65_65_6B_31_36_3A_20_72_65_61_64_43_6F",

-- L0901@0158 54203C3D2066726F6D5F522C20696620.  T <= from_R, if false then continue else u_done;
-- T <= from_R, if false then continue else u_done;
344 => X"54_20_3C_3D_20_66_72_6F_6D_5F_52_2C_20_69_66_20",

-- L0903@0159 755F706F6B65383A2070726570577269.u_poke8:  prepWrite();
-- u_poke8: prepWrite();
345 => X"75_5F_70_6F_6B_65_38_3A_20_70_72_65_70_57_72_69",

-- L0904@015A 7772697465436F726528542C2066726F.  writeCore(T, from_SLo);
-- writeCore(T, from_SLo);
346 => X"77_72_69_74_65_43_6F_72_65_28_54_2C_20_66_72_6F",

-- L0905@015B 69662066616C7365207468656E20636F.  if false then continue else u_peek8;
-- if false then continue else u_peek8;
347 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0907@015C 755F73657461727261793A2054203C3D.u_setarray:  T <= index2address;
-- u_setarray: T <= index2address;
348 => X"75_5F_73_65_74_61_72_72_61_79_3A_20_54_20_3C_3D",

-- L0908@015D 755F706F6B6531363A20707265705772.u_poke16:  prepWrite();
-- u_poke16: prepWrite();
349 => X"75_5F_70_6F_6B_65_31_36_3A_20_70_72_65_70_57_72",

-- L0909@015E 7772697465436F726528542C2066726F.  writeCore(T, from_SHi), T <= inc;
-- writeCore(T, from_SHi), T <= inc;
350 => X"77_72_69_74_65_43_6F_72_65_28_54_2C_20_66_72_6F",

-- L0910@015F 7772697465436F726528542C2066726F.  writeCore(T, from_SLo);
-- writeCore(T, from_SLo);
351 => X"77_72_69_74_65_43_6F_72_65_28_54_2C_20_66_72_6F",

-- L0911@0160 54203C3D206465632C2069662066616C.  T <= dec, if false then continue else u_peek16;
-- T <= dec, if false then continue else u_peek16;
352 => X"54_20_3C_3D_20_64_65_63_2C_20_69_66_20_66_61_6C",

-- L0913@0161 7072657057726974653A2054203C3D20.prepWrite:  T <= save;
-- prepWrite: T <= save;
353 => X"70_72_65_70_57_72_69_74_65_3A_20_54_20_3C_3D_20",

-- L0914@0162 54203C3D2066726F6D5F523B20202020.  T <= from_R;
-- T <= from_R;
354 => X"54_20_3C_3D_20_66_72_6F_6D_5F_52_3B_20_20_20_20",

-- L0915@0163 616C75203C3D20535F66726F6D542C20.  alu <= S_fromT, T <= recall, if true then return else continue;
-- alu <= S_fromT, T <= recall, if true then return else continue;
355 => X"61_6C_75_20_3C_3D_20_53_5F_66_72_6F_6D_54_2C_20",

-- L0920@0164 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 19;
-- trace(from_microcode), directByte = 19;
356 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0921@0165 696620535441434B5F49535F454D5054.  if STACK_IS_EMPTY then RSTACK_ERR;
-- if STACK_IS_EMPTY then RSTACK_ERR;
357 => X"69_66_20_53_54_41_43_4B_5F_49_53_5F_45_4D_50_54",

-- L0922@0166 494C5F5043203C3D2052657453746163.  IL_PC <= RetStack, RetStack <= pop, if false then continue else fetch;
-- IL_PC <= RetStack, RetStack <= pop, if false then continue else fetch;
358 => X"49_4C_5F_50_43_20_3C_3D_20_52_65_74_53_74_61_63",

-- L0927@0167 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 20;
-- trace(from_microcode), directByte = 20;
359 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0928@0168 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 3;
-- trace(from_microcode), directByte = 3;
360 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0929@0169 696620535441434B5F49535F46554C4C.  if STACK_IS_FULL then RSTACK_ERR;
-- if STACK_IS_FULL then RSTACK_ERR;
361 => X"69_66_20_53_54_41_43_4B_5F_49_53_5F_46_55_4C_4C",

-- L0930@016A 526574537461636B203C3D2070757368.  RetStack <= push_IL_PC_PLUS_1, if false then continue else jump;
-- RetStack <= push_IL_PC_PLUS_1, if false then continue else jump;
362 => X"52_65_74_53_74_61_63_6B_20_3C_3D_20_70_75_73_68",

-- L0935@016B 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 21;
-- trace(from_microcode), directByte = 21;
363 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0936@016C 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 3;
-- trace(from_microcode), directByte = 3;
364 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0937@016D 6A756D703A20494C5F5043203C3D2064.jump:  IL_PC <= direct11, if false then continue else fetch;
-- jump: IL_PC <= direct11, if false then continue else fetch;
365 => X"6A_75_6D_70_3A_20_49_4C_5F_50_43_20_3C_3D_20_64",

-- L0942@016E 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 7;
-- trace(from_microcode), directByte = 7;
366 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0943@016F 494C5F5043203C3D2070635F706C7573.  IL_PC <= pc_plus_off6;
-- IL_PC <= pc_plus_off6;
367 => X"49_4C_5F_50_43_20_3C_3D_20_70_63_5F_70_6C_75_73",

-- L0944@0170 62725F657869743A2074726163652866.br_exit:  trace(from_microcode), directByte = 30;
-- br_exit: trace(from_microcode), directByte = 30;
368 => X"62_72_5F_65_78_69_74_3A_20_74_72_61_63_65_28_66",

-- L0945@0171 69662066616C7365207468656E20636F.  if false then continue else fetch;
-- if false then continue else fetch;
369 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0950@0172 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 7;
-- trace(from_microcode), directByte = 7;
370 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0951@0173 69662066616C7365207468656E20636F.  if false then continue else badop;
-- if false then continue else badop;
371 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0956@0174 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 17;
-- trace(from_microcode), directByte = 17;
372 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0957@0175 54203C3D20494C5F50432C204250203C.  T <= IL_PC, BP <= save, skipSpaces();
-- T <= IL_PC, BP <= save, skipSpaces();
373 => X"54_20_3C_3D_20_49_4C_5F_50_43_2C_20_42_50_20_3C",

-- L0958@0176 62635F6C6F6F703A2074726163652866.bc_loop:  trace(from_microcode), directByte = 3;
-- bc_loop: trace(from_microcode), directByte = 3;
374 => X"62_63_5F_6C_6F_6F_70_3A_20_74_72_61_63_65_28_66",

-- L0959@0177 72656164436F7265284250293B202020.  readCore(BP);
-- readCore(BP);
375 => X"72_65_61_64_43_6F_72_65_28_42_50_29_3B_20_20_20",

-- L0960@0178 6966204D44525F4D4154434845535F49.  if MDR_MATCHES_ILCODEBYTE then next else bc_exit;
-- if MDR_MATCHES_ILCODEBYTE then next else bc_exit;
376 => X"69_66_20_4D_44_52_5F_4D_41_54_43_48_45_53_5F_49",

-- L0961@0179 4250203C3D20696E632C20494C5F5043.  BP <= inc, IL_PC <= inc, if ILCODEBYTE_BIT7 then next else bc_loop;
-- BP <= inc, IL_PC <= inc, if ILCODEBYTE_BIT7 then next else bc_loop;
377 => X"42_50_20_3C_3D_20_69_6E_63_2C_20_49_4C_5F_50_43",

-- L0962@017A 7472616365425028293B202020202020.  traceBP();
-- traceBP();
378 => X"74_72_61_63_65_42_50_28_29_3B_20_20_20_20_20_20",

-- L0963@017B 69662066616C7365207468656E20636F.  if false then continue else fetch;
-- if false then continue else fetch;
379 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0964@017C 62635F657869743A204250203C3D2072.bc_exit:  BP <= recall, IL_PC <= T;
-- bc_exit: BP <= recall, IL_PC <= T;
380 => X"62_63_5F_65_78_69_74_3A_20_42_50_20_3C_3D_20_72",

-- L0965@017D 7472616365425028293B202020202020.  traceBP();
-- traceBP();
381 => X"74_72_61_63_65_42_50_28_29_3B_20_20_20_20_20_20",

-- L0966@017E 494C5F5043203C3D2070635F706C7573.  IL_PC <= pc_plus_off5, if OFF_IS_ZERO then SYNTAX_ERR else br_exit;
-- IL_PC <= pc_plus_off5, if OFF_IS_ZERO then SYNTAX_ERR else br_exit;
382 => X"49_4C_5F_50_43_20_3C_3D_20_70_63_5F_70_6C_75_73",

-- L0971@017F 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 16;
-- trace(from_microcode), directByte = 16;
383 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0972@0180 736B697053706163657328293B202020.  skipSpaces();
-- skipSpaces();
384 => X"73_6B_69_70_53_70_61_63_65_73_28_29_3B_20_20_20",

-- L0973@0181 4D4452203C3D20546F55707065722C20.  MDR <= ToUpper, if MDR_IS_ALPHA then bv_exec;
-- MDR <= ToUpper, if MDR_IS_ALPHA then bv_exec;
385 => X"4D_44_52_20_3C_3D_20_54_6F_55_70_70_65_72_2C_20",

-- L0974@0182 494C5F5043203C3D2070635F706C7573.  IL_PC <= pc_plus_off5, if OFF_IS_ZERO then SYNTAX_ERR else br_exit;
-- IL_PC <= pc_plus_off5, if OFF_IS_ZERO then SYNTAX_ERR else br_exit;
386 => X"49_4C_5F_50_43_20_3C_3D_20_70_63_5F_70_6C_75_73",

-- L0975@0183 62765F657865633A2054203C3D204D44.bv_exec:  T <= MDRx2, if STACK_IS_FULL then ESTACK_ERR;
-- bv_exec: T <= MDRx2, if STACK_IS_FULL then ESTACK_ERR;
387 => X"62_76_5F_65_78_65_63_3A_20_54_20_3C_3D_20_4D_44",

-- L0976@0184 457870537461636B203C3D2070757368.  ExpStack <= push_TByte, BP <= inc, if false then continue else fetch;
-- ExpStack <= push_TByte, BP <= inc, if false then continue else fetch;
388 => X"45_78_70_53_74_61_63_6B_20_3C_3D_20_70_75_73_68",

-- L0981@0185 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 14;
-- trace(from_microcode), directByte = 14;
389 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0982@0186 736B697053706163657328293B202020.  skipSpaces();
-- skipSpaces();
390 => X"73_6B_69_70_53_70_61_63_65_73_28_29_3B_20_20_20",

-- L0983@0187 616C75203C3D207265736574302C2069.  alu <= reset0, if MDR_IS_NUM then bn_loop;
-- alu <= reset0, if MDR_IS_NUM then bn_loop;
391 => X"61_6C_75_20_3C_3D_20_72_65_73_65_74_30_2C_20_69",

-- L0984@0188 494C5F5043203C3D2070635F706C7573.  IL_PC <= pc_plus_off5, if OFF_IS_ZERO then badop;
-- IL_PC <= pc_plus_off5, if OFF_IS_ZERO then badop;
392 => X"49_4C_5F_50_43_20_3C_3D_20_70_63_5F_70_6C_75_73",

-- L0985@0189 626E5F657869743A2074726163655928.bn_exit:  traceY();
-- bn_exit: traceY();
393 => X"62_6E_5F_65_78_69_74_3A_20_74_72_61_63_65_59_28",

-- L0986@018A 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 30;
-- trace(from_microcode), directByte = 30;
394 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0987@018B 69662066616C7365207468656E20636F.  if false then continue else fetch;
-- if false then continue else fetch;
395 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L0988@018C 626E5F6C6F6F703A20616C75203C3D20.bn_loop:  alu <= Yx10_plus_MDR, BP <= inc;
-- bn_loop: alu <= Yx10_plus_MDR, BP <= inc;
396 => X"62_6E_5F_6C_6F_6F_70_3A_20_61_6C_75_20_3C_3D_20",

-- L0989@018D 696620414C555F4F564552464C4F5720.  if ALU_OVERFLOW then OVERFLOW_ERR;
-- if ALU_OVERFLOW then OVERFLOW_ERR;
397 => X"69_66_20_41_4C_55_5F_4F_56_45_52_46_4C_4F_57_20",

-- L0990@018E 72656164436F7265284250293B202020.  readCore(BP);
-- readCore(BP);
398 => X"72_65_61_64_43_6F_72_65_28_42_50_29_3B_20_20_20",

-- L0991@018F 6966204D44525F49535F4E554D207468.  if MDR_IS_NUM then bn_loop;
-- if MDR_IS_NUM then bn_loop;
399 => X"69_66_20_4D_44_52_5F_49_53_5F_4E_55_4D_20_74_68",

-- L0992@0190 54203C3D2066726F6D5F594C6F2C2069.  T <= from_YLo, if STACK_IS_FULL then ESTACK_ERR;
-- T <= from_YLo, if STACK_IS_FULL then ESTACK_ERR;
400 => X"54_20_3C_3D_20_66_72_6F_6D_5F_59_4C_6F_2C_20_69",

-- L0993@0191 457870537461636B203C3D2070757368.  ExpStack <= push_TWord, if false then continue else bn_exit;
-- ExpStack <= push_TWord, if false then continue else bn_exit;
401 => X"45_78_70_53_74_61_63_6B_20_3C_3D_20_70_75_73_68",

-- L0998@0192 74726163652866726F6D5F6D6963726F.  trace(from_microcode), directByte = 13;
-- trace(from_microcode), directByte = 13;
402 => X"74_72_61_63_65_28_66_72_6F_6D_5F_6D_69_63_72_6F",

-- L0999@0193 736B697053706163657328293B202020.  skipSpaces();
-- skipSpaces();
403 => X"73_6B_69_70_53_70_61_63_65_73_28_29_3B_20_20_20",

-- L1000@0194 64697265637442797465203D20307830.  directByte = 0x0D, if MDR_MATCHES_DB then fetch;
-- directByte = 0x0D, if MDR_MATCHES_DB then fetch;
404 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_30_78_30",

-- L1001@0195 494C5F5043203C3D2070635F706C7573.  IL_PC <= pc_plus_off5, if OFF_IS_ZERO then SYNTAX_ERR else br_exit;
-- IL_PC <= pc_plus_off5, if OFF_IS_ZERO then SYNTAX_ERR else br_exit;
405 => X"49_4C_5F_50_43_20_3C_3D_20_70_63_5F_70_6C_75_73",

-- L1003@0196 425245414B3A20676F7443686172203D.BREAK:  gotChar = 1, trace(from_microcode), directByte = 55;
-- BREAK: gotChar = 1, trace(from_microcode), directByte = 55;
406 => X"42_52_45_41_4B_3A_20_67_6F_74_43_68_61_72_20_3D",

-- L1004@0197 6F75744265657028293B202020202020.  outBeep();
-- outBeep();
407 => X"6F_75_74_42_65_65_70_28_29_3B_20_20_20_20_20_20",

-- L1005@0198 64697265637442797465203D20274227.  directByte = 'B', outChar(from_microcode);
-- directByte = 'B', outChar(from_microcode);
408 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_27_42_27",

-- L1006@0199 64697265637442797465203D20275227.  directByte = 'R', outChar(from_microcode);
-- directByte = 'R', outChar(from_microcode);
409 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_27_52_27",

-- L1007@019A 64697265637442797465203D20274B27.  directByte = 'K', outChar(from_microcode);
-- directByte = 'K', outChar(from_microcode);
410 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_27_4B_27",

-- L1008@019B 69662066616C7365207468656E20636F.  if false then continue else traceDetails;
-- if false then continue else traceDetails;
411 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L1010@019C 4E4F50524F475F4552523A2074726163.NOPROG_ERR:  trace(from_microcode), directByte = 50;
-- NOPROG_ERR: trace(from_microcode), directByte = 50;
412 => X"4E_4F_50_52_4F_47_5F_45_52_52_3A_20_74_72_61_63",

-- L1011@019D 69662066616C7365207468656E20636F.  if false then continue else traceError;
-- if false then continue else traceError;
413 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L1012@019E 4449564259305F4552523A2074726163.DIVBY0_ERR:  trace(from_microcode), directByte = 57;
-- DIVBY0_ERR: trace(from_microcode), directByte = 57;
414 => X"44_49_56_42_59_30_5F_45_52_52_3A_20_74_72_61_63",

-- L1013@019F 69662066616C7365207468656E20636F.  if false then continue else traceError;
-- if false then continue else traceError;
415 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L1014@01A0 4F564552464C4F575F4552523A207472.OVERFLOW_ERR:  trace(from_microcode), directByte = 58;
-- OVERFLOW_ERR: trace(from_microcode), directByte = 58;
416 => X"4F_56_45_52_46_4C_4F_57_5F_45_52_52_3A_20_74_72",

-- L1015@01A1 69662066616C7365207468656E20636F.  if false then continue else traceError;
-- if false then continue else traceError;
417 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L1016@01A2 53594E5441585F4552523A2074726163.SYNTAX_ERR:  trace(from_microcode), directByte = 61;
-- SYNTAX_ERR: trace(from_microcode), directByte = 61;
418 => X"53_59_4E_54_41_58_5F_45_52_52_3A_20_74_72_61_63",

-- L1017@01A3 69662066616C7365207468656E20636F.  if false then continue else traceError;
-- if false then continue else traceError;
419 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L1018@01A4 494E5445524E414C5F4552523A207472.INTERNAL_ERR:  trace(from_microcode), directByte = 62;
-- INTERNAL_ERR: trace(from_microcode), directByte = 62;
420 => X"49_4E_54_45_52_4E_41_4C_5F_45_52_52_3A_20_74_72",

-- L1019@01A5 69662066616C7365207468656E20636F.  if false then continue else traceError;
-- if false then continue else traceError;
421 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L1020@01A6 45535441434B5F4552523A2074726163.ESTACK_ERR:  trace(from_microcode), directByte = 60;
-- ESTACK_ERR: trace(from_microcode), directByte = 60;
422 => X"45_53_54_41_43_4B_5F_45_52_52_3A_20_74_72_61_63",

-- L1021@01A7 69662066616C7365207468656E20636F.  if false then continue else traceError;
-- if false then continue else traceError;
423 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L1022@01A8 52535441434B5F4552523A2074726163.RSTACK_ERR:  trace(from_microcode), directByte = 59;
-- RSTACK_ERR: trace(from_microcode), directByte = 59;
424 => X"52_53_54_41_43_4B_5F_45_52_52_3A_20_74_72_61_63",

-- L1023@01A9 69662066616C7365207468656E20636F.  if false then continue else traceError;
-- if false then continue else traceError;
425 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L1024@01AA 42535441434B5F4552523A2074726163.BSTACK_ERR:  trace(from_microcode), directByte = 54;
-- BSTACK_ERR: trace(from_microcode), directByte = 54;
426 => X"42_53_54_41_43_4B_5F_45_52_52_3A_20_74_72_61_63",

-- L1025@01AB 74726163654572726F723A206F757442.traceError:  outBeep();
-- traceError: outBeep();
427 => X"74_72_61_63_65_45_72_72_6F_72_3A_20_6F_75_74_42",

-- L1026@01AC 64697265637442797465203D20274527.  directByte = 'E', outChar(from_microcode);
-- directByte = 'E', outChar(from_microcode);
428 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_27_45_27",

-- L1027@01AD 64697265637442797465203D20275227.  directByte = 'R', outChar(from_microcode);
-- directByte = 'R', outChar(from_microcode);
429 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_27_52_27",

-- L1028@01AE 64697265637442797465203D20275227.  directByte = 'R', outChar(from_microcode);
-- directByte = 'R', outChar(from_microcode);
430 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_27_52_27",

-- L1029@01AF 747261636544657461696C733A206469.traceDetails:  directByte = '#', outChar(from_microcode), T <= IL_PC;
-- traceDetails: directByte = '#', outChar(from_microcode), T <= IL_PC;
431 => X"74_72_61_63_65_44_65_74_61_69_6C_73_3A_20_64_69",

-- L1030@01B0 54203C3D206465633B20202020202020.  T <= dec;
-- T <= dec;
432 => X"54_20_3C_3D_20_64_65_63_3B_20_20_20_20_20_20_20",

-- L1031@01B1 7072696E744465635228525F66726F6D.  printDecR(R_fromT);
-- printDecR(R_fromT);
433 => X"70_72_69_6E_74_44_65_63_52_28_52_5F_66_72_6F_6D",

-- L1032@01B2 69662049535F52554E4D4F4445207468.  if IS_RUNMODE then next else err_done;
-- if IS_RUNMODE then next else err_done;
434 => X"69_66_20_49_53_5F_52_55_4E_4D_4F_44_45_20_74_68",

-- L1033@01B3 7072696E745F6C696E6F3A2064697265.print_lino:  directByte = ' ', outChar(from_microcode);
-- print_lino: directByte = ' ', outChar(from_microcode);
435 => X"70_72_69_6E_74_5F_6C_69_6E_6F_3A_20_64_69_72_65",

-- L1034@01B4 64697265637442797465203D20274127.  directByte = 'A', outChar(from_microcode);
-- directByte = 'A', outChar(from_microcode);
436 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_27_41_27",

-- L1035@01B5 64697265637442797465203D20275427.  directByte = 'T', outChar(from_microcode), alu <= S_fromLino;
-- directByte = 'T', outChar(from_microcode), alu <= S_fromLino;
437 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_27_54_27",

-- L1036@01B6 64697265637442797465203D20272027.  directByte = ' ', outChar(from_microcode), T <= from_S;
-- directByte = ' ', outChar(from_microcode), T <= from_S;
438 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_27_20_27",

-- L1037@01B7 7072696E744465635228525F66726F6D.  printDecR(R_fromT);
-- printDecR(R_fromT);
439 => X"70_72_69_6E_74_44_65_63_52_28_52_5F_66_72_6F_6D",

-- L1038@01B8 64697265637442797465203D20272027.  directByte = ' ', outChar(from_microcode), T <= fromTicks;
-- directByte = ' ', outChar(from_microcode), T <= fromTicks;
440 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_27_20_27",

-- L1039@01B9 7072696E744465635228525F66726F6D.  printDecR(R_fromT);
-- printDecR(R_fromT);
441 => X"70_72_69_6E_74_44_65_63_52_28_52_5F_66_72_6F_6D",

-- L1040@01BA 64697265637442797465203D20272E27.  directByte = ' 64697265637442797465203D20272E27.', outChar(from_microcode), T <= recall;
-- directByte = '.', outChar(from_microcode), T <= recall;
442 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_27_2E_27",

-- L1041@01BB 7072696E744465635228525F66726F6D.  printDecR(R_fromT);
-- printDecR(R_fromT);
443 => X"70_72_69_6E_74_44_65_63_52_28_52_5F_66_72_6F_6D",

-- L1042@01BC 6572725F646F6E653A206F757443524C.err_done:  outCRLF();
-- err_done: outCRLF();
444 => X"65_72_72_5F_64_6F_6E_65_3A_20_6F_75_74_43_52_4C",

-- L1043@01BD 74726163652863726C66293B20202020.  trace(crlf);
-- trace(crlf);
445 => X"74_72_61_63_65_28_63_72_6C_66_29_3B_20_20_20_20",

-- L1044@01BE 69662066616C7365207468656E20636F.  if false then continue else WarmStart;
-- if false then continue else WarmStart;
446 => X"69_66_20_66_61_6C_73_65_20_74_68_65_6E_20_63_6F",

-- L1046@01BF 66696E644E65787443523A2072656164.findNextCR:  readCore(T);
-- findNextCR: readCore(T);
447 => X"66_69_6E_64_4E_65_78_74_43_52_3A_20_72_65_61_64",

-- L1047@01C0 64697265637442797465203D20307830.  directByte = 0x0D, if MDR_MATCHES_DB then return;
-- directByte = 0x0D, if MDR_MATCHES_DB then return;
448 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_30_78_30",

-- L1048@01C1 54203C3D20696E632C20646972656374.  T <= inc, directByte = 0x00, if MDR_MATCHES_DB then INTERNAL_ERR else findNextCR;
-- T <= inc, directByte = 0x00, if MDR_MATCHES_DB then INTERNAL_ERR else findNextCR;
449 => X"54_20_3C_3D_20_69_6E_63_2C_20_64_69_72_65_63_74",

-- L1050@01C2 72656164436F726531363A20616C7520.readCore16:  alu <= reset1, readCore(T);
-- readCore16: alu <= reset1, readCore(T);
450 => X"72_65_61_64_43_6F_72_65_31_36_3A_20_61_6C_75_20",

-- L1051@01C3 616C75203C3D2052783235365F706C75.  alu <= Rx256_plus_MDR, T <= inc;
-- alu <= Rx256_plus_MDR, T <= inc;
451 => X"61_6C_75_20_3C_3D_20_52_78_32_35_36_5F_70_6C_75",

-- L1052@01C4 72656164436F72652854293B20202020.  readCore(T);
-- readCore(T);
452 => X"72_65_61_64_43_6F_72_65_28_54_29_3B_20_20_20_20",

-- L1053@01C5 616C75203C3D2052783235365F706C75.  alu <= Rx256_plus_MDR, T <= inc, if true then return else continue;
-- alu <= Rx256_plus_MDR, T <= inc, if true then return else continue;
453 => X"61_6C_75_20_3C_3D_20_52_78_32_35_36_5F_70_6C_75",

-- L1055@01C6 7772697465324E756C6C733A20777269.write2Nulls:  writeCore(T, zero), T <= inc;
-- write2Nulls: writeCore(T, zero), T <= inc;
454 => X"77_72_69_74_65_32_4E_75_6C_6C_73_3A_20_77_72_69",

-- L1056@01C7 7772697465436F726528542C207A6572.  writeCore(T, zero);
-- writeCore(T, zero);
455 => X"77_72_69_74_65_43_6F_72_65_28_54_2C_20_7A_65_72",

-- L1057@01C8 69662074727565207468656E20726574.  if true then return else continue;
-- if true then return else continue;
456 => X"69_66_20_74_72_75_65_20_74_68_65_6E_20_72_65_74",

-- L1060@01C9 70756C6C52533A20696620535441434B.pullRS:  if STACK_IS_EMPTY then ESTACK_ERR;
-- pullRS: if STACK_IS_EMPTY then ESTACK_ERR;
457 => X"70_75_6C_6C_52_53_3A_20_69_66_20_53_54_41_43_4B",

-- L1061@01CA 616C75203C3D20525F66726F6D537461.  alu <= R_fromStack, ExpStack <= pop2;
-- alu <= R_fromStack, ExpStack <= pop2;
458 => X"61_6C_75_20_3C_3D_20_52_5F_66_72_6F_6D_53_74_61",

-- L1062@01CB 696620535441434B5F49535F454D5054.  if STACK_IS_EMPTY then ESTACK_ERR;
-- if STACK_IS_EMPTY then ESTACK_ERR;
459 => X"69_66_20_53_54_41_43_4B_5F_49_53_5F_45_4D_50_54",

-- L1063@01CC 616C75203C3D20535F66726F6D537461.  alu <= S_fromStack, ExpStack <= pop2, if true then return else continue;
-- alu <= S_fromStack, ExpStack <= pop2, if true then return else continue;
460 => X"61_6C_75_20_3C_3D_20_53_5F_66_72_6F_6D_53_74_61",

-- L1066@01CD 7072696E744465633A20616C75203C3D.printDec:  alu <= R_fromStack, ExpStack <= pop2;
-- printDec: alu <= R_fromStack, ExpStack <= pop2;
461 => X"70_72_69_6E_74_44_65_63_3A_20_61_6C_75_20_3C_3D",

-- L1068@01CE 7072696E74446563523A20616C75203C.printDecR:  alu <= bcd_start;
-- printDecR: alu <= bcd_start;
462 => X"70_72_69_6E_74_44_65_63_52_3A_20_61_6C_75_20_3C",

-- L1069@01CF 616C75203C3D206263645F6E6578742C.  alu <= bcd_next, if ALU_READY then next else repeat;
-- alu <= bcd_next, if ALU_READY then next else repeat;
463 => X"61_6C_75_20_3C_3D_20_62_63_64_5F_6E_65_78_74_2C",

-- L1070@01D0 696620414C555F5349474E207468656E.  if ALU_SIGN then next else printY;
-- if ALU_SIGN then next else printY;
464 => X"69_66_20_41_4C_55_5F_53_49_47_4E_20_74_68_65_6E",

-- L1071@01D1 64697265637442797465203D20272D27.  directByte = '-', outChar(from_microcode);
-- directByte = '-', outChar(from_microcode);
465 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_27_2D_27",

-- L1079@01D2 7072696E74593A206469726563744279.printY:  directByte = 6, T <= from_microcode, outNZChar(from_YtoAlphaZ);
-- printY: directByte = 6, T <= from_microcode, outNZChar(from_YtoAlphaZ);
466 => X"70_72_69_6E_74_59_3A_20_64_69_72_65_63_74_42_79",

-- L1080@01D3 7072696E74596C703A206F75744E5A43.printYlp:  outNZChar(from_YtoAlphaZ), T <= dec;
-- printYlp: outNZChar(from_YtoAlphaZ), T <= dec;
467 => X"70_72_69_6E_74_59_6C_70_3A_20_6F_75_74_4E_5A_43",

-- L1081@01D4 616C75203C3D20525F66726F6D543B20.  alu <= R_fromT;
-- alu <= R_fromT;
468 => X"61_6C_75_20_3C_3D_20_52_5F_66_72_6F_6D_54_3B_20",

-- L1082@01D5 696620525F49535F5A45524F20746865.  if R_IS_ZERO then next else printYlp;
-- if R_IS_ZERO then next else printYlp;
469 => X"69_66_20_52_5F_49_53_5F_5A_45_52_4F_20_74_68_65",

-- L1083@01D6 434841524F5554203C3D2066726F6D5F.  CHAROUT <= from_YtoAlpha, if false then continue else outChar;
-- CHAROUT <= from_YtoAlpha, if false then continue else outChar;
470 => X"43_48_41_52_4F_55_54_20_3C_3D_20_66_72_6F_6D_5F",

-- L1085@01D7 6F75744E5A436861723A206F75744368.outNZChar:  outChar(from_YtoAlphaZ);
-- outNZChar: outChar(from_YtoAlphaZ);
471 => X"6F_75_74_4E_5A_43_68_61_72_3A_20_6F_75_74_43_68",

-- L1086@01D8 616C75203C3D20597831362C20696620.  alu <= Yx16, if true then return else continue;
-- alu <= Yx16, if true then return else continue;
472 => X"61_6C_75_20_3C_3D_20_59_78_31_36_2C_20_69_66_20",

-- L1088@01D9 736B69705370616365733A2072656164.skipSpaces:  readCore(BP);
-- skipSpaces: readCore(BP);
473 => X"73_6B_69_70_53_70_61_63_65_73_3A_20_72_65_61_64",

-- L1089@01DA 64697265637442797465203D20272027.  directByte = ' ', if MDR_MATCHES_DB then skipSp;
-- directByte = ' ', if MDR_MATCHES_DB then skipSp;
474 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_27_20_27",

-- L1090@01DB 64697265637442797465203D20307830.  directByte = 0x09, if MDR_MATCHES_DB then skipSp else return;
-- directByte = 0x09, if MDR_MATCHES_DB then skipSp else return;
475 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_30_78_30",

-- L1091@01DC 736B697053703A204250203C3D20696E.skipSp:  BP <= inc, if false then continue else skipSpaces;
-- skipSp: BP <= inc, if false then continue else skipSpaces;
476 => X"73_6B_69_70_53_70_3A_20_42_50_20_3C_3D_20_69_6E",

-- L1093@01DD 6F7574426565703A206F757443524C46.outBeep:  outCRLF();
-- outBeep: outCRLF();
477 => X"6F_75_74_42_65_65_70_3A_20_6F_75_74_43_52_4C_46",

-- L1094@01DE 74726163652863726C66293B20202020.  trace(crlf);
-- trace(crlf);
478 => X"74_72_61_63_65_28_63_72_6C_66_29_3B_20_20_20_20",

-- L1095@01DF 64697265637442797465203D20307830.  directByte = 0x07, CHAROUT <= from_microcode, if false then continue else outChar;
-- directByte = 0x07, CHAROUT <= from_microcode, if false then continue else outChar;
479 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_30_78_30",

-- L1097@01E0 6F757443524C463A2064697265637442.outCRLF:  directByte = 0x0D, outChar(from_microcode);
-- outCRLF: directByte = 0x0D, outChar(from_microcode);
480 => X"6F_75_74_43_52_4C_46_3A_20_64_69_72_65_63_74_42",

-- L1098@01E1 64697265637442797465203D20307830.  directByte = 0x0A, CHAROUT <= from_microcode;
-- directByte = 0x0A, CHAROUT <= from_microcode;
481 => X"64_69_72_65_63_74_42_79_74_65_20_3D_20_30_78_30",

-- L1099@01E2 6F7574436861723A2069662043484152.outChar:  if CHAROUT_READY then next else repeat;
-- outChar: if CHAROUT_READY then next else repeat;
482 => X"6F_75_74_43_68_61_72_3A_20_69_66_20_43_48_41_52",

-- L1100@01E3 696620434841524F55545F5245414459.  if CHAROUT_READY then return else repeat;
-- if CHAROUT_READY then return else repeat;
483 => X"69_66_20_43_48_41_52_4F_55_54_5F_52_45_41_44_59",

-- L1102@01E4 7772697465436F72653A206E5752203D.writeCore:  nWR = 0, if nBUSACK then repeat else return;
-- writeCore: nWR = 0, if nBUSACK then repeat else return;
484 => X"77_72_69_74_65_43_6F_72_65_3A_20_6E_57_52_20_3D",

-- L1104@01E5 72656164436F72653A206E5244203D20.readCore:  nRD = 0, if nBUSACK then repeat else next;
-- readCore: nRD = 0, if nBUSACK then repeat else next;
485 => X"72_65_61_64_43_6F_72_65_3A_20_6E_52_44_20_3D_20",

-- L1105@01E6 6E5244203D20302C204D4452203C3D20.  nRD = 0, MDR <= from_Bus, if true then return else continue;
-- nRD = 0, MDR <= from_Bus, if true then return else continue;
486 => X"6E_52_44_20_3D_20_30_2C_20_4D_44_52_20_3C_3D_20",

-- L1117@01E7 747261636542503A2045787053746163.traceBP:  ExpStack <= push_TWord, T <= BP, trace(from_microcode), directByte = 33;
-- traceBP: ExpStack <= push_TWord, T <= BP, trace(from_microcode), directByte = 33;
487 => X"74_72_61_63_65_42_50_3A_20_45_78_70_53_74_61_63",

-- L1118@01E8 54203C3D20457870537461636B2C2045.  T <= ExpStack, ExpStack <= pop2, if true then return else continue;
-- T <= ExpStack, ExpStack <= pop2, if true then return else continue;
488 => X"54_20_3C_3D_20_45_78_70_53_74_61_63_6B_2C_20_45",

-- L1120@01E9 7472616365593A20457870537461636B.traceY:  ExpStack <= push_TWord, T <= from_YLo, trace(from_microcode), directByte = 32;
-- traceY: ExpStack <= push_TWord, T <= from_YLo, trace(from_microcode), directByte = 32;
489 => X"74_72_61_63_65_59_3A_20_45_78_70_53_74_61_63_6B",

-- L1121@01EA 54203C3D20457870537461636B2C2045.  T <= ExpStack, ExpStack <= pop2, if true then return else continue;
-- T <= ExpStack, ExpStack <= pop2, if true then return else continue;
490 => X"54_20_3C_3D_20_45_78_70_53_74_61_63_6B_2C_20_45",

-- L1123@01EB 7472616365414C553A20747261636528.traceALU:  trace(crlf);
-- traceALU: trace(crlf);
491 => X"74_72_61_63_65_41_4C_55_3A_20_74_72_61_63_65_28",

-- L1124@01EC 54203C3D20736176652C207472616365.  T <= save, trace(from_microcode), directByte = 52;
-- T <= save, trace(from_microcode), directByte = 52;
492 => X"54_20_3C_3D_20_73_61_76_65_2C_20_74_72_61_63_65",

-- L1125@01ED 54203C3D2066726F6D5F532C20747261.  T <= from_S, trace(from_microcode), directByte = 52;
-- T <= from_S, trace(from_microcode), directByte = 52;
493 => X"54_20_3C_3D_20_66_72_6F_6D_5F_53_2C_20_74_72_61",

-- L1126@01EE 54203C3D2066726F6D5F522C20747261.  T <= from_R, trace(from_microcode), directByte = 52;
-- T <= from_R, trace(from_microcode), directByte = 52;
494 => X"54_20_3C_3D_20_66_72_6F_6D_5F_52_2C_20_74_72_61",

-- L1127@01EF 54203C3D2066726F6D5F5948692C2074.  T <= from_YHi, trace(from_microcode), directByte = 53;
-- T <= from_YHi, trace(from_microcode), directByte = 53;
495 => X"54_20_3C_3D_20_66_72_6F_6D_5F_59_48_69_2C_20_74",

-- L1128@01F0 54203C3D2066726F6D5F594C6F2C2074.  T <= from_YLo, trace(from_microcode), directByte = 52;
-- T <= from_YLo, trace(from_microcode), directByte = 52;
496 => X"54_20_3C_3D_20_66_72_6F_6D_5F_59_4C_6F_2C_20_74",

-- L1129@01F1 54203C3D20726563616C6C2C20444247.  T <= recall, DBGINDEX <= crlf;
-- T <= recall, DBGINDEX <= crlf;
497 => X"54_20_3C_3D_20_72_65_63_61_6C_6C_2C_20_44_42_47",

-- L1130@01F2 74726163653A206966204442475F5245.trace:  if DBG_READY then next else repeat;
-- trace: if DBG_READY then next else repeat;
498 => X"74_72_61_63_65_3A_20_69_66_20_44_42_47_5F_52_45",

-- L1131@01F3 6966204442475F524541445920746865.  if DBG_READY then next else repeat;
-- if DBG_READY then next else repeat;
499 => X"69_66_20_44_42_47_5F_52_45_41_44_59_20_74_68_65",

-- L1132@01F4 444247494E444558203C3D207A65726F.  DBGINDEX <= zero, if true then return else continue;
-- DBGINDEX <= zero, if true then return else continue;
500 => X"44_42_47_49_4E_44_45_58_20_3C_3D_20_7A_65_72_6F",

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

