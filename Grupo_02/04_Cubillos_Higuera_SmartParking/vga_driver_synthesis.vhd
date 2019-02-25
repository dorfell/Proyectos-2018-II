--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: vga_driver_synthesis.vhd
-- /___/   /\     Timestamp: Wed Nov 21 11:52:20 2018
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm vga_driver -w -dir netgen/synthesis -ofmt vhdl -sim vga_driver.ngc vga_driver_synthesis.vhd 
-- Device	: xc3s500e-4-fg320
-- Input file	: vga_driver.ngc
-- Output file	: C:\Users\Jeny Carolina\Desktop\Oscar\Digital\VGA2.0.0\VGA2.0.0\netgen\synthesis\vga_driver_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: vga_driver
-- Xilinx	: C:\Xilinx\14.7\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity vga_driver is
  port (
    CLK : in STD_LOGIC := 'X'; 
    VSYNC : out STD_LOGIC; 
    RST : in STD_LOGIC := 'X'; 
    HSYNC : out STD_LOGIC; 
    RGB : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    color : in STD_LOGIC_VECTOR ( 2 downto 0 ); 
    texto : in STD_LOGIC_VECTOR ( 1 downto 0 ) 
  );
end vga_driver;

architecture Structure of vga_driver is
  signal CLK_BUFGP_1 : STD_LOGIC; 
  signal HSYNC_OBUF_3 : STD_LOGIC; 
  signal HSYNC_cmp_le0000 : STD_LOGIC; 
  signal HSYNC_or0000 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_0_1_7 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_0_10_8 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_0_11_9 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_0_12_10 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_0_13_11 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_0_14_12 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_0_15_13 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_0_16_14 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_0_17_15 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_0_18_16 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_0_19_17 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_0_2_18 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_0_20 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_0_3_20 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_0_4_21 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_0_5_22 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_0_6_23 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_0_7_24 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_0_8_25 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_0_9_26 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_0_10_rt_27 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_0_16_rt_28 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_0_17_rt_29 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_0_1_rt_30 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_0_2_rt_31 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_0_4_rt_32 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_0_6_rt_33 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_0_8_rt_34 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_0_9_rt_35 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_0_rt_36 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_10_1_38 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_10_10_39 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_10_11_40 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_10_12_41 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_10_13_42 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_10_14_43 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_10_2_44 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_10_3_45 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_10_4_46 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_10_5_47 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_10_6_48 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_10_7_49 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_10_8_50 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_10_9_51 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_11_1_53 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_11_2_54 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_11_3_55 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_12_1_57 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_12_2_58 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_12_3 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_1_1_61 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_1_10_62 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_1_11_63 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_1_12_64 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_1_13_65 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_1_14_66 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_1_15_67 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_1_16_68 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_1_17_69 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_1_18_70 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_1_19_71 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_1_2_72 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_1_20 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_1_3_74 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_1_4_75 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_1_5_76 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_1_6_77 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_1_7_78 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_1_8_79 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_1_9_80 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_2_1_82 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_2_10_83 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_2_11_84 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_2_12_85 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_2_13_86 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_2_14_87 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_2_15_88 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_2_16_89 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_2_17_90 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_2_18_91 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_2_19_92 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_2_2_93 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_2_20 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_2_3_95 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_2_4_96 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_2_5_97 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_2_6_98 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_2_7_99 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_2_8_100 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_2_9_101 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_2_10_rt_102 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_2_12_rt_103 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_2_14_rt_104 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_2_15_rt_105 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_2_17_rt_106 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_2_1_rt_107 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_2_2_rt_108 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_2_3_rt_109 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_2_4_rt_110 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_2_6_rt_111 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_2_7_rt_112 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_2_8_rt_113 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_2_9_rt_114 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_2_rt_115 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_3_1_117 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_3_10_118 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_3_11_119 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_3_12_120 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_3_13_121 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_3_14_122 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_3_15_123 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_3_16_124 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_3_17_125 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_3_18_126 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_3_19_127 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_3_2_128 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_3_20 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_3_3_130 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_3_4_131 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_3_5_132 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_3_6_133 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_3_7_134 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_3_8_135 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_3_9_136 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_4_1_138 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_4_10_139 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_4_11_140 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_4_12_141 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_4_13_142 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_4_14_143 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_4_15_144 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_4_16_145 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_4_17_146 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_4_18_147 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_4_19_148 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_4_2_149 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_4_20 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_4_3_151 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_4_4_152 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_4_5_153 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_4_6_154 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_4_7_155 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_4_8_156 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_4_9_157 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_4_11_rt_158 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_4_14_rt_159 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_4_15_rt_160 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_4_16_rt_161 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_4_17_rt_162 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_4_2_rt_163 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_4_4_rt_164 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_4_5_rt_165 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_4_6_rt_166 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_4_7_rt_167 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_4_9_rt_168 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_5_1_170 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_5_10_171 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_5_11_172 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_5_12_173 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_5_13_174 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_5_14_175 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_5_15_176 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_5_16_177 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_5_17_178 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_5_18_179 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_5_19_180 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_5_2_181 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_5_20 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_5_3_183 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_5_4_184 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_5_5_185 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_5_6_186 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_5_7_187 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_5_8_188 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_5_9_189 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_6_1_191 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_6_10_192 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_6_11_193 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_6_12_194 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_6_13_195 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_6_14_196 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_6_15_197 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_6_16_198 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_6_17_199 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_6_18_200 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_6_19_201 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_6_2_202 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_6_20 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_6_3_204 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_6_4_205 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_6_5_206 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_6_6_207 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_6_7_208 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_6_8_209 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_6_9_210 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_6_17_rt_211 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_6_2_rt_212 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_6_6_rt_213 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_6_9_rt_214 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_7_1_216 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_7_10_217 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_7_11_218 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_7_12_219 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_7_13_220 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_7_14_221 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_7_15_222 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_7_16_223 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_7_17_224 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_7_18_225 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_7_19_226 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_7_2_227 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_7_3_228 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_7_4_229 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_7_5_230 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_7_6_231 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_7_7_232 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_7_8_233 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_7_9_234 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_8_1_236 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_8_10_237 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_8_11_238 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_8_12_239 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_8_13_240 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_8_14_241 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_8_15_242 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_8_16_243 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_8_17_244 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_8_18_245 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_8_19 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_8_2_247 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_8_3_248 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_8_4_249 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_8_5_250 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_8_6_251 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_8_7_252 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_8_8_253 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_8_9_254 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_9_1_256 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_9_10_257 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_9_11_258 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_9_12_259 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_9_13_260 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_9_14_261 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_9_15_262 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_9_16_263 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_9_17_264 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_9_2_265 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_9_3_266 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_9_4_267 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_9_5_268 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_9_6_269 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_9_7_270 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_9_8_271 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy_9_9_272 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_0_1_274 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_0_10_275 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_0_2_276 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_0_3_277 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_0_4_278 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_0_5_279 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_0_6_280 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_0_7_281 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_0_8_282 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_0_9_283 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_10_1 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_10_10_286 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_10_11 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_10_12_288 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_10_13_289 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_10_14_290 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_10_15_291 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_10_16_292 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_10_17_293 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_10_2_294 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_10_3_295 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_10_4_296 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_10_5_297 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_10_6_298 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_10_7_299 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_10_8 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_10_9_301 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_11_1_303 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_11_10 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_11_11 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_11_12 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_11_13 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_11_14_308 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_11_2 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_11_3 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_11_4 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_11_5_312 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_11_6 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_11_7 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_11_8_315 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_11_9 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_12_1_318 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_12_2 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_12_3_320 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_13_1 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_13_2 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_13_3 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_1_1 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_1_10_327 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_1_11 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_1_12 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_1_13 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_1_14_331 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_1_15 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_1_16 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_1_17_334 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_1_18 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_1_19_336 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_1_2_337 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_1_20 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_1_3 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_1_4 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_1_5_341 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_1_6 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_1_7 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_1_8 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_1_9 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_2_1_347 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_2_2_348 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_2_3_349 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_2_4_350 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_2_5_351 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_2_6_352 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_3_1_354 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_3_10_355 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_3_11_356 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_3_12_357 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_3_13 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_3_14_359 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_3_15_360 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_3_16_361 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_3_17 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_3_18 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_3_19_364 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_3_2 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_3_20_366 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_3_3_367 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_3_4 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_3_5_369 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_3_6 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_3_7_371 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_3_8_372 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_3_9_373 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_4_1_375 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_4_2_376 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_4_3_377 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_4_4_378 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_4_5_379 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_4_6_380 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_4_7_381 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_4_8_382 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_4_9_383 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_5_1_385 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_5_10_386 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_5_11_387 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_5_12_388 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_5_13_389 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_5_14_390 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_5_15_391 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_5_16_392 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_5_17_393 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_5_18 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_5_19_395 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_5_2_396 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_5_20_397 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_5_3 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_5_4_399 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_5_5_400 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_5_6_401 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_5_7 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_5_8_403 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_5_9_404 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_6_1_406 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_6_10_407 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_6_11_408 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_6_12_409 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_6_13_410 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_6_14_411 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_6_15_412 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_6_16_413 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_6_2_414 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_6_3_415 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_6_4_416 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_6_5_417 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_6_6_418 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_6_7_419 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_6_8_420 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_6_9_421 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_7_1_423 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_7_10_424 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_7_11_425 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_7_12_426 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_7_13_427 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_7_14_428 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_7_15_429 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_7_16_430 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_7_17_431 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_7_18_432 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_7_19 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_7_2_434 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_7_20_435 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_7_3_436 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_7_4_437 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_7_5_438 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_7_6_439 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_7_7_440 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_7_8_441 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_7_9_442 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_8_1_444 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_8_10_445 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_8_11_446 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_8_12_447 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_8_13_448 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_8_14_449 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_8_15_450 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_8_16_451 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_8_17_452 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_8_18_453 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_8_19_454 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_8_2_455 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_8_3_456 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_8_4_457 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_8_5_458 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_8_6_459 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_8_7_460 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_8_8_461 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_8_9_462 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_9_1 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_9_10_465 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_9_11_466 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_9_12_467 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_9_13_468 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_9_14 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_9_15_470 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_9_16_471 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_9_17_472 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_9_18_473 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_9_19 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_9_2_475 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_9_3_476 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_9_4_477 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_9_5_478 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_9_6_479 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_9_7_480 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_9_8_481 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_lut_9_9_482 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0001_cy_0_1_484 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0001_cy_0_2_485 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0001_cy_0_3_486 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0001_cy_0_4_487 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0001_cy_0_5_488 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0001_cy_0_6 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0001_cy_0_1_rt_490 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0001_cy_0_4_rt_491 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0001_cy_0_rt_492 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0001_cy_10_1_494 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0001_cy_1_1_496 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0001_cy_1_2_497 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0001_cy_1_3_498 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0001_cy_1_4_499 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0001_cy_1_5_500 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0001_cy_1_6 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0001_cy_2_1_503 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0001_cy_2_2_504 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0001_cy_2_3_505 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0001_cy_2_4_506 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0001_cy_2_5_507 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0001_cy_2_6 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0001_cy_2_1_rt_509 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0001_cy_2_3_rt_510 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0001_cy_2_4_rt_511 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0001_cy_2_rt_512 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0001_cy_3_1_514 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0001_cy_3_2_515 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0001_cy_3_3_516 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0001_cy_3_4_517 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0001_cy_3_5_518 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0001_cy_3_6 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0001_cy_4_1_521 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0001_cy_4_2_522 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0001_cy_4_3_523 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0001_cy_4_4_524 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0001_cy_4_5_525 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0001_cy_4_6 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0001_cy_4_4_rt_527 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0001_cy_5_1_529 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0001_cy_5_2_530 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0001_cy_5_3_531 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0001_cy_5_4_532 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0001_cy_5_5_533 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0001_cy_5_6 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0001_cy_6_1_536 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0001_cy_6_2_537 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0001_cy_6_3_538 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0001_cy_6_4_539 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0001_cy_6_5_540 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0001_cy_6_6 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0001_cy_7_1_543 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0001_cy_7_2_544 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0001_cy_7_3_545 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0001_cy_7_4_546 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0001_cy_7_5_547 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0001_cy_8_1_549 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0001_cy_8_2_550 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0001_cy_8_3_551 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0001_cy_8_4_552 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0001_cy_8_5 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0001_cy_9_1_555 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0001_cy_9_2_556 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0001_lut_0_1_558 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0001_lut_0_2_559 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0001_lut_0_3_560 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0001_lut_10_1_562 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0001_lut_10_2_563 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0001_lut_11_1 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0001_lut_1_1 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0001_lut_1_2_568 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0001_lut_1_3_569 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0001_lut_1_4_570 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0001_lut_1_5_571 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0001_lut_1_6_572 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0001_lut_2_1_574 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0001_lut_2_2_575 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0001_lut_3_1_577 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0001_lut_3_2 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0001_lut_3_3_579 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0001_lut_3_4_580 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0001_lut_3_5_581 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0001_lut_3_6_582 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0001_lut_4_1_584 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0001_lut_4_2_585 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0001_lut_4_3_586 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0001_lut_4_4_587 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0001_lut_4_5_588 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0001_lut_5_1_590 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0001_lut_5_2_591 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0001_lut_5_3_592 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0001_lut_5_4_593 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0001_lut_5_5_594 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0001_lut_5_6_595 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0001_lut_6_1_597 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0001_lut_6_2_598 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0001_lut_6_3_599 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0001_lut_6_4_600 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0001_lut_6_5_601 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0001_lut_6_6_602 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0001_lut_7_1_604 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0001_lut_7_2_605 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0001_lut_7_3_606 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0001_lut_7_4_607 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0001_lut_7_5_608 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0001_lut_7_6 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0001_lut_8_1_611 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0001_lut_8_2_612 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0001_lut_8_3_613 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0001_lut_8_4_614 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0001_lut_8_5_615 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0001_lut_9_1 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0001_lut_9_2_618 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0001_lut_9_3 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0001_lut_9_4 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0001_lut_9_5_621 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_0_1_623 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_0_10 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_0_2_625 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_0_3_626 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_0_4_627 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_0_5_628 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_0_6_629 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_0_7_630 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_0_8_631 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_0_9_632 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_10_1_634 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_10_2_635 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_10_3_636 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_10_4_637 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_11_1_639 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_1_1_643 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_1_10 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_1_2_645 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_1_3_646 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_1_4_647 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_1_5_648 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_1_6_649 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_1_7_650 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_1_8_651 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_1_9_652 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_1_0_rt_653 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_1_3_rt_654 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_1_5_rt_655 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_1_8_rt_656 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_1_9_rt_657 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_1_rt_658 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_2_1_660 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_2_10 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_2_2_662 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_2_3_663 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_2_4_664 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_2_5_665 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_2_6_666 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_2_7_667 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_2_8_668 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_2_9_669 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_3_1_671 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_3_10 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_3_2_673 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_3_3_674 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_3_4_675 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_3_5_676 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_3_6_677 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_3_7_678 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_3_8_679 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_3_9_680 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_3_2_rt_681 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_3_8_rt_682 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_3_9_rt_683 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_4_1_685 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_4_10 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_4_2_687 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_4_3_688 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_4_4_689 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_4_5_690 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_4_6_691 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_4_7_692 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_4_8_693 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_4_9_694 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_4_3_rt_695 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_4_5_rt_696 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_5_1_698 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_5_10 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_5_2_700 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_5_3_701 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_5_4_702 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_5_5_703 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_5_6_704 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_5_7_705 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_5_8_706 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_5_9_707 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_5_9_rt_708 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_6_1_710 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_6_10 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_6_2_712 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_6_3_713 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_6_4_714 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_6_5_715 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_6_6_716 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_6_7_717 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_6_8_718 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_6_9_719 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_7_1_721 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_7_10 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_7_2_723 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_7_3_724 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_7_4_725 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_7_5_726 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_7_6_727 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_7_7_728 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_7_8_729 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_7_9_730 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_7_9_rt_731 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_8_1_733 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_8_2_734 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_8_3_735 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_8_4_736 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_8_5_737 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_8_6_738 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_8_7_739 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_8_8_740 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_9_1_742 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_9_2_743 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_9_3_744 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_9_4_745 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_9_5_746 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_9_6_747 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_cy_9_7_748 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_lut_0_1 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_lut_0_10_751 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_lut_0_2 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_lut_0_3 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_lut_0_4_754 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_lut_0_5_755 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_lut_0_6 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_lut_0_7_757 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_lut_0_8 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_lut_0_9_759 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_lut_10_1 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_lut_10_2_762 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_lut_10_3_763 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_lut_10_4_764 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_lut_10_5 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_lut_10_6 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_lut_10_7_767 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_lut_11_1 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_lut_11_2 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_lut_11_3_771 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_lut_12_1_773 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_lut_1_1_777 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_lut_1_2_778 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_lut_1_3_779 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_lut_1_4_780 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_lut_2_1 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_lut_2_10 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_lut_2_2_784 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_lut_2_3 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_lut_2_4_786 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_lut_2_5_787 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_lut_2_6 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_lut_2_7_789 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_lut_2_8_790 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_lut_2_9_791 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_lut_3_1_793 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_lut_3_2_794 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_lut_3_3 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_lut_3_4_796 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_lut_3_5_797 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_lut_3_6_798 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_lut_3_7_799 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_lut_4_1_801 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_lut_4_2_802 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_lut_4_3 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_lut_4_4_804 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_lut_4_5_805 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_lut_4_6_806 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_lut_4_7_807 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_lut_4_8 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_lut_5_1_810 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_lut_5_2_811 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_lut_5_3_812 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_lut_5_4_813 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_lut_5_5_814 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_lut_5_6_815 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_lut_5_7_816 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_lut_5_8_817 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_lut_5_9_818 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_lut_6_1_820 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_lut_6_10 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_lut_6_2_822 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_lut_6_3_823 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_lut_6_4_824 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_lut_6_5_825 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_lut_6_6_826 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_lut_6_7_827 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_lut_6_8_828 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_lut_6_9_829 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_lut_7_1_831 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_lut_7_2_832 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_lut_7_3_833 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_lut_7_4_834 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_lut_7_5_835 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_lut_7_6_836 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_lut_7_7_837 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_lut_7_8_838 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_lut_7_9_839 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_lut_8_1_841 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_lut_8_10_842 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_lut_8_2 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_lut_8_3_844 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_lut_8_4_845 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_lut_8_5 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_lut_8_6_847 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_lut_8_7 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_lut_8_8_849 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_lut_8_9_850 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_lut_9_1_852 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_lut_9_2_853 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_lut_9_3_854 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_lut_9_4 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_lut_9_5_856 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_lut_9_6_857 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_lut_9_7_858 : STD_LOGIC; 
  signal Mcompar_VSYNC_cmp_le0000_lut_9_8_859 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_0_1_861 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_0_10_862 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_0_11_863 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_0_12_864 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_0_13_865 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_0_14_866 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_0_15_867 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_0_16_868 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_0_17_869 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_0_18_870 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_0_19_871 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_0_2_872 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_0_20_873 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_0_21_874 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_0_22_875 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_0_23_876 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_0_24 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_0_3_878 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_0_4_879 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_0_5_880 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_0_6_881 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_0_7_882 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_0_8_883 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_0_9_884 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_10_1_886 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_10_10_887 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_10_11_888 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_10_2_889 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_10_3_890 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_10_4_891 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_10_5_892 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_10_6_893 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_10_7_894 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_10_8_895 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_10_9_896 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_11_1_898 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_11_2_899 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_11_3_900 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_11_4_901 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_11_5_902 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_11_6_903 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_11_7_904 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_11_8_905 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_11_9_906 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_12_1_908 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_13_1 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_1_1_912 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_1_10_913 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_1_11_914 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_1_12_915 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_1_13_916 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_1_14_917 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_1_15_918 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_1_16_919 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_1_17_920 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_1_18_921 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_1_19_922 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_1_2_923 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_1_20_924 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_1_21_925 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_1_22_926 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_1_23_927 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_1_24 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_1_3_929 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_1_4_930 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_1_5_931 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_1_6_932 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_1_7_933 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_1_8_934 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_1_9_935 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_1_12_rt_936 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_1_13_rt_937 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_1_14_rt_938 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_1_15_rt_939 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_1_16_rt_940 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_1_17_rt_941 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_1_1_rt_942 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_1_20_rt_943 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_1_21_rt_944 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_1_22_rt_945 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_1_3_rt_946 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_1_4_rt_947 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_1_6_rt_948 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_1_8_rt_949 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_1_9_rt_950 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_1_rt_951 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_2_1_953 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_2_10_954 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_2_11_955 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_2_12_956 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_2_13_957 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_2_14_958 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_2_15_959 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_2_16_960 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_2_17_961 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_2_18_962 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_2_19_963 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_2_2_964 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_2_20_965 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_2_21_966 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_2_22_967 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_2_23_968 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_2_24 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_2_3_970 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_2_4_971 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_2_5_972 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_2_6_973 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_2_7_974 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_2_8_975 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_2_9_976 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_3_1_978 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_3_10_979 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_3_11_980 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_3_12_981 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_3_13_982 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_3_14_983 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_3_15_984 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_3_16_985 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_3_17_986 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_3_18_987 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_3_19_988 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_3_2_989 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_3_20_990 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_3_21_991 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_3_22_992 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_3_23_993 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_3_24 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_3_3_995 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_3_4_996 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_3_5_997 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_3_6_998 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_3_7_999 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_3_8_1000 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_3_9_1001 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_3_10_rt_1002 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_3_12_rt_1003 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_3_13_rt_1004 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_3_14_rt_1005 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_3_16_rt_1006 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_3_17_rt_1007 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_3_18_rt_1008 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_3_19_rt_1009 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_3_20_rt_1010 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_3_22_rt_1011 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_3_23_rt_1012 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_3_2_rt_1013 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_3_4_rt_1014 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_3_5_rt_1015 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_3_6_rt_1016 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_3_8_rt_1017 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_3_9_rt_1018 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_4_1_1020 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_4_10_1021 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_4_11_1022 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_4_12_1023 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_4_13_1024 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_4_14_1025 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_4_15_1026 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_4_16_1027 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_4_17_1028 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_4_18_1029 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_4_19_1030 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_4_2_1031 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_4_20_1032 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_4_21_1033 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_4_22_1034 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_4_23_1035 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_4_24 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_4_3_1037 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_4_4_1038 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_4_5_1039 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_4_6_1040 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_4_7_1041 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_4_8_1042 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_4_9_1043 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_4_21_rt_1044 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_5_1_1046 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_5_10_1047 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_5_11_1048 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_5_12_1049 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_5_13_1050 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_5_14_1051 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_5_15_1052 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_5_16_1053 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_5_17_1054 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_5_18_1055 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_5_19_1056 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_5_2_1057 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_5_20_1058 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_5_21_1059 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_5_22_1060 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_5_23_1061 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_5_24 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_5_3_1063 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_5_4_1064 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_5_5_1065 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_5_6_1066 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_5_7_1067 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_5_8_1068 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_5_9_1069 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_5_11_rt_1070 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_5_12_rt_1071 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_5_14_rt_1072 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_5_16_rt_1073 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_5_9_rt_1074 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_6_1_1076 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_6_10_1077 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_6_11_1078 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_6_12_1079 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_6_13_1080 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_6_14_1081 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_6_15_1082 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_6_16_1083 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_6_17_1084 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_6_18_1085 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_6_19_1086 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_6_2_1087 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_6_20_1088 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_6_21_1089 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_6_22_1090 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_6_23_1091 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_6_24 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_6_3_1093 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_6_4_1094 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_6_5_1095 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_6_6_1096 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_6_7_1097 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_6_8_1098 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_6_9_1099 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_7_1_1101 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_7_10_1102 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_7_11_1103 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_7_12_1104 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_7_13_1105 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_7_14_1106 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_7_15_1107 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_7_16_1108 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_7_17_1109 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_7_18_1110 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_7_19_1111 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_7_2_1112 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_7_20_1113 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_7_21_1114 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_7_22_1115 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_7_23_1116 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_7_24 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_7_3_1118 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_7_4_1119 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_7_5_1120 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_7_6_1121 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_7_7_1122 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_7_8_1123 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_7_9_1124 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_7_12_rt_1125 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_7_14_rt_1126 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_8_1_1128 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_8_10_1129 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_8_11_1130 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_8_12_1131 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_8_13_1132 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_8_14_1133 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_8_15_1134 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_8_16_1135 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_8_17_1136 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_8_18_1137 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_8_19_1138 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_8_2_1139 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_8_20_1140 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_8_21_1141 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_8_22_1142 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_8_23_1143 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_8_3_1144 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_8_4_1145 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_8_5_1146 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_8_6_1147 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_8_7_1148 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_8_8_1149 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_8_9_1150 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_9_1_1152 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_9_10_1153 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_9_11_1154 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_9_12_1155 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_9_13_1156 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_9_14_1157 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_9_15_1158 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_9_16_1159 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_9_17_1160 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_9_18_1161 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_9_19_1162 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_9_2_1163 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_9_20_1164 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_9_21_1165 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_9_22_1166 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_9_3_1167 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_9_4_1168 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_9_5_1169 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_9_6_1170 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_9_7_1171 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_9_8_1172 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_cy_9_9_1173 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_0_1 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_0_10_1176 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_0_11 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_0_12 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_0_13 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_0_14 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_0_15 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_0_16 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_0_17 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_0_18_1184 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_0_19 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_0_2_1186 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_0_20 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_0_21_1188 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_0_22_1189 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_0_23_1190 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_0_24 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_0_3 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_0_4 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_0_5_1194 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_0_6 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_0_7_1196 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_0_8 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_0_9 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_10_1 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_10_10_1201 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_10_11_1202 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_10_12_1203 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_10_13_1204 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_10_14_1205 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_10_15_1206 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_10_16_1207 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_10_17 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_10_18_1209 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_10_19 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_10_2 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_10_20 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_10_21 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_10_22 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_10_3 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_10_4 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_10_5_1217 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_10_6 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_10_7 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_10_8_1220 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_10_9 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_11_1 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_11_10 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_11_2 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_11_3_1226 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_11_4_1227 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_11_5_1228 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_11_6_1229 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_11_7_1230 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_11_8_1231 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_11_9_1232 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_12_1 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_12_2 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_12_3_1236 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_12_4 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_12_5_1238 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_12_6 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_12_7 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_12_8 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_12_9 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_13_1_1244 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_14_1 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_1_1_1248 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_1_2_1249 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_1_3_1250 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_1_4_1251 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_1_5_1252 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_1_6_1253 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_1_7_1254 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_1_8_1255 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_2_1_1257 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_2_10_1258 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_2_11_1259 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_2_12 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_2_13 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_2_14 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_2_15 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_2_16 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_2_17 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_2_18_1266 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_2_19_1267 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_2_2 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_2_20 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_2_21_1270 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_2_22_1271 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_2_23 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_2_24 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_2_3_1274 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_2_4 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_2_5_1276 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_2_6_1277 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_2_7 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_2_8 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_2_9_1280 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_3_1_1282 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_3_2_1283 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_3_3_1284 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_3_4_1285 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_3_5_1286 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_3_6_1287 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_3_7 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_4_1_1290 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_4_10_1291 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_4_11_1292 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_4_12_1293 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_4_13_1294 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_4_14 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_4_15 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_4_16_1297 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_4_17 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_4_18 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_4_19_1300 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_4_2_1301 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_4_20 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_4_21_1303 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_4_22_1304 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_4_23_1305 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_4_3_1306 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_4_4_1307 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_4_5_1308 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_4_6_1309 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_4_7 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_4_8_1311 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_4_9_1312 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_5_1_1314 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_5_10_1315 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_5_11_1316 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_5_12_1317 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_5_13_1318 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_5_14_1319 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_5_15_1320 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_5_16_1321 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_5_17_1322 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_5_18_1323 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_5_19_1324 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_5_2_1325 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_5_3_1326 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_5_4_1327 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_5_5_1328 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_5_6_1329 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_5_7_1330 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_5_8_1331 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_5_9_1332 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_6_1_1334 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_6_10_1335 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_6_11_1336 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_6_12_1337 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_6_13 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_6_14_1339 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_6_15 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_6_16_1341 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_6_17_1342 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_6_18_1343 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_6_19_1344 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_6_2_1345 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_6_20_1346 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_6_21_1347 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_6_22_1348 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_6_23_1349 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_6_24_1350 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_6_3_1351 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_6_4_1352 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_6_5_1353 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_6_6_1354 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_6_7_1355 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_6_8_1356 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_6_9_1357 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_7_1_1359 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_7_10_1360 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_7_11_1361 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_7_12_1362 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_7_13_1363 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_7_14_1364 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_7_15_1365 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_7_16_1366 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_7_17_1367 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_7_18_1368 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_7_19_1369 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_7_2_1370 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_7_20_1371 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_7_21_1372 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_7_22_1373 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_7_3_1374 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_7_4_1375 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_7_5_1376 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_7_6_1377 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_7_7_1378 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_7_8_1379 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_7_9_1380 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_8_1 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_8_10_1383 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_8_11_1384 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_8_12_1385 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_8_13_1386 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_8_14_1387 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_8_15_1388 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_8_16_1389 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_8_17_1390 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_8_18_1391 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_8_19_1392 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_8_2_1393 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_8_20_1394 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_8_21_1395 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_8_22_1396 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_8_23_1397 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_8_24_1398 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_8_3_1399 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_8_4_1400 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_8_5_1401 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_8_6_1402 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_8_7_1403 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_8_8_1404 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_8_9_1405 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_9_1_1407 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_9_10 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_9_11_1409 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_9_12_1410 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_9_13_1411 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_9_14_1412 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_9_15_1413 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_9_16_1414 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_9_17_1415 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_9_18_1416 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_9_19_1417 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_9_2_1418 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_9_20_1419 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_9_21_1420 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_9_22 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_9_23 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_9_3_1423 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_9_4_1424 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_9_5_1425 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_9_6_1426 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_9_7_1427 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_9_8 : STD_LOGIC; 
  signal Mcompar_videoOn_cmp_le0000_lut_9_9_1429 : STD_LOGIC; 
  signal Mcount_hPos_cy_10_rt_1432 : STD_LOGIC; 
  signal Mcount_hPos_cy_11_rt_1434 : STD_LOGIC; 
  signal Mcount_hPos_cy_12_rt_1436 : STD_LOGIC; 
  signal Mcount_hPos_cy_13_rt_1438 : STD_LOGIC; 
  signal Mcount_hPos_cy_14_rt_1440 : STD_LOGIC; 
  signal Mcount_hPos_cy_15_rt_1442 : STD_LOGIC; 
  signal Mcount_hPos_cy_16_rt_1444 : STD_LOGIC; 
  signal Mcount_hPos_cy_17_rt_1446 : STD_LOGIC; 
  signal Mcount_hPos_cy_18_rt_1448 : STD_LOGIC; 
  signal Mcount_hPos_cy_19_rt_1450 : STD_LOGIC; 
  signal Mcount_hPos_cy_1_rt_1452 : STD_LOGIC; 
  signal Mcount_hPos_cy_20_rt_1454 : STD_LOGIC; 
  signal Mcount_hPos_cy_21_rt_1456 : STD_LOGIC; 
  signal Mcount_hPos_cy_22_rt_1458 : STD_LOGIC; 
  signal Mcount_hPos_cy_23_rt_1460 : STD_LOGIC; 
  signal Mcount_hPos_cy_24_rt_1462 : STD_LOGIC; 
  signal Mcount_hPos_cy_25_rt_1464 : STD_LOGIC; 
  signal Mcount_hPos_cy_26_rt_1466 : STD_LOGIC; 
  signal Mcount_hPos_cy_27_rt_1468 : STD_LOGIC; 
  signal Mcount_hPos_cy_28_rt_1470 : STD_LOGIC; 
  signal Mcount_hPos_cy_29_rt_1472 : STD_LOGIC; 
  signal Mcount_hPos_cy_2_rt_1474 : STD_LOGIC; 
  signal Mcount_hPos_cy_30_rt_1476 : STD_LOGIC; 
  signal Mcount_hPos_cy_3_rt_1478 : STD_LOGIC; 
  signal Mcount_hPos_cy_4_rt_1480 : STD_LOGIC; 
  signal Mcount_hPos_cy_5_rt_1482 : STD_LOGIC; 
  signal Mcount_hPos_cy_6_rt_1484 : STD_LOGIC; 
  signal Mcount_hPos_cy_7_rt_1486 : STD_LOGIC; 
  signal Mcount_hPos_cy_8_rt_1488 : STD_LOGIC; 
  signal Mcount_hPos_cy_9_rt_1490 : STD_LOGIC; 
  signal Mcount_hPos_eqn_0 : STD_LOGIC; 
  signal Mcount_hPos_eqn_1 : STD_LOGIC; 
  signal Mcount_hPos_eqn_10 : STD_LOGIC; 
  signal Mcount_hPos_eqn_11 : STD_LOGIC; 
  signal Mcount_hPos_eqn_12 : STD_LOGIC; 
  signal Mcount_hPos_eqn_13 : STD_LOGIC; 
  signal Mcount_hPos_eqn_14 : STD_LOGIC; 
  signal Mcount_hPos_eqn_15 : STD_LOGIC; 
  signal Mcount_hPos_eqn_16 : STD_LOGIC; 
  signal Mcount_hPos_eqn_17 : STD_LOGIC; 
  signal Mcount_hPos_eqn_18 : STD_LOGIC; 
  signal Mcount_hPos_eqn_19 : STD_LOGIC; 
  signal Mcount_hPos_eqn_2 : STD_LOGIC; 
  signal Mcount_hPos_eqn_20 : STD_LOGIC; 
  signal Mcount_hPos_eqn_21 : STD_LOGIC; 
  signal Mcount_hPos_eqn_22 : STD_LOGIC; 
  signal Mcount_hPos_eqn_23 : STD_LOGIC; 
  signal Mcount_hPos_eqn_24 : STD_LOGIC; 
  signal Mcount_hPos_eqn_25 : STD_LOGIC; 
  signal Mcount_hPos_eqn_26 : STD_LOGIC; 
  signal Mcount_hPos_eqn_27 : STD_LOGIC; 
  signal Mcount_hPos_eqn_28 : STD_LOGIC; 
  signal Mcount_hPos_eqn_29 : STD_LOGIC; 
  signal Mcount_hPos_eqn_3 : STD_LOGIC; 
  signal Mcount_hPos_eqn_30 : STD_LOGIC; 
  signal Mcount_hPos_eqn_31 : STD_LOGIC; 
  signal Mcount_hPos_eqn_4 : STD_LOGIC; 
  signal Mcount_hPos_eqn_5 : STD_LOGIC; 
  signal Mcount_hPos_eqn_6 : STD_LOGIC; 
  signal Mcount_hPos_eqn_7 : STD_LOGIC; 
  signal Mcount_hPos_eqn_8 : STD_LOGIC; 
  signal Mcount_hPos_eqn_9 : STD_LOGIC; 
  signal Mcount_hPos_xor_31_rt_1524 : STD_LOGIC; 
  signal Mcount_vPos_cy_10_rt_1527 : STD_LOGIC; 
  signal Mcount_vPos_cy_11_rt_1529 : STD_LOGIC; 
  signal Mcount_vPos_cy_12_rt_1531 : STD_LOGIC; 
  signal Mcount_vPos_cy_13_rt_1533 : STD_LOGIC; 
  signal Mcount_vPos_cy_14_rt_1535 : STD_LOGIC; 
  signal Mcount_vPos_cy_15_rt_1537 : STD_LOGIC; 
  signal Mcount_vPos_cy_16_rt_1539 : STD_LOGIC; 
  signal Mcount_vPos_cy_17_rt_1541 : STD_LOGIC; 
  signal Mcount_vPos_cy_18_rt_1543 : STD_LOGIC; 
  signal Mcount_vPos_cy_19_rt_1545 : STD_LOGIC; 
  signal Mcount_vPos_cy_1_rt_1547 : STD_LOGIC; 
  signal Mcount_vPos_cy_20_rt_1549 : STD_LOGIC; 
  signal Mcount_vPos_cy_21_rt_1551 : STD_LOGIC; 
  signal Mcount_vPos_cy_22_rt_1553 : STD_LOGIC; 
  signal Mcount_vPos_cy_23_rt_1555 : STD_LOGIC; 
  signal Mcount_vPos_cy_24_rt_1557 : STD_LOGIC; 
  signal Mcount_vPos_cy_25_rt_1559 : STD_LOGIC; 
  signal Mcount_vPos_cy_26_rt_1561 : STD_LOGIC; 
  signal Mcount_vPos_cy_27_rt_1563 : STD_LOGIC; 
  signal Mcount_vPos_cy_28_rt_1565 : STD_LOGIC; 
  signal Mcount_vPos_cy_29_rt_1567 : STD_LOGIC; 
  signal Mcount_vPos_cy_2_rt_1569 : STD_LOGIC; 
  signal Mcount_vPos_cy_30_rt_1571 : STD_LOGIC; 
  signal Mcount_vPos_cy_3_rt_1573 : STD_LOGIC; 
  signal Mcount_vPos_cy_4_rt_1575 : STD_LOGIC; 
  signal Mcount_vPos_cy_5_rt_1577 : STD_LOGIC; 
  signal Mcount_vPos_cy_6_rt_1579 : STD_LOGIC; 
  signal Mcount_vPos_cy_7_rt_1581 : STD_LOGIC; 
  signal Mcount_vPos_cy_8_rt_1583 : STD_LOGIC; 
  signal Mcount_vPos_cy_9_rt_1585 : STD_LOGIC; 
  signal Mcount_vPos_eqn_0 : STD_LOGIC; 
  signal Mcount_vPos_eqn_1 : STD_LOGIC; 
  signal Mcount_vPos_eqn_10 : STD_LOGIC; 
  signal Mcount_vPos_eqn_11 : STD_LOGIC; 
  signal Mcount_vPos_eqn_12 : STD_LOGIC; 
  signal Mcount_vPos_eqn_13 : STD_LOGIC; 
  signal Mcount_vPos_eqn_14 : STD_LOGIC; 
  signal Mcount_vPos_eqn_15 : STD_LOGIC; 
  signal Mcount_vPos_eqn_16 : STD_LOGIC; 
  signal Mcount_vPos_eqn_17 : STD_LOGIC; 
  signal Mcount_vPos_eqn_18 : STD_LOGIC; 
  signal Mcount_vPos_eqn_19 : STD_LOGIC; 
  signal Mcount_vPos_eqn_2 : STD_LOGIC; 
  signal Mcount_vPos_eqn_20 : STD_LOGIC; 
  signal Mcount_vPos_eqn_21 : STD_LOGIC; 
  signal Mcount_vPos_eqn_22 : STD_LOGIC; 
  signal Mcount_vPos_eqn_23 : STD_LOGIC; 
  signal Mcount_vPos_eqn_24 : STD_LOGIC; 
  signal Mcount_vPos_eqn_25 : STD_LOGIC; 
  signal Mcount_vPos_eqn_26 : STD_LOGIC; 
  signal Mcount_vPos_eqn_27 : STD_LOGIC; 
  signal Mcount_vPos_eqn_28 : STD_LOGIC; 
  signal Mcount_vPos_eqn_29 : STD_LOGIC; 
  signal Mcount_vPos_eqn_3 : STD_LOGIC; 
  signal Mcount_vPos_eqn_30 : STD_LOGIC; 
  signal Mcount_vPos_eqn_31 : STD_LOGIC; 
  signal Mcount_vPos_eqn_4 : STD_LOGIC; 
  signal Mcount_vPos_eqn_5 : STD_LOGIC; 
  signal Mcount_vPos_eqn_6 : STD_LOGIC; 
  signal Mcount_vPos_eqn_7 : STD_LOGIC; 
  signal Mcount_vPos_eqn_8 : STD_LOGIC; 
  signal Mcount_vPos_eqn_9 : STD_LOGIC; 
  signal Mcount_vPos_xor_31_rt_1619 : STD_LOGIC; 
  signal N0 : STD_LOGIC; 
  signal N01 : STD_LOGIC; 
  signal N1 : STD_LOGIC; 
  signal N12 : STD_LOGIC; 
  signal N14 : STD_LOGIC; 
  signal N15 : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal N23 : STD_LOGIC; 
  signal N25 : STD_LOGIC; 
  signal N27 : STD_LOGIC; 
  signal N29 : STD_LOGIC; 
  signal N31 : STD_LOGIC; 
  signal N33 : STD_LOGIC; 
  signal N34 : STD_LOGIC; 
  signal N36 : STD_LOGIC; 
  signal N38 : STD_LOGIC; 
  signal N4 : STD_LOGIC; 
  signal N40 : STD_LOGIC; 
  signal N41 : STD_LOGIC; 
  signal N42 : STD_LOGIC; 
  signal N43 : STD_LOGIC; 
  signal N45 : STD_LOGIC; 
  signal N46 : STD_LOGIC; 
  signal N48 : STD_LOGIC; 
  signal N5 : STD_LOGIC; 
  signal N50 : STD_LOGIC; 
  signal N51 : STD_LOGIC; 
  signal N52 : STD_LOGIC; 
  signal N53 : STD_LOGIC; 
  signal N54 : STD_LOGIC; 
  signal N55 : STD_LOGIC; 
  signal N6 : STD_LOGIC; 
  signal N61 : STD_LOGIC; 
  signal N8 : STD_LOGIC; 
  signal N9 : STD_LOGIC; 
  signal RGB_0_1663 : STD_LOGIC; 
  signal RGB_0_rstpot_1664 : STD_LOGIC; 
  signal RGB_1_1665 : STD_LOGIC; 
  signal RGB_1_rstpot_1666 : STD_LOGIC; 
  signal RGB_2_1667 : STD_LOGIC; 
  signal RGB_2_rstpot_1668 : STD_LOGIC; 
  signal RGB_3_1669 : STD_LOGIC; 
  signal RGB_3_rstpot_1670 : STD_LOGIC; 
  signal RGB_4_1671 : STD_LOGIC; 
  signal RGB_4_rstpot_1672 : STD_LOGIC; 
  signal RGB_7_1673 : STD_LOGIC; 
  signal RGB_7_rstpot_1674 : STD_LOGIC; 
  signal RGB_and0025 : STD_LOGIC; 
  signal RGB_cmp_ge0000 : STD_LOGIC; 
  signal RGB_cmp_ge0001 : STD_LOGIC; 
  signal RGB_cmp_ge0002 : STD_LOGIC; 
  signal RGB_cmp_ge0003 : STD_LOGIC; 
  signal RGB_cmp_ge0004 : STD_LOGIC; 
  signal RGB_cmp_ge0005 : STD_LOGIC; 
  signal RGB_cmp_ge0006 : STD_LOGIC; 
  signal RGB_cmp_ge0007 : STD_LOGIC; 
  signal RGB_cmp_ge0008 : STD_LOGIC; 
  signal RGB_cmp_ge0009 : STD_LOGIC; 
  signal RGB_cmp_ge0010 : STD_LOGIC; 
  signal RGB_cmp_ge0011 : STD_LOGIC; 
  signal RGB_cmp_ge0012 : STD_LOGIC; 
  signal RGB_cmp_ge0013 : STD_LOGIC; 
  signal RGB_cmp_ge0014 : STD_LOGIC; 
  signal RGB_cmp_ge0015 : STD_LOGIC; 
  signal RGB_cmp_ge0016 : STD_LOGIC; 
  signal RGB_cmp_ge0017 : STD_LOGIC; 
  signal RGB_cmp_ge0018 : STD_LOGIC; 
  signal RGB_cmp_ge0019 : STD_LOGIC; 
  signal RGB_cmp_ge0020 : STD_LOGIC; 
  signal RGB_cmp_ge0021 : STD_LOGIC; 
  signal RGB_cmp_ge0022 : STD_LOGIC; 
  signal RGB_cmp_ge0023 : STD_LOGIC; 
  signal RGB_cmp_ge0024 : STD_LOGIC; 
  signal RGB_cmp_ge0025 : STD_LOGIC; 
  signal RGB_cmp_ge0026 : STD_LOGIC; 
  signal RGB_cmp_ge0027 : STD_LOGIC; 
  signal RGB_cmp_le0000 : STD_LOGIC; 
  signal RGB_cmp_le0001 : STD_LOGIC; 
  signal RGB_cmp_le0002 : STD_LOGIC; 
  signal RGB_cmp_le0003 : STD_LOGIC; 
  signal RGB_cmp_le0004 : STD_LOGIC; 
  signal RGB_cmp_le0005 : STD_LOGIC; 
  signal RGB_cmp_le0006 : STD_LOGIC; 
  signal RGB_cmp_le0007 : STD_LOGIC; 
  signal RGB_cmp_le0008 : STD_LOGIC; 
  signal RGB_cmp_le0009 : STD_LOGIC; 
  signal RGB_cmp_le0010 : STD_LOGIC; 
  signal RGB_cmp_le0011 : STD_LOGIC; 
  signal RGB_cmp_le0012 : STD_LOGIC; 
  signal RGB_cmp_le0013 : STD_LOGIC; 
  signal RGB_cmp_le0017 : STD_LOGIC; 
  signal RGB_cmp_le0018 : STD_LOGIC; 
  signal RGB_cmp_le0019 : STD_LOGIC; 
  signal RGB_cmp_le0020 : STD_LOGIC; 
  signal RGB_cmp_le0021 : STD_LOGIC; 
  signal RGB_cmp_le0022 : STD_LOGIC; 
  signal RGB_cmp_le0023 : STD_LOGIC; 
  signal RGB_cmp_le0024 : STD_LOGIC; 
  signal RGB_cmp_le0025 : STD_LOGIC; 
  signal RGB_cmp_le0026 : STD_LOGIC; 
  signal RGB_cmp_le0027 : STD_LOGIC; 
  signal RGB_cmp_le0028 : STD_LOGIC; 
  signal RGB_cmp_le0029 : STD_LOGIC; 
  signal RGB_cmp_le0030 : STD_LOGIC; 
  signal RGB_cmp_le0031 : STD_LOGIC; 
  signal RGB_cmp_le0032 : STD_LOGIC; 
  signal RGB_mux0007_0_312_1734 : STD_LOGIC; 
  signal RGB_mux0007_0_325_1735 : STD_LOGIC; 
  signal RGB_mux0007_0_515_1736 : STD_LOGIC; 
  signal RGB_mux0007_0_517_1737 : STD_LOGIC; 
  signal RGB_mux0007_0_525_1738 : STD_LOGIC; 
  signal RGB_mux0007_0_54_1739 : STD_LOGIC; 
  signal RGB_mux0007_0_541_1740 : STD_LOGIC; 
  signal RGB_mux0007_0_558_1741 : STD_LOGIC; 
  signal RGB_mux0007_7_1_1742 : STD_LOGIC; 
  signal RGB_mux0007_7_8_1743 : STD_LOGIC; 
  signal RGB_not0001 : STD_LOGIC; 
  signal RGB_not000119_1745 : STD_LOGIC; 
  signal RGB_not00017_1746 : STD_LOGIC; 
  signal RGB_or000215_1747 : STD_LOGIC; 
  signal RGB_or000217_1748 : STD_LOGIC; 
  signal RGB_or000229_1749 : STD_LOGIC; 
  signal RGB_or000234_1750 : STD_LOGIC; 
  signal RGB_or00024_1751 : STD_LOGIC; 
  signal RGB_or000250_1752 : STD_LOGIC; 
  signal RGB_or000266_1753 : STD_LOGIC; 
  signal RGB_or000279_1754 : STD_LOGIC; 
  signal RGB_or000287_1755 : STD_LOGIC; 
  signal RST_IBUF_1757 : STD_LOGIC; 
  signal Result_0_1 : STD_LOGIC; 
  signal Result_10_1 : STD_LOGIC; 
  signal Result_11_1 : STD_LOGIC; 
  signal Result_12_1 : STD_LOGIC; 
  signal Result_13_1 : STD_LOGIC; 
  signal Result_14_1 : STD_LOGIC; 
  signal Result_15_1 : STD_LOGIC; 
  signal Result_16_1 : STD_LOGIC; 
  signal Result_17_1 : STD_LOGIC; 
  signal Result_18_1 : STD_LOGIC; 
  signal Result_19_1 : STD_LOGIC; 
  signal Result_1_1 : STD_LOGIC; 
  signal Result_20_1 : STD_LOGIC; 
  signal Result_21_1 : STD_LOGIC; 
  signal Result_22_1 : STD_LOGIC; 
  signal Result_23_1 : STD_LOGIC; 
  signal Result_24_1 : STD_LOGIC; 
  signal Result_25_1 : STD_LOGIC; 
  signal Result_26_1 : STD_LOGIC; 
  signal Result_27_1 : STD_LOGIC; 
  signal Result_28_1 : STD_LOGIC; 
  signal Result_29_1 : STD_LOGIC; 
  signal Result_2_1 : STD_LOGIC; 
  signal Result_30_1 : STD_LOGIC; 
  signal Result_31_1 : STD_LOGIC; 
  signal Result_3_1 : STD_LOGIC; 
  signal Result_4_1 : STD_LOGIC; 
  signal Result_5_1 : STD_LOGIC; 
  signal Result_6_1 : STD_LOGIC; 
  signal Result_7_1 : STD_LOGIC; 
  signal Result_8_1 : STD_LOGIC; 
  signal Result_9_1 : STD_LOGIC; 
  signal VSYNC_OBUF_1823 : STD_LOGIC; 
  signal VSYNC_cmp_le0000 : STD_LOGIC; 
  signal VSYNC_or0000 : STD_LOGIC; 
  signal clk25_1826 : STD_LOGIC; 
  signal clk251 : STD_LOGIC; 
  signal color_0_IBUF_1831 : STD_LOGIC; 
  signal color_1_IBUF_1832 : STD_LOGIC; 
  signal color_2_IBUF_1833 : STD_LOGIC; 
  signal hPos_0_1_1835 : STD_LOGIC; 
  signal hPos_0_2_1836 : STD_LOGIC; 
  signal hPos_10_1_1839 : STD_LOGIC; 
  signal hPos_11_1_1841 : STD_LOGIC; 
  signal hPos_12_1_1843 : STD_LOGIC; 
  signal hPos_13_1_1845 : STD_LOGIC; 
  signal hPos_14_1_1847 : STD_LOGIC; 
  signal hPos_15_1_1849 : STD_LOGIC; 
  signal hPos_16_1_1851 : STD_LOGIC; 
  signal hPos_17_1_1853 : STD_LOGIC; 
  signal hPos_18_1_1855 : STD_LOGIC; 
  signal hPos_19_1_1857 : STD_LOGIC; 
  signal hPos_1_1_1858 : STD_LOGIC; 
  signal hPos_1_2_1859 : STD_LOGIC; 
  signal hPos_20_1_1862 : STD_LOGIC; 
  signal hPos_21_1_1864 : STD_LOGIC; 
  signal hPos_22_1_1866 : STD_LOGIC; 
  signal hPos_23_1_1868 : STD_LOGIC; 
  signal hPos_24_1_1870 : STD_LOGIC; 
  signal hPos_25_1_1872 : STD_LOGIC; 
  signal hPos_26_1_1874 : STD_LOGIC; 
  signal hPos_29_1_1878 : STD_LOGIC; 
  signal hPos_2_1_1879 : STD_LOGIC; 
  signal hPos_2_2_1880 : STD_LOGIC; 
  signal hPos_31_1_1884 : STD_LOGIC; 
  signal hPos_3_1_1885 : STD_LOGIC; 
  signal hPos_3_2_1886 : STD_LOGIC; 
  signal hPos_4_1_1888 : STD_LOGIC; 
  signal hPos_4_2_1889 : STD_LOGIC; 
  signal hPos_5_1_1891 : STD_LOGIC; 
  signal hPos_5_2_1892 : STD_LOGIC; 
  signal hPos_6_1_1894 : STD_LOGIC; 
  signal hPos_6_2_1895 : STD_LOGIC; 
  signal hPos_7_1_1897 : STD_LOGIC; 
  signal hPos_7_2_1898 : STD_LOGIC; 
  signal hPos_8_1_1900 : STD_LOGIC; 
  signal hPos_8_2_1901 : STD_LOGIC; 
  signal hPos_9_1_1903 : STD_LOGIC; 
  signal hPos_cmp_eq0000 : STD_LOGIC; 
  signal texto_0_IBUF_1922 : STD_LOGIC; 
  signal texto_1_IBUF_1923 : STD_LOGIC; 
  signal vPos_5_1_1952 : STD_LOGIC; 
  signal vPos_6_1_1954 : STD_LOGIC; 
  signal vPos_7_1_1956 : STD_LOGIC; 
  signal vPos_8_1_1958 : STD_LOGIC; 
  signal vPos_cmp_eq0000 : STD_LOGIC; 
  signal videoOn_1976 : STD_LOGIC; 
  signal videoOn_and0000 : STD_LOGIC; 
  signal videoOn_cmp_le0000 : STD_LOGIC; 
  signal videoOn_cmp_le0001 : STD_LOGIC; 
  signal Mcompar_RGB_cmp_ge0000_cy : STD_LOGIC_VECTOR ( 12 downto 0 ); 
  signal Mcompar_RGB_cmp_ge0000_lut : STD_LOGIC_VECTOR ( 13 downto 0 ); 
  signal Mcompar_RGB_cmp_ge0001_cy : STD_LOGIC_VECTOR ( 10 downto 0 ); 
  signal Mcompar_RGB_cmp_ge0001_lut : STD_LOGIC_VECTOR ( 11 downto 0 ); 
  signal Mcompar_VSYNC_cmp_le0000_cy : STD_LOGIC_VECTOR ( 13 downto 0 ); 
  signal Mcompar_VSYNC_cmp_le0000_lut : STD_LOGIC_VECTOR ( 14 downto 0 ); 
  signal Mcompar_videoOn_cmp_le0000_cy : STD_LOGIC_VECTOR ( 13 downto 0 ); 
  signal Mcompar_videoOn_cmp_le0000_lut : STD_LOGIC_VECTOR ( 14 downto 0 ); 
  signal Mcount_hPos_cy : STD_LOGIC_VECTOR ( 30 downto 0 ); 
  signal Mcount_hPos_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal Mcount_vPos_cy : STD_LOGIC_VECTOR ( 30 downto 0 ); 
  signal Mcount_vPos_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal Result : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal hPos : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal hPos_cmp_eq0000_wg_cy : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal hPos_cmp_eq0000_wg_lut : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal vPos : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal vPos_cmp_eq0000_wg_cy : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal vPos_cmp_eq0000_wg_lut : STD_LOGIC_VECTOR ( 7 downto 0 ); 
begin
  XST_GND : GND
    port map (
      G => N0
    );
  XST_VCC : VCC
    port map (
      P => N1
    );
  VSYNC_3 : FDC
    port map (
      C => clk25_1826,
      CLR => RST_IBUF_1757,
      D => VSYNC_or0000,
      Q => VSYNC_OBUF_1823
    );
  videoOn : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_1826,
      CLR => RST_IBUF_1757,
      D => videoOn_and0000,
      Q => videoOn_1976
    );
  HSYNC_5 : FDC
    port map (
      C => clk25_1826,
      CLR => RST_IBUF_1757,
      D => HSYNC_or0000,
      Q => HSYNC_OBUF_3
    );
  hPos_0 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_1826,
      CLR => RST_IBUF_1757,
      D => Mcount_hPos_eqn_0,
      Q => hPos(0)
    );
  hPos_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_1826,
      CLR => RST_IBUF_1757,
      D => Mcount_hPos_eqn_1,
      Q => hPos(1)
    );
  hPos_2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_1826,
      CLR => RST_IBUF_1757,
      D => Mcount_hPos_eqn_2,
      Q => hPos(2)
    );
  hPos_3 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_1826,
      CLR => RST_IBUF_1757,
      D => Mcount_hPos_eqn_3,
      Q => hPos(3)
    );
  hPos_4 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_1826,
      CLR => RST_IBUF_1757,
      D => Mcount_hPos_eqn_4,
      Q => hPos(4)
    );
  hPos_5 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_1826,
      CLR => RST_IBUF_1757,
      D => Mcount_hPos_eqn_5,
      Q => hPos(5)
    );
  hPos_6 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_1826,
      CLR => RST_IBUF_1757,
      D => Mcount_hPos_eqn_6,
      Q => hPos(6)
    );
  hPos_7 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_1826,
      CLR => RST_IBUF_1757,
      D => Mcount_hPos_eqn_7,
      Q => hPos(7)
    );
  hPos_8 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_1826,
      CLR => RST_IBUF_1757,
      D => Mcount_hPos_eqn_8,
      Q => hPos(8)
    );
  hPos_9 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_1826,
      CLR => RST_IBUF_1757,
      D => Mcount_hPos_eqn_9,
      Q => hPos(9)
    );
  hPos_10 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_1826,
      CLR => RST_IBUF_1757,
      D => Mcount_hPos_eqn_10,
      Q => hPos(10)
    );
  hPos_11 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_1826,
      CLR => RST_IBUF_1757,
      D => Mcount_hPos_eqn_11,
      Q => hPos(11)
    );
  hPos_12 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_1826,
      CLR => RST_IBUF_1757,
      D => Mcount_hPos_eqn_12,
      Q => hPos(12)
    );
  hPos_13 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_1826,
      CLR => RST_IBUF_1757,
      D => Mcount_hPos_eqn_13,
      Q => hPos(13)
    );
  hPos_14 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_1826,
      CLR => RST_IBUF_1757,
      D => Mcount_hPos_eqn_14,
      Q => hPos(14)
    );
  hPos_15 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_1826,
      CLR => RST_IBUF_1757,
      D => Mcount_hPos_eqn_15,
      Q => hPos(15)
    );
  hPos_16 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_1826,
      CLR => RST_IBUF_1757,
      D => Mcount_hPos_eqn_16,
      Q => hPos(16)
    );
  hPos_17 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_1826,
      CLR => RST_IBUF_1757,
      D => Mcount_hPos_eqn_17,
      Q => hPos(17)
    );
  hPos_18 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_1826,
      CLR => RST_IBUF_1757,
      D => Mcount_hPos_eqn_18,
      Q => hPos(18)
    );
  hPos_19 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_1826,
      CLR => RST_IBUF_1757,
      D => Mcount_hPos_eqn_19,
      Q => hPos(19)
    );
  hPos_20 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_1826,
      CLR => RST_IBUF_1757,
      D => Mcount_hPos_eqn_20,
      Q => hPos(20)
    );
  hPos_21 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_1826,
      CLR => RST_IBUF_1757,
      D => Mcount_hPos_eqn_21,
      Q => hPos(21)
    );
  hPos_22 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_1826,
      CLR => RST_IBUF_1757,
      D => Mcount_hPos_eqn_22,
      Q => hPos(22)
    );
  hPos_23 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_1826,
      CLR => RST_IBUF_1757,
      D => Mcount_hPos_eqn_23,
      Q => hPos(23)
    );
  hPos_24 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_1826,
      CLR => RST_IBUF_1757,
      D => Mcount_hPos_eqn_24,
      Q => hPos(24)
    );
  hPos_25 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_1826,
      CLR => RST_IBUF_1757,
      D => Mcount_hPos_eqn_25,
      Q => hPos(25)
    );
  hPos_26 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_1826,
      CLR => RST_IBUF_1757,
      D => Mcount_hPos_eqn_26,
      Q => hPos(26)
    );
  hPos_27 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_1826,
      CLR => RST_IBUF_1757,
      D => Mcount_hPos_eqn_27,
      Q => hPos(27)
    );
  hPos_28 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_1826,
      CLR => RST_IBUF_1757,
      D => Mcount_hPos_eqn_28,
      Q => hPos(28)
    );
  hPos_29 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_1826,
      CLR => RST_IBUF_1757,
      D => Mcount_hPos_eqn_29,
      Q => hPos(29)
    );
  hPos_30 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_1826,
      CLR => RST_IBUF_1757,
      D => Mcount_hPos_eqn_30,
      Q => hPos(30)
    );
  hPos_31 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_1826,
      CLR => RST_IBUF_1757,
      D => Mcount_hPos_eqn_31,
      Q => hPos(31)
    );
  vPos_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_1826,
      CE => hPos_cmp_eq0000,
      CLR => RST_IBUF_1757,
      D => Mcount_vPos_eqn_0,
      Q => vPos(0)
    );
  vPos_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_1826,
      CE => hPos_cmp_eq0000,
      CLR => RST_IBUF_1757,
      D => Mcount_vPos_eqn_1,
      Q => vPos(1)
    );
  vPos_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_1826,
      CE => hPos_cmp_eq0000,
      CLR => RST_IBUF_1757,
      D => Mcount_vPos_eqn_2,
      Q => vPos(2)
    );
  vPos_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_1826,
      CE => hPos_cmp_eq0000,
      CLR => RST_IBUF_1757,
      D => Mcount_vPos_eqn_3,
      Q => vPos(3)
    );
  vPos_4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_1826,
      CE => hPos_cmp_eq0000,
      CLR => RST_IBUF_1757,
      D => Mcount_vPos_eqn_4,
      Q => vPos(4)
    );
  vPos_5 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_1826,
      CE => hPos_cmp_eq0000,
      CLR => RST_IBUF_1757,
      D => Mcount_vPos_eqn_5,
      Q => vPos(5)
    );
  vPos_6 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_1826,
      CE => hPos_cmp_eq0000,
      CLR => RST_IBUF_1757,
      D => Mcount_vPos_eqn_6,
      Q => vPos(6)
    );
  vPos_7 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_1826,
      CE => hPos_cmp_eq0000,
      CLR => RST_IBUF_1757,
      D => Mcount_vPos_eqn_7,
      Q => vPos(7)
    );
  vPos_8 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_1826,
      CE => hPos_cmp_eq0000,
      CLR => RST_IBUF_1757,
      D => Mcount_vPos_eqn_8,
      Q => vPos(8)
    );
  vPos_9 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_1826,
      CE => hPos_cmp_eq0000,
      CLR => RST_IBUF_1757,
      D => Mcount_vPos_eqn_9,
      Q => vPos(9)
    );
  vPos_10 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_1826,
      CE => hPos_cmp_eq0000,
      CLR => RST_IBUF_1757,
      D => Mcount_vPos_eqn_10,
      Q => vPos(10)
    );
  vPos_11 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_1826,
      CE => hPos_cmp_eq0000,
      CLR => RST_IBUF_1757,
      D => Mcount_vPos_eqn_11,
      Q => vPos(11)
    );
  vPos_12 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_1826,
      CE => hPos_cmp_eq0000,
      CLR => RST_IBUF_1757,
      D => Mcount_vPos_eqn_12,
      Q => vPos(12)
    );
  vPos_13 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_1826,
      CE => hPos_cmp_eq0000,
      CLR => RST_IBUF_1757,
      D => Mcount_vPos_eqn_13,
      Q => vPos(13)
    );
  vPos_14 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_1826,
      CE => hPos_cmp_eq0000,
      CLR => RST_IBUF_1757,
      D => Mcount_vPos_eqn_14,
      Q => vPos(14)
    );
  vPos_15 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_1826,
      CE => hPos_cmp_eq0000,
      CLR => RST_IBUF_1757,
      D => Mcount_vPos_eqn_15,
      Q => vPos(15)
    );
  vPos_16 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_1826,
      CE => hPos_cmp_eq0000,
      CLR => RST_IBUF_1757,
      D => Mcount_vPos_eqn_16,
      Q => vPos(16)
    );
  vPos_17 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_1826,
      CE => hPos_cmp_eq0000,
      CLR => RST_IBUF_1757,
      D => Mcount_vPos_eqn_17,
      Q => vPos(17)
    );
  vPos_18 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_1826,
      CE => hPos_cmp_eq0000,
      CLR => RST_IBUF_1757,
      D => Mcount_vPos_eqn_18,
      Q => vPos(18)
    );
  vPos_19 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_1826,
      CE => hPos_cmp_eq0000,
      CLR => RST_IBUF_1757,
      D => Mcount_vPos_eqn_19,
      Q => vPos(19)
    );
  vPos_20 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_1826,
      CE => hPos_cmp_eq0000,
      CLR => RST_IBUF_1757,
      D => Mcount_vPos_eqn_20,
      Q => vPos(20)
    );
  vPos_21 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_1826,
      CE => hPos_cmp_eq0000,
      CLR => RST_IBUF_1757,
      D => Mcount_vPos_eqn_21,
      Q => vPos(21)
    );
  vPos_22 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_1826,
      CE => hPos_cmp_eq0000,
      CLR => RST_IBUF_1757,
      D => Mcount_vPos_eqn_22,
      Q => vPos(22)
    );
  vPos_23 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_1826,
      CE => hPos_cmp_eq0000,
      CLR => RST_IBUF_1757,
      D => Mcount_vPos_eqn_23,
      Q => vPos(23)
    );
  vPos_24 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_1826,
      CE => hPos_cmp_eq0000,
      CLR => RST_IBUF_1757,
      D => Mcount_vPos_eqn_24,
      Q => vPos(24)
    );
  vPos_25 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_1826,
      CE => hPos_cmp_eq0000,
      CLR => RST_IBUF_1757,
      D => Mcount_vPos_eqn_25,
      Q => vPos(25)
    );
  vPos_26 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_1826,
      CE => hPos_cmp_eq0000,
      CLR => RST_IBUF_1757,
      D => Mcount_vPos_eqn_26,
      Q => vPos(26)
    );
  vPos_27 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_1826,
      CE => hPos_cmp_eq0000,
      CLR => RST_IBUF_1757,
      D => Mcount_vPos_eqn_27,
      Q => vPos(27)
    );
  vPos_28 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_1826,
      CE => hPos_cmp_eq0000,
      CLR => RST_IBUF_1757,
      D => Mcount_vPos_eqn_28,
      Q => vPos(28)
    );
  vPos_29 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_1826,
      CE => hPos_cmp_eq0000,
      CLR => RST_IBUF_1757,
      D => Mcount_vPos_eqn_29,
      Q => vPos(29)
    );
  vPos_30 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_1826,
      CE => hPos_cmp_eq0000,
      CLR => RST_IBUF_1757,
      D => Mcount_vPos_eqn_30,
      Q => vPos(30)
    );
  vPos_31 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_1826,
      CE => hPos_cmp_eq0000,
      CLR => RST_IBUF_1757,
      D => Mcount_vPos_eqn_31,
      Q => vPos(31)
    );
  Mcompar_videoOn_cmp_le0000_lut_0_Q : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => hPos(7),
      I1 => hPos(8),
      O => Mcompar_videoOn_cmp_le0000_lut(0)
    );
  Mcompar_videoOn_cmp_le0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut(0),
      O => Mcompar_videoOn_cmp_le0000_cy(0)
    );
  Mcompar_videoOn_cmp_le0000_cy_1_Q : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy(0),
      DI => N1,
      S => Mcompar_videoOn_cmp_le0000_cy_1_rt_951,
      O => Mcompar_videoOn_cmp_le0000_cy(1)
    );
  Mcompar_videoOn_cmp_le0000_lut_2_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(10),
      I1 => hPos(11),
      I2 => hPos(12),
      I3 => hPos(13),
      O => Mcompar_videoOn_cmp_le0000_lut(2)
    );
  Mcompar_videoOn_cmp_le0000_cy_2_Q : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy(1),
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut(2),
      O => Mcompar_videoOn_cmp_le0000_cy(2)
    );
  Mcompar_videoOn_cmp_le0000_lut_3_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(14),
      I1 => hPos(15),
      I2 => hPos(16),
      I3 => hPos(17),
      O => Mcompar_videoOn_cmp_le0000_lut(3)
    );
  Mcompar_videoOn_cmp_le0000_cy_3_Q : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy(2),
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut(3),
      O => Mcompar_videoOn_cmp_le0000_cy(3)
    );
  Mcompar_videoOn_cmp_le0000_lut_4_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(18),
      I1 => hPos(19),
      I2 => hPos(20),
      I3 => hPos(21),
      O => Mcompar_videoOn_cmp_le0000_lut(4)
    );
  Mcompar_videoOn_cmp_le0000_cy_4_Q : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy(3),
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut(4),
      O => Mcompar_videoOn_cmp_le0000_cy(4)
    );
  Mcompar_videoOn_cmp_le0000_lut_5_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(22),
      I1 => hPos(23),
      I2 => hPos(24),
      I3 => hPos(25),
      O => Mcompar_videoOn_cmp_le0000_lut(5)
    );
  Mcompar_videoOn_cmp_le0000_cy_5_Q : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy(4),
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut(5),
      O => Mcompar_videoOn_cmp_le0000_cy(5)
    );
  Mcompar_videoOn_cmp_le0000_lut_6_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(26),
      I1 => hPos(27),
      I2 => hPos(28),
      I3 => hPos(29),
      O => Mcompar_videoOn_cmp_le0000_lut(6)
    );
  Mcompar_videoOn_cmp_le0000_cy_6_Q : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy(5),
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut(6),
      O => Mcompar_videoOn_cmp_le0000_cy(6)
    );
  Mcompar_videoOn_cmp_le0000_cy_7_Q : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy(6),
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut(7),
      O => Mcompar_videoOn_cmp_le0000_cy(7)
    );
  Mcompar_videoOn_cmp_le0000_cy_8_Q : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy(7),
      DI => hPos_31_1_1884,
      S => Mcompar_videoOn_cmp_le0000_lut(8),
      O => videoOn_cmp_le0000
    );
  Mcompar_videoOn_cmp_le0000_cy_0_0 : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_0_1,
      O => Mcompar_videoOn_cmp_le0000_cy_0_1_861
    );
  Mcompar_videoOn_cmp_le0000_lut_1_Q : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => hPos_5_1_1891,
      I1 => hPos_4_1_1888,
      O => Mcompar_videoOn_cmp_le0000_lut(1)
    );
  Mcompar_videoOn_cmp_le0000_cy_1_0 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_0_1_861,
      DI => N1,
      S => Mcompar_videoOn_cmp_le0000_lut(1),
      O => Mcompar_videoOn_cmp_le0000_cy_1_1_912
    );
  Mcompar_videoOn_cmp_le0000_lut_2_1 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos_9_1_1903,
      I1 => hPos_7_1_1897,
      I2 => hPos_6_1_1894,
      I3 => hPos_8_1_1900,
      O => Mcompar_videoOn_cmp_le0000_lut_2_1_1257
    );
  Mcompar_videoOn_cmp_le0000_cy_2_0 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_1_1_912,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_2_1_1257,
      O => Mcompar_videoOn_cmp_le0000_cy_2_1_953
    );
  Mcompar_videoOn_cmp_le0000_lut_3_1 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos_13_1_1845,
      I1 => hPos_12_1_1843,
      I2 => hPos_11_1_1841,
      I3 => hPos_10_1_1839,
      O => Mcompar_videoOn_cmp_le0000_lut_3_1_1282
    );
  Mcompar_videoOn_cmp_le0000_cy_3_0 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_2_1_953,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_3_1_1282,
      O => Mcompar_videoOn_cmp_le0000_cy_3_1_978
    );
  Mcompar_videoOn_cmp_le0000_lut_4_1 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos_17_1_1853,
      I1 => hPos_16_1_1851,
      I2 => hPos_15_1_1849,
      I3 => hPos_14_1_1847,
      O => Mcompar_videoOn_cmp_le0000_lut_4_1_1290
    );
  Mcompar_videoOn_cmp_le0000_cy_4_0 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_3_1_978,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_4_1_1290,
      O => Mcompar_videoOn_cmp_le0000_cy_4_1_1020
    );
  Mcompar_videoOn_cmp_le0000_lut_5_1 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos_21_1_1864,
      I1 => hPos_20_1_1862,
      I2 => hPos_19_1_1857,
      I3 => hPos_18_1_1855,
      O => Mcompar_videoOn_cmp_le0000_lut_5_1_1314
    );
  Mcompar_videoOn_cmp_le0000_cy_5_0 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_4_1_1020,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_5_1_1314,
      O => Mcompar_videoOn_cmp_le0000_cy_5_1_1046
    );
  Mcompar_videoOn_cmp_le0000_lut_6_1 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos_25_1_1872,
      I1 => hPos_23_1_1868,
      I2 => hPos_24_1_1870,
      I3 => hPos_22_1_1866,
      O => Mcompar_videoOn_cmp_le0000_lut_6_1_1334
    );
  Mcompar_videoOn_cmp_le0000_cy_6_0 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_5_1_1046,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_6_1_1334,
      O => Mcompar_videoOn_cmp_le0000_cy_6_1_1076
    );
  Mcompar_videoOn_cmp_le0000_lut_7_1 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos_29_1_1878,
      I1 => hPos_26_1_1874,
      I2 => hPos(28),
      I3 => hPos(27),
      O => Mcompar_videoOn_cmp_le0000_lut_7_1_1359
    );
  Mcompar_videoOn_cmp_le0000_cy_7_0 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_6_1_1076,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_7_1_1359,
      O => Mcompar_videoOn_cmp_le0000_cy_7_1_1101
    );
  Mcompar_videoOn_cmp_le0000_cy_8_0 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_7_1_1101,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_8_1,
      O => Mcompar_videoOn_cmp_le0000_cy(8)
    );
  Mcompar_videoOn_cmp_le0000_cy_9_Q : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy(8),
      DI => hPos_31_1_1884,
      S => Mcompar_videoOn_cmp_le0000_lut(9),
      O => RGB_cmp_le0000
    );
  Mcompar_videoOn_cmp_le0000_lut_0_2 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => hPos_1_2_1859,
      I1 => hPos_2_2_1880,
      O => Mcompar_videoOn_cmp_le0000_lut_0_2_1186
    );
  Mcompar_videoOn_cmp_le0000_cy_0_1 : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_0_2_1186,
      O => Mcompar_videoOn_cmp_le0000_cy_0_2_872
    );
  Mcompar_videoOn_cmp_le0000_cy_1_1 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_0_2_872,
      DI => N1,
      S => Mcompar_videoOn_cmp_le0000_cy_1_1_rt_942,
      O => Mcompar_videoOn_cmp_le0000_cy_1_2_923
    );
  Mcompar_videoOn_cmp_le0000_cy_2_1 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_1_2_923,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_2_2,
      O => Mcompar_videoOn_cmp_le0000_cy_2_2_964
    );
  Mcompar_videoOn_cmp_le0000_lut_3_2 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => hPos_5_2_1892,
      I1 => hPos_6_2_1895,
      O => Mcompar_videoOn_cmp_le0000_lut_3_2_1283
    );
  Mcompar_videoOn_cmp_le0000_cy_3_1 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_2_2_964,
      DI => N1,
      S => Mcompar_videoOn_cmp_le0000_lut_3_2_1283,
      O => Mcompar_videoOn_cmp_le0000_cy_3_2_989
    );
  Mcompar_videoOn_cmp_le0000_lut_4_2 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos_7_2_1898,
      I1 => hPos_8_2_1901,
      I2 => hPos(9),
      I3 => hPos(10),
      O => Mcompar_videoOn_cmp_le0000_lut_4_2_1301
    );
  Mcompar_videoOn_cmp_le0000_cy_4_1 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_3_2_989,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_4_2_1301,
      O => Mcompar_videoOn_cmp_le0000_cy_4_2_1031
    );
  Mcompar_videoOn_cmp_le0000_lut_5_2 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(11),
      I1 => hPos(12),
      I2 => hPos(13),
      I3 => hPos(14),
      O => Mcompar_videoOn_cmp_le0000_lut_5_2_1325
    );
  Mcompar_videoOn_cmp_le0000_cy_5_1 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_4_2_1031,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_5_2_1325,
      O => Mcompar_videoOn_cmp_le0000_cy_5_2_1057
    );
  Mcompar_videoOn_cmp_le0000_lut_6_2 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(15),
      I1 => hPos(16),
      I2 => hPos(17),
      I3 => hPos(18),
      O => Mcompar_videoOn_cmp_le0000_lut_6_2_1345
    );
  Mcompar_videoOn_cmp_le0000_cy_6_1 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_5_2_1057,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_6_2_1345,
      O => Mcompar_videoOn_cmp_le0000_cy_6_2_1087
    );
  Mcompar_videoOn_cmp_le0000_lut_7_2 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(19),
      I1 => hPos(20),
      I2 => hPos(21),
      I3 => hPos(22),
      O => Mcompar_videoOn_cmp_le0000_lut_7_2_1370
    );
  Mcompar_videoOn_cmp_le0000_cy_7_1 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_6_2_1087,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_7_2_1370,
      O => Mcompar_videoOn_cmp_le0000_cy_7_2_1112
    );
  Mcompar_videoOn_cmp_le0000_lut_8_2 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(23),
      I1 => hPos(24),
      I2 => hPos(25),
      I3 => hPos(26),
      O => Mcompar_videoOn_cmp_le0000_lut_8_2_1393
    );
  Mcompar_videoOn_cmp_le0000_cy_8_1 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_7_2_1112,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_8_2_1393,
      O => Mcompar_videoOn_cmp_le0000_cy_8_1_1128
    );
  Mcompar_videoOn_cmp_le0000_lut_9_1 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(27),
      I1 => hPos(28),
      I2 => hPos(29),
      I3 => hPos(30),
      O => Mcompar_videoOn_cmp_le0000_lut_9_1_1407
    );
  Mcompar_videoOn_cmp_le0000_cy_9_0 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_8_1_1128,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_9_1_1407,
      O => Mcompar_videoOn_cmp_le0000_cy(9)
    );
  Mcompar_videoOn_cmp_le0000_cy_10_Q : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy(9),
      DI => hPos_31_1_1884,
      S => Mcompar_videoOn_cmp_le0000_lut(10),
      O => RGB_cmp_le0002
    );
  Mcompar_videoOn_cmp_le0000_cy_0_2 : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_0_3,
      O => Mcompar_videoOn_cmp_le0000_cy_0_3_878
    );
  Mcompar_videoOn_cmp_le0000_lut_1_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => hPos_3_2_1886,
      I1 => hPos_4_2_1889,
      O => Mcompar_videoOn_cmp_le0000_lut_1_1_1248
    );
  Mcompar_videoOn_cmp_le0000_cy_1_2 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_0_3_878,
      DI => N1,
      S => Mcompar_videoOn_cmp_le0000_lut_1_1_1248,
      O => Mcompar_videoOn_cmp_le0000_cy_1_3_929
    );
  Mcompar_videoOn_cmp_le0000_lut_2_3 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => hPos_5_2_1892,
      I1 => hPos_6_2_1895,
      O => Mcompar_videoOn_cmp_le0000_lut_2_3_1274
    );
  Mcompar_videoOn_cmp_le0000_cy_2_2 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_1_3_929,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_2_3_1274,
      O => Mcompar_videoOn_cmp_le0000_cy_2_3_970
    );
  Mcompar_videoOn_cmp_le0000_cy_3_2 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_2_3_970,
      DI => N1,
      S => Mcompar_videoOn_cmp_le0000_cy_3_2_rt_1013,
      O => Mcompar_videoOn_cmp_le0000_cy_3_3_995
    );
  Mcompar_videoOn_cmp_le0000_lut_4_3 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos_8_2_1901,
      I1 => hPos(9),
      I2 => hPos(10),
      I3 => hPos(11),
      O => Mcompar_videoOn_cmp_le0000_lut_4_3_1306
    );
  Mcompar_videoOn_cmp_le0000_cy_4_2 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_3_3_995,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_4_3_1306,
      O => Mcompar_videoOn_cmp_le0000_cy_4_3_1037
    );
  Mcompar_videoOn_cmp_le0000_lut_5_3 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(12),
      I1 => hPos(13),
      I2 => hPos(14),
      I3 => hPos(15),
      O => Mcompar_videoOn_cmp_le0000_lut_5_3_1326
    );
  Mcompar_videoOn_cmp_le0000_cy_5_2 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_4_3_1037,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_5_3_1326,
      O => Mcompar_videoOn_cmp_le0000_cy_5_3_1063
    );
  Mcompar_videoOn_cmp_le0000_lut_6_3 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(16),
      I1 => hPos(17),
      I2 => hPos(18),
      I3 => hPos(19),
      O => Mcompar_videoOn_cmp_le0000_lut_6_3_1351
    );
  Mcompar_videoOn_cmp_le0000_cy_6_2 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_5_3_1063,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_6_3_1351,
      O => Mcompar_videoOn_cmp_le0000_cy_6_3_1093
    );
  Mcompar_videoOn_cmp_le0000_lut_7_3 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(20),
      I1 => hPos(21),
      I2 => hPos(22),
      I3 => hPos(23),
      O => Mcompar_videoOn_cmp_le0000_lut_7_3_1374
    );
  Mcompar_videoOn_cmp_le0000_cy_7_2 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_6_3_1093,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_7_3_1374,
      O => Mcompar_videoOn_cmp_le0000_cy_7_3_1118
    );
  Mcompar_videoOn_cmp_le0000_lut_8_3 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(24),
      I1 => hPos(25),
      I2 => hPos(26),
      I3 => hPos(27),
      O => Mcompar_videoOn_cmp_le0000_lut_8_3_1399
    );
  Mcompar_videoOn_cmp_le0000_cy_8_2 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_7_3_1118,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_8_3_1399,
      O => Mcompar_videoOn_cmp_le0000_cy_8_2_1139
    );
  Mcompar_videoOn_cmp_le0000_lut_9_2 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => hPos(28),
      I1 => hPos(29),
      I2 => hPos(30),
      O => Mcompar_videoOn_cmp_le0000_lut_9_2_1418
    );
  Mcompar_videoOn_cmp_le0000_cy_9_1 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_8_2_1139,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_9_2_1418,
      O => Mcompar_videoOn_cmp_le0000_cy_9_1_1152
    );
  Mcompar_videoOn_cmp_le0000_cy_10_0 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_9_1_1152,
      DI => hPos_31_1_1884,
      S => Mcompar_videoOn_cmp_le0000_lut_10_1,
      O => RGB_cmp_le0005
    );
  Mcompar_videoOn_cmp_le0000_cy_0_3 : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_0_4,
      O => Mcompar_videoOn_cmp_le0000_cy_0_4_879
    );
  Mcompar_videoOn_cmp_le0000_cy_1_3 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_0_4_879,
      DI => N1,
      S => Mcompar_videoOn_cmp_le0000_cy_1_3_rt_946,
      O => Mcompar_videoOn_cmp_le0000_cy_1_4_930
    );
  Mcompar_videoOn_cmp_le0000_cy_2_3 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_1_4_930,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_2_4,
      O => Mcompar_videoOn_cmp_le0000_cy_2_4_971
    );
  Mcompar_videoOn_cmp_le0000_lut_3_3 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => hPos_6_2_1895,
      I1 => hPos_7_2_1898,
      O => Mcompar_videoOn_cmp_le0000_lut_3_3_1284
    );
  Mcompar_videoOn_cmp_le0000_cy_3_3 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_2_4_971,
      DI => N1,
      S => Mcompar_videoOn_cmp_le0000_lut_3_3_1284,
      O => Mcompar_videoOn_cmp_le0000_cy_3_4_996
    );
  Mcompar_videoOn_cmp_le0000_lut_4_4 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos_8_2_1901,
      I1 => hPos(9),
      I2 => hPos(10),
      I3 => hPos(11),
      O => Mcompar_videoOn_cmp_le0000_lut_4_4_1307
    );
  Mcompar_videoOn_cmp_le0000_cy_4_3 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_3_4_996,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_4_4_1307,
      O => Mcompar_videoOn_cmp_le0000_cy_4_4_1038
    );
  Mcompar_videoOn_cmp_le0000_lut_5_4 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(12),
      I1 => hPos(13),
      I2 => hPos(14),
      I3 => hPos(15),
      O => Mcompar_videoOn_cmp_le0000_lut_5_4_1327
    );
  Mcompar_videoOn_cmp_le0000_cy_5_3 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_4_4_1038,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_5_4_1327,
      O => Mcompar_videoOn_cmp_le0000_cy_5_4_1064
    );
  Mcompar_videoOn_cmp_le0000_lut_6_4 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(16),
      I1 => hPos(17),
      I2 => hPos(18),
      I3 => hPos(19),
      O => Mcompar_videoOn_cmp_le0000_lut_6_4_1352
    );
  Mcompar_videoOn_cmp_le0000_cy_6_3 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_5_4_1064,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_6_4_1352,
      O => Mcompar_videoOn_cmp_le0000_cy_6_4_1094
    );
  Mcompar_videoOn_cmp_le0000_lut_7_4 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(20),
      I1 => hPos(21),
      I2 => hPos(22),
      I3 => hPos(23),
      O => Mcompar_videoOn_cmp_le0000_lut_7_4_1375
    );
  Mcompar_videoOn_cmp_le0000_cy_7_3 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_6_4_1094,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_7_4_1375,
      O => Mcompar_videoOn_cmp_le0000_cy_7_4_1119
    );
  Mcompar_videoOn_cmp_le0000_lut_8_4 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(24),
      I1 => hPos(25),
      I2 => hPos(26),
      I3 => hPos(27),
      O => Mcompar_videoOn_cmp_le0000_lut_8_4_1400
    );
  Mcompar_videoOn_cmp_le0000_cy_8_3 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_7_4_1119,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_8_4_1400,
      O => Mcompar_videoOn_cmp_le0000_cy_8_3_1144
    );
  Mcompar_videoOn_cmp_le0000_lut_9_3 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => hPos(28),
      I1 => hPos(29),
      I2 => hPos(30),
      O => Mcompar_videoOn_cmp_le0000_lut_9_3_1423
    );
  Mcompar_videoOn_cmp_le0000_cy_9_2 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_8_3_1144,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_9_3_1423,
      O => Mcompar_videoOn_cmp_le0000_cy_9_2_1163
    );
  Mcompar_videoOn_cmp_le0000_cy_10_1 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_9_2_1163,
      DI => hPos_31_1_1884,
      S => Mcompar_videoOn_cmp_le0000_lut_10_2,
      O => RGB_cmp_le0006
    );
  Mcompar_videoOn_cmp_le0000_lut_0_5 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => hPos_1_2_1859,
      I1 => hPos_2_2_1880,
      O => Mcompar_videoOn_cmp_le0000_lut_0_5_1194
    );
  Mcompar_videoOn_cmp_le0000_cy_0_4 : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_0_5_1194,
      O => Mcompar_videoOn_cmp_le0000_cy_0_5_880
    );
  Mcompar_videoOn_cmp_le0000_cy_1_4 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_0_5_880,
      DI => N1,
      S => Mcompar_videoOn_cmp_le0000_cy_1_4_rt_947,
      O => Mcompar_videoOn_cmp_le0000_cy_1_5_931
    );
  Mcompar_videoOn_cmp_le0000_lut_2_5 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos_4_2_1889,
      I1 => hPos_5_2_1892,
      I2 => hPos_6_2_1895,
      I3 => hPos_7_2_1898,
      O => Mcompar_videoOn_cmp_le0000_lut_2_5_1276
    );
  Mcompar_videoOn_cmp_le0000_cy_2_4 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_1_5_931,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_2_5_1276,
      O => Mcompar_videoOn_cmp_le0000_cy_2_5_972
    );
  Mcompar_videoOn_cmp_le0000_cy_3_4 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_2_5_972,
      DI => N1,
      S => Mcompar_videoOn_cmp_le0000_cy_3_4_rt_1014,
      O => Mcompar_videoOn_cmp_le0000_cy_3_5_997
    );
  Mcompar_videoOn_cmp_le0000_lut_4_5 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(9),
      I1 => hPos(10),
      I2 => hPos(11),
      I3 => hPos(12),
      O => Mcompar_videoOn_cmp_le0000_lut_4_5_1308
    );
  Mcompar_videoOn_cmp_le0000_cy_4_4 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_3_5_997,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_4_5_1308,
      O => Mcompar_videoOn_cmp_le0000_cy_4_5_1039
    );
  Mcompar_videoOn_cmp_le0000_lut_5_5 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(13),
      I1 => hPos(14),
      I2 => hPos(15),
      I3 => hPos(16),
      O => Mcompar_videoOn_cmp_le0000_lut_5_5_1328
    );
  Mcompar_videoOn_cmp_le0000_cy_5_4 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_4_5_1039,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_5_5_1328,
      O => Mcompar_videoOn_cmp_le0000_cy_5_5_1065
    );
  Mcompar_videoOn_cmp_le0000_lut_6_5 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(17),
      I1 => hPos(18),
      I2 => hPos(19),
      I3 => hPos(20),
      O => Mcompar_videoOn_cmp_le0000_lut_6_5_1353
    );
  Mcompar_videoOn_cmp_le0000_cy_6_4 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_5_5_1065,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_6_5_1353,
      O => Mcompar_videoOn_cmp_le0000_cy_6_5_1095
    );
  Mcompar_videoOn_cmp_le0000_lut_7_5 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(21),
      I1 => hPos(22),
      I2 => hPos(23),
      I3 => hPos(24),
      O => Mcompar_videoOn_cmp_le0000_lut_7_5_1376
    );
  Mcompar_videoOn_cmp_le0000_cy_7_4 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_6_5_1095,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_7_5_1376,
      O => Mcompar_videoOn_cmp_le0000_cy_7_5_1120
    );
  Mcompar_videoOn_cmp_le0000_lut_8_5 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(25),
      I1 => hPos(26),
      I2 => hPos(27),
      I3 => hPos(28),
      O => Mcompar_videoOn_cmp_le0000_lut_8_5_1401
    );
  Mcompar_videoOn_cmp_le0000_cy_8_4 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_7_5_1120,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_8_5_1401,
      O => Mcompar_videoOn_cmp_le0000_cy_8_4_1145
    );
  Mcompar_videoOn_cmp_le0000_lut_9_4 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => hPos(29),
      I1 => hPos(30),
      O => Mcompar_videoOn_cmp_le0000_lut_9_4_1424
    );
  Mcompar_videoOn_cmp_le0000_cy_9_3 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_8_4_1145,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_9_4_1424,
      O => Mcompar_videoOn_cmp_le0000_cy_9_3_1167
    );
  Mcompar_videoOn_cmp_le0000_cy_10_2 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_9_3_1167,
      DI => hPos_31_1_1884,
      S => Mcompar_videoOn_cmp_le0000_lut_10_3,
      O => RGB_cmp_le0007
    );
  Mcompar_videoOn_cmp_le0000_cy_0_5 : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_0_6,
      O => Mcompar_videoOn_cmp_le0000_cy_0_6_881
    );
  Mcompar_videoOn_cmp_le0000_lut_1_2 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => hPos(3),
      I1 => hPos(4),
      I2 => hPos(5),
      O => Mcompar_videoOn_cmp_le0000_lut_1_2_1249
    );
  Mcompar_videoOn_cmp_le0000_cy_1_5 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_0_6_881,
      DI => N1,
      S => Mcompar_videoOn_cmp_le0000_lut_1_2_1249,
      O => Mcompar_videoOn_cmp_le0000_cy_1_6_932
    );
  Mcompar_videoOn_cmp_le0000_lut_2_6 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => hPos_6_2_1895,
      I1 => hPos_7_2_1898,
      O => Mcompar_videoOn_cmp_le0000_lut_2_6_1277
    );
  Mcompar_videoOn_cmp_le0000_cy_2_5 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_1_6_932,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_2_6_1277,
      O => Mcompar_videoOn_cmp_le0000_cy_2_6_973
    );
  Mcompar_videoOn_cmp_le0000_cy_3_5 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_2_6_973,
      DI => N1,
      S => Mcompar_videoOn_cmp_le0000_cy_3_5_rt_1015,
      O => Mcompar_videoOn_cmp_le0000_cy_3_6_998
    );
  Mcompar_videoOn_cmp_le0000_lut_4_6 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(9),
      I1 => hPos(10),
      I2 => hPos(11),
      I3 => hPos(12),
      O => Mcompar_videoOn_cmp_le0000_lut_4_6_1309
    );
  Mcompar_videoOn_cmp_le0000_cy_4_5 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_3_6_998,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_4_6_1309,
      O => Mcompar_videoOn_cmp_le0000_cy_4_6_1040
    );
  Mcompar_videoOn_cmp_le0000_lut_5_6 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(13),
      I1 => hPos(14),
      I2 => hPos(15),
      I3 => hPos(16),
      O => Mcompar_videoOn_cmp_le0000_lut_5_6_1329
    );
  Mcompar_videoOn_cmp_le0000_cy_5_5 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_4_6_1040,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_5_6_1329,
      O => Mcompar_videoOn_cmp_le0000_cy_5_6_1066
    );
  Mcompar_videoOn_cmp_le0000_lut_6_6 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(17),
      I1 => hPos(18),
      I2 => hPos(19),
      I3 => hPos(20),
      O => Mcompar_videoOn_cmp_le0000_lut_6_6_1354
    );
  Mcompar_videoOn_cmp_le0000_cy_6_5 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_5_6_1066,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_6_6_1354,
      O => Mcompar_videoOn_cmp_le0000_cy_6_6_1096
    );
  Mcompar_videoOn_cmp_le0000_lut_7_6 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(21),
      I1 => hPos(22),
      I2 => hPos(23),
      I3 => hPos(24),
      O => Mcompar_videoOn_cmp_le0000_lut_7_6_1377
    );
  Mcompar_videoOn_cmp_le0000_cy_7_5 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_6_6_1096,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_7_6_1377,
      O => Mcompar_videoOn_cmp_le0000_cy_7_6_1121
    );
  Mcompar_videoOn_cmp_le0000_lut_8_6 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(25),
      I1 => hPos(26),
      I2 => hPos(27),
      I3 => hPos(28),
      O => Mcompar_videoOn_cmp_le0000_lut_8_6_1402
    );
  Mcompar_videoOn_cmp_le0000_cy_8_5 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_7_6_1121,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_8_6_1402,
      O => Mcompar_videoOn_cmp_le0000_cy_8_5_1146
    );
  Mcompar_videoOn_cmp_le0000_lut_9_5 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => hPos(29),
      I1 => hPos(30),
      O => Mcompar_videoOn_cmp_le0000_lut_9_5_1425
    );
  Mcompar_videoOn_cmp_le0000_cy_9_4 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_8_5_1146,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_9_5_1425,
      O => Mcompar_videoOn_cmp_le0000_cy_9_4_1168
    );
  Mcompar_videoOn_cmp_le0000_cy_10_3 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_9_4_1168,
      DI => hPos_31_1_1884,
      S => Mcompar_videoOn_cmp_le0000_lut_10_4,
      O => RGB_cmp_le0008
    );
  Mcompar_videoOn_cmp_le0000_lut_0_7 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => hPos_1_2_1859,
      I1 => hPos_2_2_1880,
      O => Mcompar_videoOn_cmp_le0000_lut_0_7_1196
    );
  Mcompar_videoOn_cmp_le0000_cy_0_6 : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_0_7_1196,
      O => Mcompar_videoOn_cmp_le0000_cy_0_7_882
    );
  Mcompar_videoOn_cmp_le0000_cy_1_6 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_0_7_882,
      DI => N1,
      S => Mcompar_videoOn_cmp_le0000_cy_1_6_rt_948,
      O => Mcompar_videoOn_cmp_le0000_cy_1_7_933
    );
  Mcompar_videoOn_cmp_le0000_cy_2_6 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_1_7_933,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_2_7,
      O => Mcompar_videoOn_cmp_le0000_cy_2_7_974
    );
  Mcompar_videoOn_cmp_le0000_cy_3_6 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_2_7_974,
      DI => N1,
      S => Mcompar_videoOn_cmp_le0000_cy_3_6_rt_1016,
      O => Mcompar_videoOn_cmp_le0000_cy_3_7_999
    );
  Mcompar_videoOn_cmp_le0000_cy_4_6 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_3_7_999,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_4_7,
      O => Mcompar_videoOn_cmp_le0000_cy_4_7_1041
    );
  Mcompar_videoOn_cmp_le0000_lut_5_7 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => hPos_7_2_1898,
      I1 => hPos_8_2_1901,
      O => Mcompar_videoOn_cmp_le0000_lut_5_7_1330
    );
  Mcompar_videoOn_cmp_le0000_cy_5_6 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_4_7_1041,
      DI => N1,
      S => Mcompar_videoOn_cmp_le0000_lut_5_7_1330,
      O => Mcompar_videoOn_cmp_le0000_cy_5_7_1067
    );
  Mcompar_videoOn_cmp_le0000_lut_6_7 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(9),
      I1 => hPos(10),
      I2 => hPos(11),
      I3 => hPos(12),
      O => Mcompar_videoOn_cmp_le0000_lut_6_7_1355
    );
  Mcompar_videoOn_cmp_le0000_cy_6_6 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_5_7_1067,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_6_7_1355,
      O => Mcompar_videoOn_cmp_le0000_cy_6_7_1097
    );
  Mcompar_videoOn_cmp_le0000_lut_7_7 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(13),
      I1 => hPos(14),
      I2 => hPos(15),
      I3 => hPos(16),
      O => Mcompar_videoOn_cmp_le0000_lut_7_7_1378
    );
  Mcompar_videoOn_cmp_le0000_cy_7_6 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_6_7_1097,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_7_7_1378,
      O => Mcompar_videoOn_cmp_le0000_cy_7_7_1122
    );
  Mcompar_videoOn_cmp_le0000_lut_8_7 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(17),
      I1 => hPos(18),
      I2 => hPos(19),
      I3 => hPos(20),
      O => Mcompar_videoOn_cmp_le0000_lut_8_7_1403
    );
  Mcompar_videoOn_cmp_le0000_cy_8_6 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_7_7_1122,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_8_7_1403,
      O => Mcompar_videoOn_cmp_le0000_cy_8_6_1147
    );
  Mcompar_videoOn_cmp_le0000_lut_9_6 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(21),
      I1 => hPos(22),
      I2 => hPos(23),
      I3 => hPos(24),
      O => Mcompar_videoOn_cmp_le0000_lut_9_6_1426
    );
  Mcompar_videoOn_cmp_le0000_cy_9_5 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_8_6_1147,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_9_6_1426,
      O => Mcompar_videoOn_cmp_le0000_cy_9_5_1169
    );
  Mcompar_videoOn_cmp_le0000_lut_10_5 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(25),
      I1 => hPos(26),
      I2 => hPos(27),
      I3 => hPos(28),
      O => Mcompar_videoOn_cmp_le0000_lut_10_5_1217
    );
  Mcompar_videoOn_cmp_le0000_cy_10_4 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_9_5_1169,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_10_5_1217,
      O => Mcompar_videoOn_cmp_le0000_cy(10)
    );
  Mcompar_videoOn_cmp_le0000_lut_11_Q : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => hPos(29),
      I1 => hPos(30),
      O => Mcompar_videoOn_cmp_le0000_lut(11)
    );
  Mcompar_videoOn_cmp_le0000_cy_11_Q : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy(10),
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut(11),
      O => Mcompar_videoOn_cmp_le0000_cy(11)
    );
  Mcompar_videoOn_cmp_le0000_cy_12_Q : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy(11),
      DI => hPos_31_1_1884,
      S => Mcompar_videoOn_cmp_le0000_lut(12),
      O => RGB_cmp_le0009
    );
  Mcompar_videoOn_cmp_le0000_cy_0_7 : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_0_8,
      O => Mcompar_videoOn_cmp_le0000_cy_0_8_883
    );
  Mcompar_videoOn_cmp_le0000_lut_1_3 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => hPos(3),
      I1 => hPos(4),
      O => Mcompar_videoOn_cmp_le0000_lut_1_3_1250
    );
  Mcompar_videoOn_cmp_le0000_cy_1_7 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_0_8_883,
      DI => N1,
      S => Mcompar_videoOn_cmp_le0000_lut_1_3_1250,
      O => Mcompar_videoOn_cmp_le0000_cy_1_8_934
    );
  Mcompar_videoOn_cmp_le0000_cy_2_7 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_1_8_934,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_2_8,
      O => Mcompar_videoOn_cmp_le0000_cy_2_8_975
    );
  Mcompar_videoOn_cmp_le0000_lut_3_4 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => hPos(6),
      I1 => hPos(7),
      I2 => hPos(8),
      O => Mcompar_videoOn_cmp_le0000_lut_3_4_1285
    );
  Mcompar_videoOn_cmp_le0000_cy_3_7 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_2_8_975,
      DI => N1,
      S => Mcompar_videoOn_cmp_le0000_lut_3_4_1285,
      O => Mcompar_videoOn_cmp_le0000_cy_3_8_1000
    );
  Mcompar_videoOn_cmp_le0000_lut_4_8 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(9),
      I1 => hPos(10),
      I2 => hPos(11),
      I3 => hPos(12),
      O => Mcompar_videoOn_cmp_le0000_lut_4_8_1311
    );
  Mcompar_videoOn_cmp_le0000_cy_4_7 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_3_8_1000,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_4_8_1311,
      O => Mcompar_videoOn_cmp_le0000_cy_4_8_1042
    );
  Mcompar_videoOn_cmp_le0000_lut_5_8 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(13),
      I1 => hPos(14),
      I2 => hPos(15),
      I3 => hPos(16),
      O => Mcompar_videoOn_cmp_le0000_lut_5_8_1331
    );
  Mcompar_videoOn_cmp_le0000_cy_5_7 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_4_8_1042,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_5_8_1331,
      O => Mcompar_videoOn_cmp_le0000_cy_5_8_1068
    );
  Mcompar_videoOn_cmp_le0000_lut_6_8 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(17),
      I1 => hPos(18),
      I2 => hPos(19),
      I3 => hPos(20),
      O => Mcompar_videoOn_cmp_le0000_lut_6_8_1356
    );
  Mcompar_videoOn_cmp_le0000_cy_6_7 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_5_8_1068,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_6_8_1356,
      O => Mcompar_videoOn_cmp_le0000_cy_6_8_1098
    );
  Mcompar_videoOn_cmp_le0000_lut_7_8 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(21),
      I1 => hPos(22),
      I2 => hPos(23),
      I3 => hPos(24),
      O => Mcompar_videoOn_cmp_le0000_lut_7_8_1379
    );
  Mcompar_videoOn_cmp_le0000_cy_7_7 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_6_8_1098,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_7_8_1379,
      O => Mcompar_videoOn_cmp_le0000_cy_7_8_1123
    );
  Mcompar_videoOn_cmp_le0000_lut_8_8 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(25),
      I1 => hPos(26),
      I2 => hPos(27),
      I3 => hPos(28),
      O => Mcompar_videoOn_cmp_le0000_lut_8_8_1404
    );
  Mcompar_videoOn_cmp_le0000_cy_8_7 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_7_8_1123,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_8_8_1404,
      O => Mcompar_videoOn_cmp_le0000_cy_8_7_1148
    );
  Mcompar_videoOn_cmp_le0000_lut_9_7 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => hPos(29),
      I1 => hPos(30),
      O => Mcompar_videoOn_cmp_le0000_lut_9_7_1427
    );
  Mcompar_videoOn_cmp_le0000_cy_9_6 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_8_7_1148,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_9_7_1427,
      O => Mcompar_videoOn_cmp_le0000_cy_9_6_1170
    );
  Mcompar_videoOn_cmp_le0000_cy_10_5 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_9_6_1170,
      DI => hPos_31_1_1884,
      S => Mcompar_videoOn_cmp_le0000_lut_10_6,
      O => RGB_cmp_le0010
    );
  Mcompar_videoOn_cmp_le0000_cy_0_8 : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_0_9,
      O => Mcompar_videoOn_cmp_le0000_cy_0_9_884
    );
  Mcompar_videoOn_cmp_le0000_cy_1_8 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_0_9_884,
      DI => N1,
      S => Mcompar_videoOn_cmp_le0000_cy_1_8_rt_949,
      O => Mcompar_videoOn_cmp_le0000_cy_1_9_935
    );
  Mcompar_videoOn_cmp_le0000_lut_2_9 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos_5_1_1891,
      I1 => hPos_6_1_1894,
      I2 => hPos_7_1_1897,
      I3 => hPos_8_1_1900,
      O => Mcompar_videoOn_cmp_le0000_lut_2_9_1280
    );
  Mcompar_videoOn_cmp_le0000_cy_2_8 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_1_9_935,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_2_9_1280,
      O => Mcompar_videoOn_cmp_le0000_cy_2_9_976
    );
  Mcompar_videoOn_cmp_le0000_cy_3_8 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_2_9_976,
      DI => N1,
      S => Mcompar_videoOn_cmp_le0000_cy_3_8_rt_1017,
      O => Mcompar_videoOn_cmp_le0000_cy_3_9_1001
    );
  Mcompar_videoOn_cmp_le0000_lut_4_9 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos_13_1_1845,
      I1 => hPos_12_1_1843,
      I2 => hPos_11_1_1841,
      I3 => hPos_10_1_1839,
      O => Mcompar_videoOn_cmp_le0000_lut_4_9_1312
    );
  Mcompar_videoOn_cmp_le0000_cy_4_8 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_3_9_1001,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_4_9_1312,
      O => Mcompar_videoOn_cmp_le0000_cy_4_9_1043
    );
  Mcompar_videoOn_cmp_le0000_lut_5_9 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos_17_1_1853,
      I1 => hPos_16_1_1851,
      I2 => hPos_15_1_1849,
      I3 => hPos_14_1_1847,
      O => Mcompar_videoOn_cmp_le0000_lut_5_9_1332
    );
  Mcompar_videoOn_cmp_le0000_cy_5_8 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_4_9_1043,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_5_9_1332,
      O => Mcompar_videoOn_cmp_le0000_cy_5_9_1069
    );
  Mcompar_videoOn_cmp_le0000_lut_6_9 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos_21_1_1864,
      I1 => hPos_20_1_1862,
      I2 => hPos_19_1_1857,
      I3 => hPos_18_1_1855,
      O => Mcompar_videoOn_cmp_le0000_lut_6_9_1357
    );
  Mcompar_videoOn_cmp_le0000_cy_6_8 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_5_9_1069,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_6_9_1357,
      O => Mcompar_videoOn_cmp_le0000_cy_6_9_1099
    );
  Mcompar_videoOn_cmp_le0000_lut_7_9 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos_25_1_1872,
      I1 => hPos_23_1_1868,
      I2 => hPos_24_1_1870,
      I3 => hPos_22_1_1866,
      O => Mcompar_videoOn_cmp_le0000_lut_7_9_1380
    );
  Mcompar_videoOn_cmp_le0000_cy_7_8 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_6_9_1099,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_7_9_1380,
      O => Mcompar_videoOn_cmp_le0000_cy_7_9_1124
    );
  Mcompar_videoOn_cmp_le0000_lut_8_9 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos_29_1_1878,
      I1 => hPos_26_1_1874,
      I2 => hPos(28),
      I3 => hPos(27),
      O => Mcompar_videoOn_cmp_le0000_lut_8_9_1405
    );
  Mcompar_videoOn_cmp_le0000_cy_8_8 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_7_9_1124,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_8_9_1405,
      O => Mcompar_videoOn_cmp_le0000_cy_8_8_1149
    );
  Mcompar_videoOn_cmp_le0000_cy_9_7 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_8_8_1149,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_9_8,
      O => Mcompar_videoOn_cmp_le0000_cy_9_7_1171
    );
  Mcompar_videoOn_cmp_le0000_cy_10_6 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_9_7_1171,
      DI => hPos_31_1_1884,
      S => Mcompar_videoOn_cmp_le0000_lut_10_7,
      O => RGB_cmp_le0011
    );
  Mcompar_videoOn_cmp_le0000_lut_0_10 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => hPos_1_1_1858,
      I1 => hPos_2_2_1880,
      O => Mcompar_videoOn_cmp_le0000_lut_0_10_1176
    );
  Mcompar_videoOn_cmp_le0000_cy_0_9 : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_0_10_1176,
      O => Mcompar_videoOn_cmp_le0000_cy_0_10_862
    );
  Mcompar_videoOn_cmp_le0000_cy_1_9 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_0_10_862,
      DI => N1,
      S => Mcompar_videoOn_cmp_le0000_cy_1_9_rt_950,
      O => Mcompar_videoOn_cmp_le0000_cy_1_10_913
    );
  Mcompar_videoOn_cmp_le0000_lut_2_10 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => hPos_4_1_1888,
      I1 => hPos_5_2_1892,
      O => Mcompar_videoOn_cmp_le0000_lut_2_10_1258
    );
  Mcompar_videoOn_cmp_le0000_cy_2_9 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_1_10_913,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_2_10_1258,
      O => Mcompar_videoOn_cmp_le0000_cy_2_10_954
    );
  Mcompar_videoOn_cmp_le0000_cy_3_9 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_2_10_954,
      DI => N1,
      S => Mcompar_videoOn_cmp_le0000_cy_3_9_rt_1018,
      O => Mcompar_videoOn_cmp_le0000_cy_3_10_979
    );
  Mcompar_videoOn_cmp_le0000_lut_4_10 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => hPos_7_1_1897,
      I1 => hPos_8_1_1900,
      O => Mcompar_videoOn_cmp_le0000_lut_4_10_1291
    );
  Mcompar_videoOn_cmp_le0000_cy_4_9 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_3_10_979,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_4_10_1291,
      O => Mcompar_videoOn_cmp_le0000_cy_4_10_1021
    );
  Mcompar_videoOn_cmp_le0000_cy_5_9 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_4_10_1021,
      DI => N1,
      S => Mcompar_videoOn_cmp_le0000_cy_5_9_rt_1074,
      O => Mcompar_videoOn_cmp_le0000_cy_5_10_1047
    );
  Mcompar_videoOn_cmp_le0000_lut_6_10 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(10),
      I1 => hPos(11),
      I2 => hPos(12),
      I3 => hPos(13),
      O => Mcompar_videoOn_cmp_le0000_lut_6_10_1335
    );
  Mcompar_videoOn_cmp_le0000_cy_6_9 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_5_10_1047,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_6_10_1335,
      O => Mcompar_videoOn_cmp_le0000_cy_6_10_1077
    );
  Mcompar_videoOn_cmp_le0000_lut_7_10 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(14),
      I1 => hPos(15),
      I2 => hPos(16),
      I3 => hPos(17),
      O => Mcompar_videoOn_cmp_le0000_lut_7_10_1360
    );
  Mcompar_videoOn_cmp_le0000_cy_7_9 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_6_10_1077,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_7_10_1360,
      O => Mcompar_videoOn_cmp_le0000_cy_7_10_1102
    );
  Mcompar_videoOn_cmp_le0000_lut_8_10 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(18),
      I1 => hPos(19),
      I2 => hPos(20),
      I3 => hPos(21),
      O => Mcompar_videoOn_cmp_le0000_lut_8_10_1383
    );
  Mcompar_videoOn_cmp_le0000_cy_8_9 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_7_10_1102,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_8_10_1383,
      O => Mcompar_videoOn_cmp_le0000_cy_8_9_1150
    );
  Mcompar_videoOn_cmp_le0000_lut_9_9 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(22),
      I1 => hPos(23),
      I2 => hPos(24),
      I3 => hPos(25),
      O => Mcompar_videoOn_cmp_le0000_lut_9_9_1429
    );
  Mcompar_videoOn_cmp_le0000_cy_9_8 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_8_9_1150,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_9_9_1429,
      O => Mcompar_videoOn_cmp_le0000_cy_9_8_1172
    );
  Mcompar_videoOn_cmp_le0000_lut_10_8 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(26),
      I1 => hPos(27),
      I2 => hPos(28),
      I3 => hPos(29),
      O => Mcompar_videoOn_cmp_le0000_lut_10_8_1220
    );
  Mcompar_videoOn_cmp_le0000_cy_10_7 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_9_8_1172,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_10_8_1220,
      O => Mcompar_videoOn_cmp_le0000_cy_10_1_886
    );
  Mcompar_videoOn_cmp_le0000_cy_11_0 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_10_1_886,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_11_1,
      O => Mcompar_videoOn_cmp_le0000_cy_11_1_898
    );
  Mcompar_videoOn_cmp_le0000_cy_12_0 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_11_1_898,
      DI => hPos_31_1_1884,
      S => Mcompar_videoOn_cmp_le0000_lut_12_1,
      O => RGB_cmp_le0012
    );
  Mcompar_videoOn_cmp_le0000_cy_0_10 : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_0_11,
      O => Mcompar_videoOn_cmp_le0000_cy_0_11_863
    );
  Mcompar_videoOn_cmp_le0000_lut_1_4 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => hPos_3_2_1886,
      I1 => hPos_4_2_1889,
      I2 => hPos_5_2_1892,
      I3 => hPos_6_2_1895,
      O => Mcompar_videoOn_cmp_le0000_lut_1_4_1251
    );
  Mcompar_videoOn_cmp_le0000_cy_1_10 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_0_11_863,
      DI => N1,
      S => Mcompar_videoOn_cmp_le0000_lut_1_4_1251,
      O => Mcompar_videoOn_cmp_le0000_cy_1_11_914
    );
  Mcompar_videoOn_cmp_le0000_lut_2_11 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => hPos_7_2_1898,
      I1 => hPos_8_2_1901,
      O => Mcompar_videoOn_cmp_le0000_lut_2_11_1259
    );
  Mcompar_videoOn_cmp_le0000_cy_2_10 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_1_11_914,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_2_11_1259,
      O => Mcompar_videoOn_cmp_le0000_cy_2_11_955
    );
  Mcompar_videoOn_cmp_le0000_cy_3_10 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_2_11_955,
      DI => N1,
      S => Mcompar_videoOn_cmp_le0000_cy_3_10_rt_1002,
      O => Mcompar_videoOn_cmp_le0000_cy_3_11_980
    );
  Mcompar_videoOn_cmp_le0000_lut_4_11 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(10),
      I1 => hPos(11),
      I2 => hPos(12),
      I3 => hPos(13),
      O => Mcompar_videoOn_cmp_le0000_lut_4_11_1292
    );
  Mcompar_videoOn_cmp_le0000_cy_4_10 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_3_11_980,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_4_11_1292,
      O => Mcompar_videoOn_cmp_le0000_cy_4_11_1022
    );
  Mcompar_videoOn_cmp_le0000_lut_5_10 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(14),
      I1 => hPos(15),
      I2 => hPos(16),
      I3 => hPos(17),
      O => Mcompar_videoOn_cmp_le0000_lut_5_10_1315
    );
  Mcompar_videoOn_cmp_le0000_cy_5_10 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_4_11_1022,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_5_10_1315,
      O => Mcompar_videoOn_cmp_le0000_cy_5_11_1048
    );
  Mcompar_videoOn_cmp_le0000_lut_6_11 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(18),
      I1 => hPos(19),
      I2 => hPos(20),
      I3 => hPos(21),
      O => Mcompar_videoOn_cmp_le0000_lut_6_11_1336
    );
  Mcompar_videoOn_cmp_le0000_cy_6_10 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_5_11_1048,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_6_11_1336,
      O => Mcompar_videoOn_cmp_le0000_cy_6_11_1078
    );
  Mcompar_videoOn_cmp_le0000_lut_7_11 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(22),
      I1 => hPos(23),
      I2 => hPos(24),
      I3 => hPos(25),
      O => Mcompar_videoOn_cmp_le0000_lut_7_11_1361
    );
  Mcompar_videoOn_cmp_le0000_cy_7_10 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_6_11_1078,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_7_11_1361,
      O => Mcompar_videoOn_cmp_le0000_cy_7_11_1103
    );
  Mcompar_videoOn_cmp_le0000_lut_8_11 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(26),
      I1 => hPos(27),
      I2 => hPos(28),
      I3 => hPos(29),
      O => Mcompar_videoOn_cmp_le0000_lut_8_11_1384
    );
  Mcompar_videoOn_cmp_le0000_cy_8_10 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_7_11_1103,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_8_11_1384,
      O => Mcompar_videoOn_cmp_le0000_cy_8_10_1129
    );
  Mcompar_videoOn_cmp_le0000_cy_9_9 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_8_10_1129,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_9_10,
      O => Mcompar_videoOn_cmp_le0000_cy_9_9_1173
    );
  Mcompar_videoOn_cmp_le0000_cy_10_8 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_9_9_1173,
      DI => hPos_31_1_1884,
      S => Mcompar_videoOn_cmp_le0000_lut_10_9,
      O => RGB_cmp_le0013
    );
  Mcompar_videoOn_cmp_le0000_cy_0_11 : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_0_12,
      O => Mcompar_videoOn_cmp_le0000_cy_0_12_864
    );
  Mcompar_videoOn_cmp_le0000_lut_1_5 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => hPos(1),
      I1 => hPos(2),
      O => Mcompar_videoOn_cmp_le0000_lut_1_5_1252
    );
  Mcompar_videoOn_cmp_le0000_cy_1_11 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_0_12_864,
      DI => N1,
      S => Mcompar_videoOn_cmp_le0000_lut_1_5_1252,
      O => Mcompar_videoOn_cmp_le0000_cy_1_12_915
    );
  Mcompar_videoOn_cmp_le0000_cy_2_11 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_1_12_915,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_2_12,
      O => Mcompar_videoOn_cmp_le0000_cy_2_12_956
    );
  Mcompar_videoOn_cmp_le0000_lut_3_5 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => hPos(4),
      I1 => hPos(5),
      I2 => hPos(6),
      O => Mcompar_videoOn_cmp_le0000_lut_3_5_1286
    );
  Mcompar_videoOn_cmp_le0000_cy_3_11 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_2_12_956,
      DI => N1,
      S => Mcompar_videoOn_cmp_le0000_lut_3_5_1286,
      O => Mcompar_videoOn_cmp_le0000_cy_3_12_981
    );
  Mcompar_videoOn_cmp_le0000_lut_4_12 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => hPos(7),
      I1 => hPos(8),
      O => Mcompar_videoOn_cmp_le0000_lut_4_12_1293
    );
  Mcompar_videoOn_cmp_le0000_cy_4_11 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_3_12_981,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_4_12_1293,
      O => Mcompar_videoOn_cmp_le0000_cy_4_12_1023
    );
  Mcompar_videoOn_cmp_le0000_cy_5_11 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_4_12_1023,
      DI => N1,
      S => Mcompar_videoOn_cmp_le0000_cy_5_11_rt_1070,
      O => Mcompar_videoOn_cmp_le0000_cy_5_12_1049
    );
  Mcompar_videoOn_cmp_le0000_lut_6_12 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(10),
      I1 => hPos(11),
      I2 => hPos(12),
      I3 => hPos(13),
      O => Mcompar_videoOn_cmp_le0000_lut_6_12_1337
    );
  Mcompar_videoOn_cmp_le0000_cy_6_11 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_5_12_1049,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_6_12_1337,
      O => Mcompar_videoOn_cmp_le0000_cy_6_12_1079
    );
  Mcompar_videoOn_cmp_le0000_lut_7_12 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(14),
      I1 => hPos(15),
      I2 => hPos(16),
      I3 => hPos(17),
      O => Mcompar_videoOn_cmp_le0000_lut_7_12_1362
    );
  Mcompar_videoOn_cmp_le0000_cy_7_11 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_6_12_1079,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_7_12_1362,
      O => Mcompar_videoOn_cmp_le0000_cy_7_12_1104
    );
  Mcompar_videoOn_cmp_le0000_lut_8_12 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(18),
      I1 => hPos(19),
      I2 => hPos(20),
      I3 => hPos(21),
      O => Mcompar_videoOn_cmp_le0000_lut_8_12_1385
    );
  Mcompar_videoOn_cmp_le0000_cy_8_11 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_7_12_1104,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_8_12_1385,
      O => Mcompar_videoOn_cmp_le0000_cy_8_11_1130
    );
  Mcompar_videoOn_cmp_le0000_lut_9_11 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(22),
      I1 => hPos(23),
      I2 => hPos(24),
      I3 => hPos(25),
      O => Mcompar_videoOn_cmp_le0000_lut_9_11_1409
    );
  Mcompar_videoOn_cmp_le0000_cy_9_10 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_8_11_1130,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_9_11_1409,
      O => Mcompar_videoOn_cmp_le0000_cy_9_10_1153
    );
  Mcompar_videoOn_cmp_le0000_lut_10_10 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(26),
      I1 => hPos(27),
      I2 => hPos(28),
      I3 => hPos(29),
      O => Mcompar_videoOn_cmp_le0000_lut_10_10_1201
    );
  Mcompar_videoOn_cmp_le0000_cy_10_9 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_9_10_1153,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_10_10_1201,
      O => Mcompar_videoOn_cmp_le0000_cy_10_2_889
    );
  Mcompar_videoOn_cmp_le0000_cy_11_1 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_10_2_889,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_11_2,
      O => Mcompar_videoOn_cmp_le0000_cy_11_2_899
    );
  Mcompar_videoOn_cmp_le0000_cy_12_1 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_11_2_899,
      DI => hPos_31_1_1884,
      S => Mcompar_videoOn_cmp_le0000_lut_12_2,
      O => RGB_cmp_le0017
    );
  Mcompar_videoOn_cmp_le0000_cy_0_12 : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_0_13,
      O => Mcompar_videoOn_cmp_le0000_cy_0_13_865
    );
  Mcompar_videoOn_cmp_le0000_cy_1_12 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_0_13_865,
      DI => N1,
      S => Mcompar_videoOn_cmp_le0000_cy_1_12_rt_936,
      O => Mcompar_videoOn_cmp_le0000_cy_1_13_916
    );
  Mcompar_videoOn_cmp_le0000_cy_2_12 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_1_13_916,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_2_13,
      O => Mcompar_videoOn_cmp_le0000_cy_2_13_957
    );
  Mcompar_videoOn_cmp_le0000_cy_3_12 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_2_13_957,
      DI => N1,
      S => Mcompar_videoOn_cmp_le0000_cy_3_12_rt_1003,
      O => Mcompar_videoOn_cmp_le0000_cy_3_13_982
    );
  Mcompar_videoOn_cmp_le0000_lut_4_13 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => hPos(4),
      I1 => hPos(5),
      O => Mcompar_videoOn_cmp_le0000_lut_4_13_1294
    );
  Mcompar_videoOn_cmp_le0000_cy_4_12 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_3_13_982,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_4_13_1294,
      O => Mcompar_videoOn_cmp_le0000_cy_4_13_1024
    );
  Mcompar_videoOn_cmp_le0000_cy_5_12 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_4_13_1024,
      DI => N1,
      S => Mcompar_videoOn_cmp_le0000_cy_5_12_rt_1071,
      O => Mcompar_videoOn_cmp_le0000_cy_5_13_1050
    );
  Mcompar_videoOn_cmp_le0000_cy_6_12 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_5_13_1050,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_6_13,
      O => Mcompar_videoOn_cmp_le0000_cy_6_13_1080
    );
  Mcompar_videoOn_cmp_le0000_cy_7_12 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_6_13_1080,
      DI => N1,
      S => Mcompar_videoOn_cmp_le0000_cy_7_12_rt_1125,
      O => Mcompar_videoOn_cmp_le0000_cy_7_13_1105
    );
  Mcompar_videoOn_cmp_le0000_lut_8_13 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(9),
      I1 => hPos(10),
      I2 => hPos(11),
      I3 => hPos(12),
      O => Mcompar_videoOn_cmp_le0000_lut_8_13_1386
    );
  Mcompar_videoOn_cmp_le0000_cy_8_12 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_7_13_1105,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_8_13_1386,
      O => Mcompar_videoOn_cmp_le0000_cy_8_12_1131
    );
  Mcompar_videoOn_cmp_le0000_lut_9_12 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(13),
      I1 => hPos(14),
      I2 => hPos(15),
      I3 => hPos(16),
      O => Mcompar_videoOn_cmp_le0000_lut_9_12_1410
    );
  Mcompar_videoOn_cmp_le0000_cy_9_11 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_8_12_1131,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_9_12_1410,
      O => Mcompar_videoOn_cmp_le0000_cy_9_11_1154
    );
  Mcompar_videoOn_cmp_le0000_lut_10_11 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(17),
      I1 => hPos(18),
      I2 => hPos(19),
      I3 => hPos(20),
      O => Mcompar_videoOn_cmp_le0000_lut_10_11_1202
    );
  Mcompar_videoOn_cmp_le0000_cy_10_10 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_9_11_1154,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_10_11_1202,
      O => Mcompar_videoOn_cmp_le0000_cy_10_3_890
    );
  Mcompar_videoOn_cmp_le0000_lut_11_3 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(21),
      I1 => hPos(22),
      I2 => hPos(23),
      I3 => hPos(24),
      O => Mcompar_videoOn_cmp_le0000_lut_11_3_1226
    );
  Mcompar_videoOn_cmp_le0000_cy_11_2 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_10_3_890,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_11_3_1226,
      O => Mcompar_videoOn_cmp_le0000_cy_11_3_900
    );
  Mcompar_videoOn_cmp_le0000_lut_12_3 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(25),
      I1 => hPos(26),
      I2 => hPos(27),
      I3 => hPos(28),
      O => Mcompar_videoOn_cmp_le0000_lut_12_3_1236
    );
  Mcompar_videoOn_cmp_le0000_cy_12_2 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_11_3_900,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_12_3_1236,
      O => Mcompar_videoOn_cmp_le0000_cy(12)
    );
  Mcompar_videoOn_cmp_le0000_lut_13_Q : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => hPos(29),
      I1 => hPos(30),
      O => Mcompar_videoOn_cmp_le0000_lut(13)
    );
  Mcompar_videoOn_cmp_le0000_cy_13_Q : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy(12),
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut(13),
      O => Mcompar_videoOn_cmp_le0000_cy(13)
    );
  Mcompar_videoOn_cmp_le0000_cy_14_Q : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy(13),
      DI => hPos_31_1_1884,
      S => Mcompar_videoOn_cmp_le0000_lut(14),
      O => RGB_cmp_le0019
    );
  Mcompar_videoOn_cmp_le0000_cy_0_13 : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_0_14,
      O => Mcompar_videoOn_cmp_le0000_cy_0_14_866
    );
  Mcompar_videoOn_cmp_le0000_cy_1_13 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_0_14_866,
      DI => N1,
      S => Mcompar_videoOn_cmp_le0000_cy_1_13_rt_937,
      O => Mcompar_videoOn_cmp_le0000_cy_1_14_917
    );
  Mcompar_videoOn_cmp_le0000_cy_2_13 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_1_14_917,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_2_14,
      O => Mcompar_videoOn_cmp_le0000_cy_2_14_958
    );
  Mcompar_videoOn_cmp_le0000_cy_3_13 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_2_14_958,
      DI => N1,
      S => Mcompar_videoOn_cmp_le0000_cy_3_13_rt_1004,
      O => Mcompar_videoOn_cmp_le0000_cy_3_14_983
    );
  Mcompar_videoOn_cmp_le0000_cy_4_13 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_3_14_983,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_4_14,
      O => Mcompar_videoOn_cmp_le0000_cy_4_14_1025
    );
  Mcompar_videoOn_cmp_le0000_lut_5_11 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => hPos(5),
      I1 => hPos(6),
      I2 => hPos(7),
      I3 => hPos(8),
      O => Mcompar_videoOn_cmp_le0000_lut_5_11_1316
    );
  Mcompar_videoOn_cmp_le0000_cy_5_13 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_4_14_1025,
      DI => N1,
      S => Mcompar_videoOn_cmp_le0000_lut_5_11_1316,
      O => Mcompar_videoOn_cmp_le0000_cy_5_14_1051
    );
  Mcompar_videoOn_cmp_le0000_lut_6_14 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(9),
      I1 => hPos(10),
      I2 => hPos(11),
      I3 => hPos(12),
      O => Mcompar_videoOn_cmp_le0000_lut_6_14_1339
    );
  Mcompar_videoOn_cmp_le0000_cy_6_13 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_5_14_1051,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_6_14_1339,
      O => Mcompar_videoOn_cmp_le0000_cy_6_14_1081
    );
  Mcompar_videoOn_cmp_le0000_lut_7_13 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(13),
      I1 => hPos(14),
      I2 => hPos(15),
      I3 => hPos(16),
      O => Mcompar_videoOn_cmp_le0000_lut_7_13_1363
    );
  Mcompar_videoOn_cmp_le0000_cy_7_13 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_6_14_1081,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_7_13_1363,
      O => Mcompar_videoOn_cmp_le0000_cy_7_14_1106
    );
  Mcompar_videoOn_cmp_le0000_lut_8_14 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(17),
      I1 => hPos(18),
      I2 => hPos(19),
      I3 => hPos(20),
      O => Mcompar_videoOn_cmp_le0000_lut_8_14_1387
    );
  Mcompar_videoOn_cmp_le0000_cy_8_13 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_7_14_1106,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_8_14_1387,
      O => Mcompar_videoOn_cmp_le0000_cy_8_13_1132
    );
  Mcompar_videoOn_cmp_le0000_lut_9_13 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(21),
      I1 => hPos(22),
      I2 => hPos(23),
      I3 => hPos(24),
      O => Mcompar_videoOn_cmp_le0000_lut_9_13_1411
    );
  Mcompar_videoOn_cmp_le0000_cy_9_12 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_8_13_1132,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_9_13_1411,
      O => Mcompar_videoOn_cmp_le0000_cy_9_12_1155
    );
  Mcompar_videoOn_cmp_le0000_lut_10_12 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(25),
      I1 => hPos(26),
      I2 => hPos(27),
      I3 => hPos(28),
      O => Mcompar_videoOn_cmp_le0000_lut_10_12_1203
    );
  Mcompar_videoOn_cmp_le0000_cy_10_11 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_9_12_1155,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_10_12_1203,
      O => Mcompar_videoOn_cmp_le0000_cy_10_4_891
    );
  Mcompar_videoOn_cmp_le0000_lut_11_4 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => hPos(29),
      I1 => hPos(30),
      O => Mcompar_videoOn_cmp_le0000_lut_11_4_1227
    );
  Mcompar_videoOn_cmp_le0000_cy_11_3 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_10_4_891,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_11_4_1227,
      O => Mcompar_videoOn_cmp_le0000_cy_11_4_901
    );
  Mcompar_videoOn_cmp_le0000_cy_12_3 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_11_4_901,
      DI => hPos_31_1_1884,
      S => Mcompar_videoOn_cmp_le0000_lut_12_4,
      O => RGB_cmp_le0020
    );
  Mcompar_videoOn_cmp_le0000_cy_0_14 : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_0_15,
      O => Mcompar_videoOn_cmp_le0000_cy_0_15_867
    );
  Mcompar_videoOn_cmp_le0000_cy_1_14 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_0_15_867,
      DI => N1,
      S => Mcompar_videoOn_cmp_le0000_cy_1_14_rt_938,
      O => Mcompar_videoOn_cmp_le0000_cy_1_15_918
    );
  Mcompar_videoOn_cmp_le0000_cy_2_14 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_1_15_918,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_2_15,
      O => Mcompar_videoOn_cmp_le0000_cy_2_15_959
    );
  Mcompar_videoOn_cmp_le0000_cy_3_14 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_2_15_959,
      DI => N1,
      S => Mcompar_videoOn_cmp_le0000_cy_3_14_rt_1005,
      O => Mcompar_videoOn_cmp_le0000_cy_3_15_984
    );
  Mcompar_videoOn_cmp_le0000_cy_4_14 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_3_15_984,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_4_15,
      O => Mcompar_videoOn_cmp_le0000_cy_4_15_1026
    );
  Mcompar_videoOn_cmp_le0000_cy_5_14 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_4_15_1026,
      DI => N1,
      S => Mcompar_videoOn_cmp_le0000_cy_5_14_rt_1072,
      O => Mcompar_videoOn_cmp_le0000_cy_5_15_1052
    );
  Mcompar_videoOn_cmp_le0000_cy_6_14 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_5_15_1052,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_6_15,
      O => Mcompar_videoOn_cmp_le0000_cy_6_15_1082
    );
  Mcompar_videoOn_cmp_le0000_cy_7_14 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_6_15_1082,
      DI => N1,
      S => Mcompar_videoOn_cmp_le0000_cy_7_14_rt_1126,
      O => Mcompar_videoOn_cmp_le0000_cy_7_15_1107
    );
  Mcompar_videoOn_cmp_le0000_lut_8_15 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(8),
      I1 => hPos(9),
      I2 => hPos(10),
      I3 => hPos(11),
      O => Mcompar_videoOn_cmp_le0000_lut_8_15_1388
    );
  Mcompar_videoOn_cmp_le0000_cy_8_14 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_7_15_1107,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_8_15_1388,
      O => Mcompar_videoOn_cmp_le0000_cy_8_14_1133
    );
  Mcompar_videoOn_cmp_le0000_lut_9_14 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(12),
      I1 => hPos(13),
      I2 => hPos(14),
      I3 => hPos(15),
      O => Mcompar_videoOn_cmp_le0000_lut_9_14_1412
    );
  Mcompar_videoOn_cmp_le0000_cy_9_13 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_8_14_1133,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_9_14_1412,
      O => Mcompar_videoOn_cmp_le0000_cy_9_13_1156
    );
  Mcompar_videoOn_cmp_le0000_lut_10_13 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(16),
      I1 => hPos(17),
      I2 => hPos(18),
      I3 => hPos(19),
      O => Mcompar_videoOn_cmp_le0000_lut_10_13_1204
    );
  Mcompar_videoOn_cmp_le0000_cy_10_12 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_9_13_1156,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_10_13_1204,
      O => Mcompar_videoOn_cmp_le0000_cy_10_5_892
    );
  Mcompar_videoOn_cmp_le0000_lut_11_5 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(20),
      I1 => hPos(21),
      I2 => hPos(22),
      I3 => hPos(23),
      O => Mcompar_videoOn_cmp_le0000_lut_11_5_1228
    );
  Mcompar_videoOn_cmp_le0000_cy_11_4 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_10_5_892,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_11_5_1228,
      O => Mcompar_videoOn_cmp_le0000_cy_11_5_902
    );
  Mcompar_videoOn_cmp_le0000_lut_12_5 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(24),
      I1 => hPos(25),
      I2 => hPos(26),
      I3 => hPos(27),
      O => Mcompar_videoOn_cmp_le0000_lut_12_5_1238
    );
  Mcompar_videoOn_cmp_le0000_cy_12_4 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_11_5_902,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_12_5_1238,
      O => Mcompar_videoOn_cmp_le0000_cy_12_1_908
    );
  Mcompar_videoOn_cmp_le0000_lut_13_1 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => hPos(28),
      I1 => hPos(29),
      I2 => hPos(30),
      O => Mcompar_videoOn_cmp_le0000_lut_13_1_1244
    );
  Mcompar_videoOn_cmp_le0000_cy_13_0 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_12_1_908,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_13_1_1244,
      O => Mcompar_videoOn_cmp_le0000_cy_13_1
    );
  Mcompar_videoOn_cmp_le0000_cy_14_0 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_13_1,
      DI => hPos_31_1_1884,
      S => Mcompar_videoOn_cmp_le0000_lut_14_1,
      O => RGB_cmp_le0021
    );
  Mcompar_videoOn_cmp_le0000_cy_0_15 : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_0_16,
      O => Mcompar_videoOn_cmp_le0000_cy_0_16_868
    );
  Mcompar_videoOn_cmp_le0000_cy_1_15 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_0_16_868,
      DI => N1,
      S => Mcompar_videoOn_cmp_le0000_cy_1_15_rt_939,
      O => Mcompar_videoOn_cmp_le0000_cy_1_16_919
    );
  Mcompar_videoOn_cmp_le0000_cy_2_15 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_1_16_919,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_2_16,
      O => Mcompar_videoOn_cmp_le0000_cy_2_16_960
    );
  Mcompar_videoOn_cmp_le0000_lut_3_6 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => hPos(3),
      I1 => hPos(4),
      O => Mcompar_videoOn_cmp_le0000_lut_3_6_1287
    );
  Mcompar_videoOn_cmp_le0000_cy_3_15 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_2_16_960,
      DI => N1,
      S => Mcompar_videoOn_cmp_le0000_lut_3_6_1287,
      O => Mcompar_videoOn_cmp_le0000_cy_3_16_985
    );
  Mcompar_videoOn_cmp_le0000_lut_4_16 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => hPos(5),
      I1 => hPos(6),
      O => Mcompar_videoOn_cmp_le0000_lut_4_16_1297
    );
  Mcompar_videoOn_cmp_le0000_cy_4_15 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_3_16_985,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_4_16_1297,
      O => Mcompar_videoOn_cmp_le0000_cy_4_16_1027
    );
  Mcompar_videoOn_cmp_le0000_lut_5_12 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => hPos(7),
      I1 => hPos(8),
      O => Mcompar_videoOn_cmp_le0000_lut_5_12_1317
    );
  Mcompar_videoOn_cmp_le0000_cy_5_15 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_4_16_1027,
      DI => N1,
      S => Mcompar_videoOn_cmp_le0000_lut_5_12_1317,
      O => Mcompar_videoOn_cmp_le0000_cy_5_16_1053
    );
  Mcompar_videoOn_cmp_le0000_lut_6_16 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(9),
      I1 => hPos(10),
      I2 => hPos(11),
      I3 => hPos(12),
      O => Mcompar_videoOn_cmp_le0000_lut_6_16_1341
    );
  Mcompar_videoOn_cmp_le0000_cy_6_15 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_5_16_1053,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_6_16_1341,
      O => Mcompar_videoOn_cmp_le0000_cy_6_16_1083
    );
  Mcompar_videoOn_cmp_le0000_lut_7_14 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(13),
      I1 => hPos(14),
      I2 => hPos(15),
      I3 => hPos(16),
      O => Mcompar_videoOn_cmp_le0000_lut_7_14_1364
    );
  Mcompar_videoOn_cmp_le0000_cy_7_15 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_6_16_1083,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_7_14_1364,
      O => Mcompar_videoOn_cmp_le0000_cy_7_16_1108
    );
  Mcompar_videoOn_cmp_le0000_lut_8_16 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(17),
      I1 => hPos(18),
      I2 => hPos(19),
      I3 => hPos(20),
      O => Mcompar_videoOn_cmp_le0000_lut_8_16_1389
    );
  Mcompar_videoOn_cmp_le0000_cy_8_15 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_7_16_1108,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_8_16_1389,
      O => Mcompar_videoOn_cmp_le0000_cy_8_15_1134
    );
  Mcompar_videoOn_cmp_le0000_lut_9_15 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(21),
      I1 => hPos(22),
      I2 => hPos(23),
      I3 => hPos(24),
      O => Mcompar_videoOn_cmp_le0000_lut_9_15_1413
    );
  Mcompar_videoOn_cmp_le0000_cy_9_14 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_8_15_1134,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_9_15_1413,
      O => Mcompar_videoOn_cmp_le0000_cy_9_14_1157
    );
  Mcompar_videoOn_cmp_le0000_lut_10_14 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(25),
      I1 => hPos(26),
      I2 => hPos(27),
      I3 => hPos(28),
      O => Mcompar_videoOn_cmp_le0000_lut_10_14_1205
    );
  Mcompar_videoOn_cmp_le0000_cy_10_13 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_9_14_1157,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_10_14_1205,
      O => Mcompar_videoOn_cmp_le0000_cy_10_6_893
    );
  Mcompar_videoOn_cmp_le0000_lut_11_6 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => hPos(29),
      I1 => hPos(30),
      O => Mcompar_videoOn_cmp_le0000_lut_11_6_1229
    );
  Mcompar_videoOn_cmp_le0000_cy_11_5 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_10_6_893,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_11_6_1229,
      O => Mcompar_videoOn_cmp_le0000_cy_11_6_903
    );
  Mcompar_videoOn_cmp_le0000_cy_12_5 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_11_6_903,
      DI => hPos_31_1_1884,
      S => Mcompar_videoOn_cmp_le0000_lut_12_6,
      O => RGB_cmp_le0022
    );
  Mcompar_videoOn_cmp_le0000_cy_0_16 : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_0_17,
      O => Mcompar_videoOn_cmp_le0000_cy_0_17_869
    );
  Mcompar_videoOn_cmp_le0000_cy_1_16 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_0_17_869,
      DI => N1,
      S => Mcompar_videoOn_cmp_le0000_cy_1_16_rt_940,
      O => Mcompar_videoOn_cmp_le0000_cy_1_17_920
    );
  Mcompar_videoOn_cmp_le0000_cy_2_16 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_1_17_920,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_2_17,
      O => Mcompar_videoOn_cmp_le0000_cy_2_17_961
    );
  Mcompar_videoOn_cmp_le0000_cy_3_16 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_2_17_961,
      DI => N1,
      S => Mcompar_videoOn_cmp_le0000_cy_3_16_rt_1006,
      O => Mcompar_videoOn_cmp_le0000_cy_3_17_986
    );
  Mcompar_videoOn_cmp_le0000_cy_4_16 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_3_17_986,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_4_17,
      O => Mcompar_videoOn_cmp_le0000_cy_4_17_1028
    );
  Mcompar_videoOn_cmp_le0000_cy_5_16 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_4_17_1028,
      DI => N1,
      S => Mcompar_videoOn_cmp_le0000_cy_5_16_rt_1073,
      O => Mcompar_videoOn_cmp_le0000_cy_5_17_1054
    );
  Mcompar_videoOn_cmp_le0000_lut_6_17 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(7),
      I1 => hPos(8),
      I2 => hPos(9),
      I3 => hPos(10),
      O => Mcompar_videoOn_cmp_le0000_lut_6_17_1342
    );
  Mcompar_videoOn_cmp_le0000_cy_6_16 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_5_17_1054,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_6_17_1342,
      O => Mcompar_videoOn_cmp_le0000_cy_6_17_1084
    );
  Mcompar_videoOn_cmp_le0000_lut_7_15 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(11),
      I1 => hPos(12),
      I2 => hPos(13),
      I3 => hPos(14),
      O => Mcompar_videoOn_cmp_le0000_lut_7_15_1365
    );
  Mcompar_videoOn_cmp_le0000_cy_7_16 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_6_17_1084,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_7_15_1365,
      O => Mcompar_videoOn_cmp_le0000_cy_7_17_1109
    );
  Mcompar_videoOn_cmp_le0000_lut_8_17 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(15),
      I1 => hPos(16),
      I2 => hPos(17),
      I3 => hPos(18),
      O => Mcompar_videoOn_cmp_le0000_lut_8_17_1390
    );
  Mcompar_videoOn_cmp_le0000_cy_8_16 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_7_17_1109,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_8_17_1390,
      O => Mcompar_videoOn_cmp_le0000_cy_8_16_1135
    );
  Mcompar_videoOn_cmp_le0000_lut_9_16 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(19),
      I1 => hPos(20),
      I2 => hPos(21),
      I3 => hPos(22),
      O => Mcompar_videoOn_cmp_le0000_lut_9_16_1414
    );
  Mcompar_videoOn_cmp_le0000_cy_9_15 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_8_16_1135,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_9_16_1414,
      O => Mcompar_videoOn_cmp_le0000_cy_9_15_1158
    );
  Mcompar_videoOn_cmp_le0000_lut_10_15 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(23),
      I1 => hPos(24),
      I2 => hPos(25),
      I3 => hPos(26),
      O => Mcompar_videoOn_cmp_le0000_lut_10_15_1206
    );
  Mcompar_videoOn_cmp_le0000_cy_10_14 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_9_15_1158,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_10_15_1206,
      O => Mcompar_videoOn_cmp_le0000_cy_10_7_894
    );
  Mcompar_videoOn_cmp_le0000_lut_11_7 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(27),
      I1 => hPos(28),
      I2 => hPos(29),
      I3 => hPos(30),
      O => Mcompar_videoOn_cmp_le0000_lut_11_7_1230
    );
  Mcompar_videoOn_cmp_le0000_cy_11_6 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_10_7_894,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_11_7_1230,
      O => Mcompar_videoOn_cmp_le0000_cy_11_7_904
    );
  Mcompar_videoOn_cmp_le0000_cy_12_6 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_11_7_904,
      DI => hPos_31_1_1884,
      S => Mcompar_videoOn_cmp_le0000_lut_12_7,
      O => RGB_cmp_le0023
    );
  Mcompar_videoOn_cmp_le0000_lut_0_18 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => hPos(0),
      I1 => hPos(1),
      O => Mcompar_videoOn_cmp_le0000_lut_0_18_1184
    );
  Mcompar_videoOn_cmp_le0000_cy_0_17 : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_0_18_1184,
      O => Mcompar_videoOn_cmp_le0000_cy_0_18_870
    );
  Mcompar_videoOn_cmp_le0000_cy_1_17 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_0_18_870,
      DI => N1,
      S => Mcompar_videoOn_cmp_le0000_cy_1_17_rt_941,
      O => Mcompar_videoOn_cmp_le0000_cy_1_18_921
    );
  Mcompar_videoOn_cmp_le0000_lut_2_18 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => hPos(3),
      I1 => hPos(4),
      O => Mcompar_videoOn_cmp_le0000_lut_2_18_1266
    );
  Mcompar_videoOn_cmp_le0000_cy_2_17 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_1_18_921,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_2_18_1266,
      O => Mcompar_videoOn_cmp_le0000_cy_2_18_962
    );
  Mcompar_videoOn_cmp_le0000_cy_3_17 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_2_18_962,
      DI => N1,
      S => Mcompar_videoOn_cmp_le0000_cy_3_17_rt_1007,
      O => Mcompar_videoOn_cmp_le0000_cy_3_18_987
    );
  Mcompar_videoOn_cmp_le0000_cy_4_17 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_3_18_987,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_4_18,
      O => Mcompar_videoOn_cmp_le0000_cy_4_18_1029
    );
  Mcompar_videoOn_cmp_le0000_lut_5_13 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => hPos(7),
      I1 => hPos(8),
      O => Mcompar_videoOn_cmp_le0000_lut_5_13_1318
    );
  Mcompar_videoOn_cmp_le0000_cy_5_17 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_4_18_1029,
      DI => N1,
      S => Mcompar_videoOn_cmp_le0000_lut_5_13_1318,
      O => Mcompar_videoOn_cmp_le0000_cy_5_18_1055
    );
  Mcompar_videoOn_cmp_le0000_lut_6_18 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(9),
      I1 => hPos(10),
      I2 => hPos(11),
      I3 => hPos(12),
      O => Mcompar_videoOn_cmp_le0000_lut_6_18_1343
    );
  Mcompar_videoOn_cmp_le0000_cy_6_17 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_5_18_1055,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_6_18_1343,
      O => Mcompar_videoOn_cmp_le0000_cy_6_18_1085
    );
  Mcompar_videoOn_cmp_le0000_lut_7_16 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(13),
      I1 => hPos(14),
      I2 => hPos(15),
      I3 => hPos(16),
      O => Mcompar_videoOn_cmp_le0000_lut_7_16_1366
    );
  Mcompar_videoOn_cmp_le0000_cy_7_17 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_6_18_1085,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_7_16_1366,
      O => Mcompar_videoOn_cmp_le0000_cy_7_18_1110
    );
  Mcompar_videoOn_cmp_le0000_lut_8_18 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(17),
      I1 => hPos(18),
      I2 => hPos(19),
      I3 => hPos(20),
      O => Mcompar_videoOn_cmp_le0000_lut_8_18_1391
    );
  Mcompar_videoOn_cmp_le0000_cy_8_17 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_7_18_1110,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_8_18_1391,
      O => Mcompar_videoOn_cmp_le0000_cy_8_17_1136
    );
  Mcompar_videoOn_cmp_le0000_lut_9_17 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(21),
      I1 => hPos(22),
      I2 => hPos(23),
      I3 => hPos(24),
      O => Mcompar_videoOn_cmp_le0000_lut_9_17_1415
    );
  Mcompar_videoOn_cmp_le0000_cy_9_16 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_8_17_1136,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_9_17_1415,
      O => Mcompar_videoOn_cmp_le0000_cy_9_16_1159
    );
  Mcompar_videoOn_cmp_le0000_lut_10_16 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(25),
      I1 => hPos(26),
      I2 => hPos(27),
      I3 => hPos(28),
      O => Mcompar_videoOn_cmp_le0000_lut_10_16_1207
    );
  Mcompar_videoOn_cmp_le0000_cy_10_15 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_9_16_1159,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_10_16_1207,
      O => Mcompar_videoOn_cmp_le0000_cy_10_8_895
    );
  Mcompar_videoOn_cmp_le0000_lut_11_8 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => hPos(29),
      I1 => hPos(30),
      O => Mcompar_videoOn_cmp_le0000_lut_11_8_1231
    );
  Mcompar_videoOn_cmp_le0000_cy_11_7 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_10_8_895,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_11_8_1231,
      O => Mcompar_videoOn_cmp_le0000_cy_11_8_905
    );
  Mcompar_videoOn_cmp_le0000_cy_12_7 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_11_8_905,
      DI => hPos_31_1_1884,
      S => Mcompar_videoOn_cmp_le0000_lut_12_8,
      O => RGB_cmp_le0024
    );
  Mcompar_videoOn_cmp_le0000_cy_0_18 : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_0_19,
      O => Mcompar_videoOn_cmp_le0000_cy_0_19_871
    );
  Mcompar_videoOn_cmp_le0000_lut_1_6 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => hPos(1),
      I1 => hPos(2),
      I2 => hPos(3),
      O => Mcompar_videoOn_cmp_le0000_lut_1_6_1253
    );
  Mcompar_videoOn_cmp_le0000_cy_1_18 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_0_19_871,
      DI => N1,
      S => Mcompar_videoOn_cmp_le0000_lut_1_6_1253,
      O => Mcompar_videoOn_cmp_le0000_cy_1_19_922
    );
  Mcompar_videoOn_cmp_le0000_lut_2_19 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos_4_2_1889,
      I1 => hPos(5),
      I2 => hPos(6),
      I3 => hPos(7),
      O => Mcompar_videoOn_cmp_le0000_lut_2_19_1267
    );
  Mcompar_videoOn_cmp_le0000_cy_2_18 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_1_19_922,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_2_19_1267,
      O => Mcompar_videoOn_cmp_le0000_cy_2_19_963
    );
  Mcompar_videoOn_cmp_le0000_cy_3_18 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_2_19_963,
      DI => N1,
      S => Mcompar_videoOn_cmp_le0000_cy_3_18_rt_1008,
      O => Mcompar_videoOn_cmp_le0000_cy_3_19_988
    );
  Mcompar_videoOn_cmp_le0000_lut_4_19 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(9),
      I1 => hPos(10),
      I2 => hPos(11),
      I3 => hPos(12),
      O => Mcompar_videoOn_cmp_le0000_lut_4_19_1300
    );
  Mcompar_videoOn_cmp_le0000_cy_4_18 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_3_19_988,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_4_19_1300,
      O => Mcompar_videoOn_cmp_le0000_cy_4_19_1030
    );
  Mcompar_videoOn_cmp_le0000_lut_5_14 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(13),
      I1 => hPos(14),
      I2 => hPos(15),
      I3 => hPos(16),
      O => Mcompar_videoOn_cmp_le0000_lut_5_14_1319
    );
  Mcompar_videoOn_cmp_le0000_cy_5_18 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_4_19_1030,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_5_14_1319,
      O => Mcompar_videoOn_cmp_le0000_cy_5_19_1056
    );
  Mcompar_videoOn_cmp_le0000_lut_6_19 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(17),
      I1 => hPos(18),
      I2 => hPos(19),
      I3 => hPos(20),
      O => Mcompar_videoOn_cmp_le0000_lut_6_19_1344
    );
  Mcompar_videoOn_cmp_le0000_cy_6_18 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_5_19_1056,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_6_19_1344,
      O => Mcompar_videoOn_cmp_le0000_cy_6_19_1086
    );
  Mcompar_videoOn_cmp_le0000_lut_7_17 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(21),
      I1 => hPos(22),
      I2 => hPos(23),
      I3 => hPos(24),
      O => Mcompar_videoOn_cmp_le0000_lut_7_17_1367
    );
  Mcompar_videoOn_cmp_le0000_cy_7_18 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_6_19_1086,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_7_17_1367,
      O => Mcompar_videoOn_cmp_le0000_cy_7_19_1111
    );
  Mcompar_videoOn_cmp_le0000_lut_8_19 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(25),
      I1 => hPos(26),
      I2 => hPos(27),
      I3 => hPos(28),
      O => Mcompar_videoOn_cmp_le0000_lut_8_19_1392
    );
  Mcompar_videoOn_cmp_le0000_cy_8_18 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_7_19_1111,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_8_19_1392,
      O => Mcompar_videoOn_cmp_le0000_cy_8_18_1137
    );
  Mcompar_videoOn_cmp_le0000_lut_9_18 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => hPos(29),
      I1 => hPos(30),
      O => Mcompar_videoOn_cmp_le0000_lut_9_18_1416
    );
  Mcompar_videoOn_cmp_le0000_cy_9_17 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_8_18_1137,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_9_18_1416,
      O => Mcompar_videoOn_cmp_le0000_cy_9_17_1160
    );
  Mcompar_videoOn_cmp_le0000_cy_10_16 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_9_17_1160,
      DI => hPos_31_1_1884,
      S => Mcompar_videoOn_cmp_le0000_lut_10_17,
      O => RGB_cmp_le0026
    );
  Mcompar_videoOn_cmp_le0000_cy_0_19 : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_0_20,
      O => Mcompar_videoOn_cmp_le0000_cy_0_20_873
    );
  Mcompar_videoOn_cmp_le0000_lut_1_7 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => hPos_1_2_1859,
      I1 => hPos_2_2_1880,
      O => Mcompar_videoOn_cmp_le0000_lut_1_7_1254
    );
  Mcompar_videoOn_cmp_le0000_cy_1_19 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_0_20_873,
      DI => N1,
      S => Mcompar_videoOn_cmp_le0000_lut_1_7_1254,
      O => Mcompar_videoOn_cmp_le0000_cy_1_20_924
    );
  Mcompar_videoOn_cmp_le0000_cy_2_19 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_1_20_924,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_2_20,
      O => Mcompar_videoOn_cmp_le0000_cy_2_20_965
    );
  Mcompar_videoOn_cmp_le0000_cy_3_19 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_2_20_965,
      DI => N1,
      S => Mcompar_videoOn_cmp_le0000_cy_3_19_rt_1009,
      O => Mcompar_videoOn_cmp_le0000_cy_3_20_990
    );
  Mcompar_videoOn_cmp_le0000_cy_4_19 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_3_20_990,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_4_20,
      O => Mcompar_videoOn_cmp_le0000_cy_4_20_1032
    );
  Mcompar_videoOn_cmp_le0000_lut_5_15 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => hPos(6),
      I1 => hPos(7),
      I2 => hPos(8),
      O => Mcompar_videoOn_cmp_le0000_lut_5_15_1320
    );
  Mcompar_videoOn_cmp_le0000_cy_5_19 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_4_20_1032,
      DI => N1,
      S => Mcompar_videoOn_cmp_le0000_lut_5_15_1320,
      O => Mcompar_videoOn_cmp_le0000_cy_5_20_1058
    );
  Mcompar_videoOn_cmp_le0000_lut_6_20 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(9),
      I1 => hPos(10),
      I2 => hPos(11),
      I3 => hPos(12),
      O => Mcompar_videoOn_cmp_le0000_lut_6_20_1346
    );
  Mcompar_videoOn_cmp_le0000_cy_6_19 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_5_20_1058,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_6_20_1346,
      O => Mcompar_videoOn_cmp_le0000_cy_6_20_1088
    );
  Mcompar_videoOn_cmp_le0000_lut_7_18 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(13),
      I1 => hPos(14),
      I2 => hPos(15),
      I3 => hPos(16),
      O => Mcompar_videoOn_cmp_le0000_lut_7_18_1368
    );
  Mcompar_videoOn_cmp_le0000_cy_7_19 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_6_20_1088,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_7_18_1368,
      O => Mcompar_videoOn_cmp_le0000_cy_7_20_1113
    );
  Mcompar_videoOn_cmp_le0000_lut_8_20 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(17),
      I1 => hPos(18),
      I2 => hPos(19),
      I3 => hPos(20),
      O => Mcompar_videoOn_cmp_le0000_lut_8_20_1394
    );
  Mcompar_videoOn_cmp_le0000_cy_8_19 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_7_20_1113,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_8_20_1394,
      O => Mcompar_videoOn_cmp_le0000_cy_8_19_1138
    );
  Mcompar_videoOn_cmp_le0000_lut_9_19 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(21),
      I1 => hPos(22),
      I2 => hPos(23),
      I3 => hPos(24),
      O => Mcompar_videoOn_cmp_le0000_lut_9_19_1417
    );
  Mcompar_videoOn_cmp_le0000_cy_9_18 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_8_19_1138,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_9_19_1417,
      O => Mcompar_videoOn_cmp_le0000_cy_9_18_1161
    );
  Mcompar_videoOn_cmp_le0000_lut_10_18 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(25),
      I1 => hPos(26),
      I2 => hPos(27),
      I3 => hPos(28),
      O => Mcompar_videoOn_cmp_le0000_lut_10_18_1209
    );
  Mcompar_videoOn_cmp_le0000_cy_10_17 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_9_18_1161,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_10_18_1209,
      O => Mcompar_videoOn_cmp_le0000_cy_10_9_896
    );
  Mcompar_videoOn_cmp_le0000_lut_11_9 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => hPos(29),
      I1 => hPos(30),
      O => Mcompar_videoOn_cmp_le0000_lut_11_9_1232
    );
  Mcompar_videoOn_cmp_le0000_cy_11_8 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_10_9_896,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_11_9_1232,
      O => Mcompar_videoOn_cmp_le0000_cy_11_9_906
    );
  Mcompar_videoOn_cmp_le0000_cy_12_8 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_11_9_906,
      DI => hPos_31_1_1884,
      S => Mcompar_videoOn_cmp_le0000_lut_12_9,
      O => RGB_cmp_le0028
    );
  Mcompar_videoOn_cmp_le0000_lut_0_21 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => hPos(1),
      I1 => hPos(2),
      I2 => hPos(3),
      O => Mcompar_videoOn_cmp_le0000_lut_0_21_1188
    );
  Mcompar_videoOn_cmp_le0000_cy_0_20 : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_0_21_1188,
      O => Mcompar_videoOn_cmp_le0000_cy_0_21_874
    );
  Mcompar_videoOn_cmp_le0000_cy_1_20 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_0_21_874,
      DI => N1,
      S => Mcompar_videoOn_cmp_le0000_cy_1_20_rt_943,
      O => Mcompar_videoOn_cmp_le0000_cy_1_21_925
    );
  Mcompar_videoOn_cmp_le0000_lut_2_21 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => hPos(5),
      I1 => hPos(6),
      O => Mcompar_videoOn_cmp_le0000_lut_2_21_1270
    );
  Mcompar_videoOn_cmp_le0000_cy_2_20 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_1_21_925,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_2_21_1270,
      O => Mcompar_videoOn_cmp_le0000_cy_2_21_966
    );
  Mcompar_videoOn_cmp_le0000_cy_3_20 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_2_21_966,
      DI => N1,
      S => Mcompar_videoOn_cmp_le0000_cy_3_20_rt_1010,
      O => Mcompar_videoOn_cmp_le0000_cy_3_21_991
    );
  Mcompar_videoOn_cmp_le0000_lut_4_21 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(8),
      I1 => hPos(9),
      I2 => hPos(10),
      I3 => hPos(11),
      O => Mcompar_videoOn_cmp_le0000_lut_4_21_1303
    );
  Mcompar_videoOn_cmp_le0000_cy_4_20 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_3_21_991,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_4_21_1303,
      O => Mcompar_videoOn_cmp_le0000_cy_4_21_1033
    );
  Mcompar_videoOn_cmp_le0000_lut_5_16 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(12),
      I1 => hPos(13),
      I2 => hPos(14),
      I3 => hPos(15),
      O => Mcompar_videoOn_cmp_le0000_lut_5_16_1321
    );
  Mcompar_videoOn_cmp_le0000_cy_5_20 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_4_21_1033,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_5_16_1321,
      O => Mcompar_videoOn_cmp_le0000_cy_5_21_1059
    );
  Mcompar_videoOn_cmp_le0000_lut_6_21 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(16),
      I1 => hPos(17),
      I2 => hPos(18),
      I3 => hPos(19),
      O => Mcompar_videoOn_cmp_le0000_lut_6_21_1347
    );
  Mcompar_videoOn_cmp_le0000_cy_6_20 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_5_21_1059,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_6_21_1347,
      O => Mcompar_videoOn_cmp_le0000_cy_6_21_1089
    );
  Mcompar_videoOn_cmp_le0000_lut_7_19 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(20),
      I1 => hPos(21),
      I2 => hPos(22),
      I3 => hPos(23),
      O => Mcompar_videoOn_cmp_le0000_lut_7_19_1369
    );
  Mcompar_videoOn_cmp_le0000_cy_7_20 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_6_21_1089,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_7_19_1369,
      O => Mcompar_videoOn_cmp_le0000_cy_7_21_1114
    );
  Mcompar_videoOn_cmp_le0000_lut_8_21 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(24),
      I1 => hPos(25),
      I2 => hPos(26),
      I3 => hPos(27),
      O => Mcompar_videoOn_cmp_le0000_lut_8_21_1395
    );
  Mcompar_videoOn_cmp_le0000_cy_8_20 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_7_21_1114,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_8_21_1395,
      O => Mcompar_videoOn_cmp_le0000_cy_8_20_1140
    );
  Mcompar_videoOn_cmp_le0000_lut_9_20 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => hPos(28),
      I1 => hPos(29),
      I2 => hPos(30),
      O => Mcompar_videoOn_cmp_le0000_lut_9_20_1419
    );
  Mcompar_videoOn_cmp_le0000_cy_9_19 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_8_20_1140,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_9_20_1419,
      O => Mcompar_videoOn_cmp_le0000_cy_9_19_1162
    );
  Mcompar_videoOn_cmp_le0000_cy_10_18 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_9_19_1162,
      DI => hPos_31_1_1884,
      S => Mcompar_videoOn_cmp_le0000_lut_10_19,
      O => RGB_cmp_le0029
    );
  Mcompar_videoOn_cmp_le0000_lut_0_22 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => hPos(0),
      I1 => hPos(1),
      I2 => hPos(2),
      O => Mcompar_videoOn_cmp_le0000_lut_0_22_1189
    );
  Mcompar_videoOn_cmp_le0000_cy_0_21 : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_0_22_1189,
      O => Mcompar_videoOn_cmp_le0000_cy_0_22_875
    );
  Mcompar_videoOn_cmp_le0000_cy_1_21 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_0_22_875,
      DI => N1,
      S => Mcompar_videoOn_cmp_le0000_cy_1_21_rt_944,
      O => Mcompar_videoOn_cmp_le0000_cy_1_22_926
    );
  Mcompar_videoOn_cmp_le0000_lut_2_22 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(4),
      I1 => hPos(5),
      I2 => hPos(6),
      I3 => hPos(7),
      O => Mcompar_videoOn_cmp_le0000_lut_2_22_1271
    );
  Mcompar_videoOn_cmp_le0000_cy_2_21 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_1_22_926,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_2_22_1271,
      O => Mcompar_videoOn_cmp_le0000_cy_2_22_967
    );
  Mcompar_videoOn_cmp_le0000_cy_3_21 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_2_22_967,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_3_7,
      O => Mcompar_videoOn_cmp_le0000_cy_3_22_992
    );
  Mcompar_videoOn_cmp_le0000_cy_4_21 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_3_22_992,
      DI => N1,
      S => Mcompar_videoOn_cmp_le0000_cy_4_21_rt_1044,
      O => Mcompar_videoOn_cmp_le0000_cy_4_22_1034
    );
  Mcompar_videoOn_cmp_le0000_lut_5_17 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(10),
      I1 => hPos(11),
      I2 => hPos(12),
      I3 => hPos(13),
      O => Mcompar_videoOn_cmp_le0000_lut_5_17_1322
    );
  Mcompar_videoOn_cmp_le0000_cy_5_21 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_4_22_1034,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_5_17_1322,
      O => Mcompar_videoOn_cmp_le0000_cy_5_22_1060
    );
  Mcompar_videoOn_cmp_le0000_lut_6_22 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(14),
      I1 => hPos(15),
      I2 => hPos(16),
      I3 => hPos(17),
      O => Mcompar_videoOn_cmp_le0000_lut_6_22_1348
    );
  Mcompar_videoOn_cmp_le0000_cy_6_21 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_5_22_1060,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_6_22_1348,
      O => Mcompar_videoOn_cmp_le0000_cy_6_22_1090
    );
  Mcompar_videoOn_cmp_le0000_lut_7_20 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(18),
      I1 => hPos(19),
      I2 => hPos(20),
      I3 => hPos(21),
      O => Mcompar_videoOn_cmp_le0000_lut_7_20_1371
    );
  Mcompar_videoOn_cmp_le0000_cy_7_21 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_6_22_1090,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_7_20_1371,
      O => Mcompar_videoOn_cmp_le0000_cy_7_22_1115
    );
  Mcompar_videoOn_cmp_le0000_lut_8_22 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(22),
      I1 => hPos(23),
      I2 => hPos(24),
      I3 => hPos(25),
      O => Mcompar_videoOn_cmp_le0000_lut_8_22_1396
    );
  Mcompar_videoOn_cmp_le0000_cy_8_21 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_7_22_1115,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_8_22_1396,
      O => Mcompar_videoOn_cmp_le0000_cy_8_21_1141
    );
  Mcompar_videoOn_cmp_le0000_lut_9_21 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(26),
      I1 => hPos(27),
      I2 => hPos(28),
      I3 => hPos(29),
      O => Mcompar_videoOn_cmp_le0000_lut_9_21_1420
    );
  Mcompar_videoOn_cmp_le0000_cy_9_20 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_8_21_1141,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_9_21_1420,
      O => Mcompar_videoOn_cmp_le0000_cy_9_20_1164
    );
  Mcompar_videoOn_cmp_le0000_cy_10_19 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_9_20_1164,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_10_20,
      O => Mcompar_videoOn_cmp_le0000_cy_10_10_887
    );
  Mcompar_videoOn_cmp_le0000_cy_11_9 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_10_10_887,
      DI => hPos_31_1_1884,
      S => Mcompar_videoOn_cmp_le0000_lut_11_10,
      O => RGB_cmp_le0031
    );
  Mcompar_videoOn_cmp_le0000_lut_0_23 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => hPos(4),
      I1 => hPos(5),
      I2 => hPos(6),
      O => Mcompar_videoOn_cmp_le0000_lut_0_23_1190
    );
  Mcompar_videoOn_cmp_le0000_cy_0_22 : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_0_23_1190,
      O => Mcompar_videoOn_cmp_le0000_cy_0_23_876
    );
  Mcompar_videoOn_cmp_le0000_cy_1_22 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_0_23_876,
      DI => N1,
      S => Mcompar_videoOn_cmp_le0000_cy_1_22_rt_945,
      O => Mcompar_videoOn_cmp_le0000_cy_1_23_927
    );
  Mcompar_videoOn_cmp_le0000_cy_2_22 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_1_23_927,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_2_23,
      O => Mcompar_videoOn_cmp_le0000_cy_2_23_968
    );
  Mcompar_videoOn_cmp_le0000_cy_3_22 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_2_23_968,
      DI => N1,
      S => Mcompar_videoOn_cmp_le0000_cy_3_22_rt_1011,
      O => Mcompar_videoOn_cmp_le0000_cy_3_23_993
    );
  Mcompar_videoOn_cmp_le0000_lut_4_22 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(10),
      I1 => hPos(11),
      I2 => hPos(12),
      I3 => hPos(13),
      O => Mcompar_videoOn_cmp_le0000_lut_4_22_1304
    );
  Mcompar_videoOn_cmp_le0000_cy_4_22 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_3_23_993,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_4_22_1304,
      O => Mcompar_videoOn_cmp_le0000_cy_4_23_1035
    );
  Mcompar_videoOn_cmp_le0000_lut_5_18 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(14),
      I1 => hPos(15),
      I2 => hPos(16),
      I3 => hPos(17),
      O => Mcompar_videoOn_cmp_le0000_lut_5_18_1323
    );
  Mcompar_videoOn_cmp_le0000_cy_5_22 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_4_23_1035,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_5_18_1323,
      O => Mcompar_videoOn_cmp_le0000_cy_5_23_1061
    );
  Mcompar_videoOn_cmp_le0000_lut_6_23 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(18),
      I1 => hPos(19),
      I2 => hPos(20),
      I3 => hPos(21),
      O => Mcompar_videoOn_cmp_le0000_lut_6_23_1349
    );
  Mcompar_videoOn_cmp_le0000_cy_6_22 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_5_23_1061,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_6_23_1349,
      O => Mcompar_videoOn_cmp_le0000_cy_6_23_1091
    );
  Mcompar_videoOn_cmp_le0000_lut_7_21 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(22),
      I1 => hPos(23),
      I2 => hPos(24),
      I3 => hPos(25),
      O => Mcompar_videoOn_cmp_le0000_lut_7_21_1372
    );
  Mcompar_videoOn_cmp_le0000_cy_7_22 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_6_23_1091,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_7_21_1372,
      O => Mcompar_videoOn_cmp_le0000_cy_7_23_1116
    );
  Mcompar_videoOn_cmp_le0000_lut_8_23 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(26),
      I1 => hPos(27),
      I2 => hPos(28),
      I3 => hPos(29),
      O => Mcompar_videoOn_cmp_le0000_lut_8_23_1397
    );
  Mcompar_videoOn_cmp_le0000_cy_8_22 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_7_23_1116,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_8_23_1397,
      O => Mcompar_videoOn_cmp_le0000_cy_8_22_1142
    );
  Mcompar_videoOn_cmp_le0000_cy_9_21 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_8_22_1142,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_9_22,
      O => Mcompar_videoOn_cmp_le0000_cy_9_21_1165
    );
  Mcompar_videoOn_cmp_le0000_cy_10_20 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_9_21_1165,
      DI => hPos_31_1_1884,
      S => Mcompar_videoOn_cmp_le0000_lut_10_21,
      O => HSYNC_cmp_le0000
    );
  Mcompar_videoOn_cmp_le0000_cy_0_23 : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_0_24,
      O => Mcompar_videoOn_cmp_le0000_cy_0_24
    );
  Mcompar_videoOn_cmp_le0000_lut_1_8 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => hPos(5),
      I1 => hPos(6),
      I2 => hPos(7),
      O => Mcompar_videoOn_cmp_le0000_lut_1_8_1255
    );
  Mcompar_videoOn_cmp_le0000_cy_1_23 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_0_24,
      DI => N1,
      S => Mcompar_videoOn_cmp_le0000_lut_1_8_1255,
      O => Mcompar_videoOn_cmp_le0000_cy_1_24
    );
  Mcompar_videoOn_cmp_le0000_cy_2_23 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_1_24,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_2_24,
      O => Mcompar_videoOn_cmp_le0000_cy_2_24
    );
  Mcompar_videoOn_cmp_le0000_cy_3_23 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_2_24,
      DI => N1,
      S => Mcompar_videoOn_cmp_le0000_cy_3_23_rt_1012,
      O => Mcompar_videoOn_cmp_le0000_cy_3_24
    );
  Mcompar_videoOn_cmp_le0000_lut_4_23 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(10),
      I1 => hPos(11),
      I2 => hPos(12),
      I3 => hPos(13),
      O => Mcompar_videoOn_cmp_le0000_lut_4_23_1305
    );
  Mcompar_videoOn_cmp_le0000_cy_4_23 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_3_24,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_4_23_1305,
      O => Mcompar_videoOn_cmp_le0000_cy_4_24
    );
  Mcompar_videoOn_cmp_le0000_lut_5_19 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(14),
      I1 => hPos(15),
      I2 => hPos(16),
      I3 => hPos(17),
      O => Mcompar_videoOn_cmp_le0000_lut_5_19_1324
    );
  Mcompar_videoOn_cmp_le0000_cy_5_23 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_4_24,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_5_19_1324,
      O => Mcompar_videoOn_cmp_le0000_cy_5_24
    );
  Mcompar_videoOn_cmp_le0000_lut_6_24 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(18),
      I1 => hPos(19),
      I2 => hPos(20),
      I3 => hPos(21),
      O => Mcompar_videoOn_cmp_le0000_lut_6_24_1350
    );
  Mcompar_videoOn_cmp_le0000_cy_6_23 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_5_24,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_6_24_1350,
      O => Mcompar_videoOn_cmp_le0000_cy_6_24
    );
  Mcompar_videoOn_cmp_le0000_lut_7_22 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(22),
      I1 => hPos(23),
      I2 => hPos(24),
      I3 => hPos(25),
      O => Mcompar_videoOn_cmp_le0000_lut_7_22_1373
    );
  Mcompar_videoOn_cmp_le0000_cy_7_23 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_6_24,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_7_22_1373,
      O => Mcompar_videoOn_cmp_le0000_cy_7_24
    );
  Mcompar_videoOn_cmp_le0000_lut_8_24 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(26),
      I1 => hPos(27),
      I2 => hPos(28),
      I3 => hPos(29),
      O => Mcompar_videoOn_cmp_le0000_lut_8_24_1398
    );
  Mcompar_videoOn_cmp_le0000_cy_8_23 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_7_24,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_8_24_1398,
      O => Mcompar_videoOn_cmp_le0000_cy_8_23_1143
    );
  Mcompar_videoOn_cmp_le0000_cy_9_22 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_8_23_1143,
      DI => N0,
      S => Mcompar_videoOn_cmp_le0000_lut_9_23,
      O => Mcompar_videoOn_cmp_le0000_cy_9_22_1166
    );
  Mcompar_videoOn_cmp_le0000_cy_10_21 : MUXCY
    port map (
      CI => Mcompar_videoOn_cmp_le0000_cy_9_22_1166,
      DI => hPos_31_1_1884,
      S => Mcompar_videoOn_cmp_le0000_lut_10_22,
      O => Mcompar_videoOn_cmp_le0000_cy_10_11_888
    );
  Mcompar_VSYNC_cmp_le0000_lut_0_Q : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => vPos(1),
      I1 => vPos(2),
      O => Mcompar_VSYNC_cmp_le0000_lut(0)
    );
  Mcompar_VSYNC_cmp_le0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => Mcompar_VSYNC_cmp_le0000_lut(0),
      O => Mcompar_VSYNC_cmp_le0000_cy(0)
    );
  Mcompar_VSYNC_cmp_le0000_cy_1_Q : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy(0),
      DI => N1,
      S => Mcompar_VSYNC_cmp_le0000_cy_1_rt_658,
      O => Mcompar_VSYNC_cmp_le0000_cy(1)
    );
  Mcompar_VSYNC_cmp_le0000_cy_2_Q : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy(1),
      DI => N0,
      S => Mcompar_VSYNC_cmp_le0000_lut(2),
      O => Mcompar_VSYNC_cmp_le0000_cy(2)
    );
  Mcompar_VSYNC_cmp_le0000_lut_3_Q : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => vPos(5),
      I1 => vPos(6),
      I2 => vPos(7),
      I3 => vPos(8),
      O => Mcompar_VSYNC_cmp_le0000_lut(3)
    );
  Mcompar_VSYNC_cmp_le0000_cy_3_Q : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy(2),
      DI => N1,
      S => Mcompar_VSYNC_cmp_le0000_lut(3),
      O => Mcompar_VSYNC_cmp_le0000_cy(3)
    );
  Mcompar_VSYNC_cmp_le0000_lut_4_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => vPos(9),
      I1 => vPos(10),
      I2 => vPos(11),
      I3 => vPos(12),
      O => Mcompar_VSYNC_cmp_le0000_lut(4)
    );
  Mcompar_VSYNC_cmp_le0000_cy_4_Q : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy(3),
      DI => N0,
      S => Mcompar_VSYNC_cmp_le0000_lut(4),
      O => Mcompar_VSYNC_cmp_le0000_cy(4)
    );
  Mcompar_VSYNC_cmp_le0000_lut_5_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => vPos(13),
      I1 => vPos(14),
      I2 => vPos(15),
      I3 => vPos(16),
      O => Mcompar_VSYNC_cmp_le0000_lut(5)
    );
  Mcompar_VSYNC_cmp_le0000_cy_5_Q : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy(4),
      DI => N0,
      S => Mcompar_VSYNC_cmp_le0000_lut(5),
      O => Mcompar_VSYNC_cmp_le0000_cy(5)
    );
  Mcompar_VSYNC_cmp_le0000_lut_6_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => vPos(17),
      I1 => vPos(18),
      I2 => vPos(19),
      I3 => vPos(20),
      O => Mcompar_VSYNC_cmp_le0000_lut(6)
    );
  Mcompar_VSYNC_cmp_le0000_cy_6_Q : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy(5),
      DI => N0,
      S => Mcompar_VSYNC_cmp_le0000_lut(6),
      O => Mcompar_VSYNC_cmp_le0000_cy(6)
    );
  Mcompar_VSYNC_cmp_le0000_lut_7_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => vPos(21),
      I1 => vPos(22),
      I2 => vPos(23),
      I3 => vPos(24),
      O => Mcompar_VSYNC_cmp_le0000_lut(7)
    );
  Mcompar_VSYNC_cmp_le0000_cy_7_Q : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy(6),
      DI => N0,
      S => Mcompar_VSYNC_cmp_le0000_lut(7),
      O => Mcompar_VSYNC_cmp_le0000_cy(7)
    );
  Mcompar_VSYNC_cmp_le0000_lut_8_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => vPos(25),
      I1 => vPos(26),
      I2 => vPos(27),
      I3 => vPos(28),
      O => Mcompar_VSYNC_cmp_le0000_lut(8)
    );
  Mcompar_VSYNC_cmp_le0000_cy_8_Q : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy(7),
      DI => N0,
      S => Mcompar_VSYNC_cmp_le0000_lut(8),
      O => Mcompar_VSYNC_cmp_le0000_cy(8)
    );
  Mcompar_VSYNC_cmp_le0000_lut_9_Q : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => vPos(29),
      I1 => vPos(30),
      O => Mcompar_VSYNC_cmp_le0000_lut(9)
    );
  Mcompar_VSYNC_cmp_le0000_cy_9_Q : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy(8),
      DI => N0,
      S => Mcompar_VSYNC_cmp_le0000_lut(9),
      O => Mcompar_VSYNC_cmp_le0000_cy(9)
    );
  Mcompar_VSYNC_cmp_le0000_cy_10_Q : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy(9),
      DI => vPos(31),
      S => Mcompar_VSYNC_cmp_le0000_lut(10),
      O => VSYNC_cmp_le0000
    );
  Mcompar_VSYNC_cmp_le0000_cy_0_0 : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => Mcompar_VSYNC_cmp_le0000_lut_0_1,
      O => Mcompar_VSYNC_cmp_le0000_cy_0_1_623
    );
  Mcompar_VSYNC_cmp_le0000_cy_1_0 : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy_0_1_623,
      DI => N1,
      S => Mcompar_VSYNC_cmp_le0000_cy_1_0_rt_653,
      O => Mcompar_VSYNC_cmp_le0000_cy_1_1_643
    );
  Mcompar_VSYNC_cmp_le0000_cy_2_0 : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy_1_1_643,
      DI => N0,
      S => Mcompar_VSYNC_cmp_le0000_lut_2_1,
      O => Mcompar_VSYNC_cmp_le0000_cy_2_1_660
    );
  Mcompar_VSYNC_cmp_le0000_lut_3_1 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => vPos(5),
      I1 => vPos(6),
      I2 => vPos(7),
      I3 => vPos(8),
      O => Mcompar_VSYNC_cmp_le0000_lut_3_1_793
    );
  Mcompar_VSYNC_cmp_le0000_cy_3_0 : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy_2_1_660,
      DI => N1,
      S => Mcompar_VSYNC_cmp_le0000_lut_3_1_793,
      O => Mcompar_VSYNC_cmp_le0000_cy_3_1_671
    );
  Mcompar_VSYNC_cmp_le0000_lut_4_1 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => vPos(9),
      I1 => vPos(10),
      I2 => vPos(11),
      I3 => vPos(12),
      O => Mcompar_VSYNC_cmp_le0000_lut_4_1_801
    );
  Mcompar_VSYNC_cmp_le0000_cy_4_0 : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy_3_1_671,
      DI => N0,
      S => Mcompar_VSYNC_cmp_le0000_lut_4_1_801,
      O => Mcompar_VSYNC_cmp_le0000_cy_4_1_685
    );
  Mcompar_VSYNC_cmp_le0000_lut_5_1 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => vPos(13),
      I1 => vPos(14),
      I2 => vPos(15),
      I3 => vPos(16),
      O => Mcompar_VSYNC_cmp_le0000_lut_5_1_810
    );
  Mcompar_VSYNC_cmp_le0000_cy_5_0 : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy_4_1_685,
      DI => N0,
      S => Mcompar_VSYNC_cmp_le0000_lut_5_1_810,
      O => Mcompar_VSYNC_cmp_le0000_cy_5_1_698
    );
  Mcompar_VSYNC_cmp_le0000_lut_6_1 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => vPos(17),
      I1 => vPos(18),
      I2 => vPos(19),
      I3 => vPos(20),
      O => Mcompar_VSYNC_cmp_le0000_lut_6_1_820
    );
  Mcompar_VSYNC_cmp_le0000_cy_6_0 : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy_5_1_698,
      DI => N0,
      S => Mcompar_VSYNC_cmp_le0000_lut_6_1_820,
      O => Mcompar_VSYNC_cmp_le0000_cy_6_1_710
    );
  Mcompar_VSYNC_cmp_le0000_lut_7_1 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => vPos(21),
      I1 => vPos(22),
      I2 => vPos(23),
      I3 => vPos(24),
      O => Mcompar_VSYNC_cmp_le0000_lut_7_1_831
    );
  Mcompar_VSYNC_cmp_le0000_cy_7_0 : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy_6_1_710,
      DI => N0,
      S => Mcompar_VSYNC_cmp_le0000_lut_7_1_831,
      O => Mcompar_VSYNC_cmp_le0000_cy_7_1_721
    );
  Mcompar_VSYNC_cmp_le0000_lut_8_1 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => vPos(25),
      I1 => vPos(26),
      I2 => vPos(27),
      I3 => vPos(28),
      O => Mcompar_VSYNC_cmp_le0000_lut_8_1_841
    );
  Mcompar_VSYNC_cmp_le0000_cy_8_0 : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy_7_1_721,
      DI => N0,
      S => Mcompar_VSYNC_cmp_le0000_lut_8_1_841,
      O => Mcompar_VSYNC_cmp_le0000_cy_8_1_733
    );
  Mcompar_VSYNC_cmp_le0000_lut_9_1 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => vPos(29),
      I1 => vPos(30),
      O => Mcompar_VSYNC_cmp_le0000_lut_9_1_852
    );
  Mcompar_VSYNC_cmp_le0000_cy_9_0 : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy_8_1_733,
      DI => N0,
      S => Mcompar_VSYNC_cmp_le0000_lut_9_1_852,
      O => Mcompar_VSYNC_cmp_le0000_cy_9_1_742
    );
  Mcompar_VSYNC_cmp_le0000_cy_10_0 : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy_9_1_742,
      DI => vPos(31),
      S => Mcompar_VSYNC_cmp_le0000_lut_10_1,
      O => Mcompar_VSYNC_cmp_le0000_cy(10)
    );
  Mcompar_VSYNC_cmp_le0000_cy_0_1 : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => Mcompar_VSYNC_cmp_le0000_lut_0_2,
      O => Mcompar_VSYNC_cmp_le0000_cy_0_2_625
    );
  Mcompar_VSYNC_cmp_le0000_lut_1_Q : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => vPos(6),
      I1 => vPos(7),
      I2 => vPos(8),
      O => Mcompar_VSYNC_cmp_le0000_lut(1)
    );
  Mcompar_VSYNC_cmp_le0000_cy_1_1 : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy_0_2_625,
      DI => N1,
      S => Mcompar_VSYNC_cmp_le0000_lut(1),
      O => Mcompar_VSYNC_cmp_le0000_cy_1_2_645
    );
  Mcompar_VSYNC_cmp_le0000_lut_2_2 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => vPos(9),
      I1 => vPos(10),
      I2 => vPos(11),
      I3 => vPos(12),
      O => Mcompar_VSYNC_cmp_le0000_lut_2_2_784
    );
  Mcompar_VSYNC_cmp_le0000_cy_2_1 : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy_1_2_645,
      DI => N0,
      S => Mcompar_VSYNC_cmp_le0000_lut_2_2_784,
      O => Mcompar_VSYNC_cmp_le0000_cy_2_2_662
    );
  Mcompar_VSYNC_cmp_le0000_lut_3_2 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => vPos(13),
      I1 => vPos(14),
      I2 => vPos(15),
      I3 => vPos(16),
      O => Mcompar_VSYNC_cmp_le0000_lut_3_2_794
    );
  Mcompar_VSYNC_cmp_le0000_cy_3_1 : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy_2_2_662,
      DI => N0,
      S => Mcompar_VSYNC_cmp_le0000_lut_3_2_794,
      O => Mcompar_VSYNC_cmp_le0000_cy_3_2_673
    );
  Mcompar_VSYNC_cmp_le0000_lut_4_2 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => vPos(17),
      I1 => vPos(18),
      I2 => vPos(19),
      I3 => vPos(20),
      O => Mcompar_VSYNC_cmp_le0000_lut_4_2_802
    );
  Mcompar_VSYNC_cmp_le0000_cy_4_1 : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy_3_2_673,
      DI => N0,
      S => Mcompar_VSYNC_cmp_le0000_lut_4_2_802,
      O => Mcompar_VSYNC_cmp_le0000_cy_4_2_687
    );
  Mcompar_VSYNC_cmp_le0000_lut_5_2 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => vPos(21),
      I1 => vPos(22),
      I2 => vPos(23),
      I3 => vPos(24),
      O => Mcompar_VSYNC_cmp_le0000_lut_5_2_811
    );
  Mcompar_VSYNC_cmp_le0000_cy_5_1 : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy_4_2_687,
      DI => N0,
      S => Mcompar_VSYNC_cmp_le0000_lut_5_2_811,
      O => Mcompar_VSYNC_cmp_le0000_cy_5_2_700
    );
  Mcompar_VSYNC_cmp_le0000_lut_6_2 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => vPos(25),
      I1 => vPos(26),
      I2 => vPos(27),
      I3 => vPos(28),
      O => Mcompar_VSYNC_cmp_le0000_lut_6_2_822
    );
  Mcompar_VSYNC_cmp_le0000_cy_6_1 : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy_5_2_700,
      DI => N0,
      S => Mcompar_VSYNC_cmp_le0000_lut_6_2_822,
      O => Mcompar_VSYNC_cmp_le0000_cy_6_2_712
    );
  Mcompar_VSYNC_cmp_le0000_lut_7_2 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => vPos(29),
      I1 => vPos(30),
      O => Mcompar_VSYNC_cmp_le0000_lut_7_2_832
    );
  Mcompar_VSYNC_cmp_le0000_cy_7_1 : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy_6_2_712,
      DI => N0,
      S => Mcompar_VSYNC_cmp_le0000_lut_7_2_832,
      O => Mcompar_VSYNC_cmp_le0000_cy_7_2_723
    );
  Mcompar_VSYNC_cmp_le0000_cy_8_1 : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy_7_2_723,
      DI => vPos(31),
      S => Mcompar_VSYNC_cmp_le0000_lut_8_2,
      O => videoOn_cmp_le0001
    );
  Mcompar_VSYNC_cmp_le0000_cy_0_2 : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => Mcompar_VSYNC_cmp_le0000_lut_0_3,
      O => Mcompar_VSYNC_cmp_le0000_cy_0_3_626
    );
  Mcompar_VSYNC_cmp_le0000_lut_1_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => vPos(1),
      I1 => vPos(2),
      O => Mcompar_VSYNC_cmp_le0000_lut_1_1_777
    );
  Mcompar_VSYNC_cmp_le0000_cy_1_2 : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy_0_3_626,
      DI => N1,
      S => Mcompar_VSYNC_cmp_le0000_lut_1_1_777,
      O => Mcompar_VSYNC_cmp_le0000_cy_1_3_646
    );
  Mcompar_VSYNC_cmp_le0000_cy_2_2 : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy_1_3_646,
      DI => N0,
      S => Mcompar_VSYNC_cmp_le0000_lut_2_3,
      O => Mcompar_VSYNC_cmp_le0000_cy_2_3_663
    );
  Mcompar_VSYNC_cmp_le0000_cy_3_2 : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy_2_3_663,
      DI => N1,
      S => Mcompar_VSYNC_cmp_le0000_cy_3_2_rt_681,
      O => Mcompar_VSYNC_cmp_le0000_cy_3_3_674
    );
  Mcompar_VSYNC_cmp_le0000_cy_4_2 : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy_3_3_674,
      DI => N0,
      S => Mcompar_VSYNC_cmp_le0000_lut_4_3,
      O => Mcompar_VSYNC_cmp_le0000_cy_4_3_688
    );
  Mcompar_VSYNC_cmp_le0000_lut_5_3 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => vPos(6),
      I1 => vPos(7),
      I2 => vPos(8),
      O => Mcompar_VSYNC_cmp_le0000_lut_5_3_812
    );
  Mcompar_VSYNC_cmp_le0000_cy_5_2 : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy_4_3_688,
      DI => N1,
      S => Mcompar_VSYNC_cmp_le0000_lut_5_3_812,
      O => Mcompar_VSYNC_cmp_le0000_cy_5_3_701
    );
  Mcompar_VSYNC_cmp_le0000_lut_6_3 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => vPos(9),
      I1 => vPos(10),
      I2 => vPos(11),
      I3 => vPos(12),
      O => Mcompar_VSYNC_cmp_le0000_lut_6_3_823
    );
  Mcompar_VSYNC_cmp_le0000_cy_6_2 : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy_5_3_701,
      DI => N0,
      S => Mcompar_VSYNC_cmp_le0000_lut_6_3_823,
      O => Mcompar_VSYNC_cmp_le0000_cy_6_3_713
    );
  Mcompar_VSYNC_cmp_le0000_lut_7_3 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => vPos(13),
      I1 => vPos(14),
      I2 => vPos(15),
      I3 => vPos(16),
      O => Mcompar_VSYNC_cmp_le0000_lut_7_3_833
    );
  Mcompar_VSYNC_cmp_le0000_cy_7_2 : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy_6_3_713,
      DI => N0,
      S => Mcompar_VSYNC_cmp_le0000_lut_7_3_833,
      O => Mcompar_VSYNC_cmp_le0000_cy_7_3_724
    );
  Mcompar_VSYNC_cmp_le0000_lut_8_3 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => vPos(17),
      I1 => vPos(18),
      I2 => vPos(19),
      I3 => vPos(20),
      O => Mcompar_VSYNC_cmp_le0000_lut_8_3_844
    );
  Mcompar_VSYNC_cmp_le0000_cy_8_2 : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy_7_3_724,
      DI => N0,
      S => Mcompar_VSYNC_cmp_le0000_lut_8_3_844,
      O => Mcompar_VSYNC_cmp_le0000_cy_8_2_734
    );
  Mcompar_VSYNC_cmp_le0000_lut_9_2 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => vPos(21),
      I1 => vPos(22),
      I2 => vPos(23),
      I3 => vPos(24),
      O => Mcompar_VSYNC_cmp_le0000_lut_9_2_853
    );
  Mcompar_VSYNC_cmp_le0000_cy_9_1 : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy_8_2_734,
      DI => N0,
      S => Mcompar_VSYNC_cmp_le0000_lut_9_2_853,
      O => Mcompar_VSYNC_cmp_le0000_cy_9_2_743
    );
  Mcompar_VSYNC_cmp_le0000_lut_10_2 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => vPos(25),
      I1 => vPos(26),
      I2 => vPos(27),
      I3 => vPos(28),
      O => Mcompar_VSYNC_cmp_le0000_lut_10_2_762
    );
  Mcompar_VSYNC_cmp_le0000_cy_10_1 : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy_9_2_743,
      DI => N0,
      S => Mcompar_VSYNC_cmp_le0000_lut_10_2_762,
      O => Mcompar_VSYNC_cmp_le0000_cy_10_1_634
    );
  Mcompar_VSYNC_cmp_le0000_lut_11_Q : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => vPos(29),
      I1 => vPos(30),
      O => Mcompar_VSYNC_cmp_le0000_lut(11)
    );
  Mcompar_VSYNC_cmp_le0000_cy_11_Q : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy_10_1_634,
      DI => N0,
      S => Mcompar_VSYNC_cmp_le0000_lut(11),
      O => Mcompar_VSYNC_cmp_le0000_cy(11)
    );
  Mcompar_VSYNC_cmp_le0000_cy_12_Q : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy(11),
      DI => vPos(31),
      S => Mcompar_VSYNC_cmp_le0000_lut(12),
      O => RGB_cmp_le0001
    );
  Mcompar_VSYNC_cmp_le0000_lut_0_4 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => vPos(0),
      I1 => vPos(1),
      O => Mcompar_VSYNC_cmp_le0000_lut_0_4_754
    );
  Mcompar_VSYNC_cmp_le0000_cy_0_3 : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => Mcompar_VSYNC_cmp_le0000_lut_0_4_754,
      O => Mcompar_VSYNC_cmp_le0000_cy_0_4_627
    );
  Mcompar_VSYNC_cmp_le0000_cy_1_3 : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy_0_4_627,
      DI => N1,
      S => Mcompar_VSYNC_cmp_le0000_cy_1_3_rt_654,
      O => Mcompar_VSYNC_cmp_le0000_cy_1_4_647
    );
  Mcompar_VSYNC_cmp_le0000_lut_2_4 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => vPos(3),
      I1 => vPos(4),
      I2 => vPos_5_1_1952,
      I3 => vPos_6_1_1954,
      O => Mcompar_VSYNC_cmp_le0000_lut_2_4_786
    );
  Mcompar_VSYNC_cmp_le0000_cy_2_3 : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy_1_4_647,
      DI => N0,
      S => Mcompar_VSYNC_cmp_le0000_lut_2_4_786,
      O => Mcompar_VSYNC_cmp_le0000_cy_2_4_664
    );
  Mcompar_VSYNC_cmp_le0000_cy_3_3 : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy_2_4_664,
      DI => N0,
      S => Mcompar_VSYNC_cmp_le0000_lut_3_3,
      O => Mcompar_VSYNC_cmp_le0000_cy_3_4_675
    );
  Mcompar_VSYNC_cmp_le0000_cy_4_3 : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy_3_4_675,
      DI => N1,
      S => Mcompar_VSYNC_cmp_le0000_cy_4_3_rt_695,
      O => Mcompar_VSYNC_cmp_le0000_cy_4_4_689
    );
  Mcompar_VSYNC_cmp_le0000_lut_5_4 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => vPos(9),
      I1 => vPos(10),
      I2 => vPos(11),
      I3 => vPos(12),
      O => Mcompar_VSYNC_cmp_le0000_lut_5_4_813
    );
  Mcompar_VSYNC_cmp_le0000_cy_5_3 : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy_4_4_689,
      DI => N0,
      S => Mcompar_VSYNC_cmp_le0000_lut_5_4_813,
      O => Mcompar_VSYNC_cmp_le0000_cy_5_4_702
    );
  Mcompar_VSYNC_cmp_le0000_lut_6_4 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => vPos(13),
      I1 => vPos(14),
      I2 => vPos(15),
      I3 => vPos(16),
      O => Mcompar_VSYNC_cmp_le0000_lut_6_4_824
    );
  Mcompar_VSYNC_cmp_le0000_cy_6_3 : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy_5_4_702,
      DI => N0,
      S => Mcompar_VSYNC_cmp_le0000_lut_6_4_824,
      O => Mcompar_VSYNC_cmp_le0000_cy_6_4_714
    );
  Mcompar_VSYNC_cmp_le0000_lut_7_4 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => vPos(17),
      I1 => vPos(18),
      I2 => vPos(19),
      I3 => vPos(20),
      O => Mcompar_VSYNC_cmp_le0000_lut_7_4_834
    );
  Mcompar_VSYNC_cmp_le0000_cy_7_3 : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy_6_4_714,
      DI => N0,
      S => Mcompar_VSYNC_cmp_le0000_lut_7_4_834,
      O => Mcompar_VSYNC_cmp_le0000_cy_7_4_725
    );
  Mcompar_VSYNC_cmp_le0000_lut_8_4 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => vPos(21),
      I1 => vPos(22),
      I2 => vPos(23),
      I3 => vPos(24),
      O => Mcompar_VSYNC_cmp_le0000_lut_8_4_845
    );
  Mcompar_VSYNC_cmp_le0000_cy_8_3 : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy_7_4_725,
      DI => N0,
      S => Mcompar_VSYNC_cmp_le0000_lut_8_4_845,
      O => Mcompar_VSYNC_cmp_le0000_cy_8_3_735
    );
  Mcompar_VSYNC_cmp_le0000_lut_9_3 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => vPos(25),
      I1 => vPos(26),
      I2 => vPos(27),
      I3 => vPos(28),
      O => Mcompar_VSYNC_cmp_le0000_lut_9_3_854
    );
  Mcompar_VSYNC_cmp_le0000_cy_9_2 : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy_8_3_735,
      DI => N0,
      S => Mcompar_VSYNC_cmp_le0000_lut_9_3_854,
      O => Mcompar_VSYNC_cmp_le0000_cy_9_3_744
    );
  Mcompar_VSYNC_cmp_le0000_lut_10_3 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => vPos(29),
      I1 => vPos(30),
      O => Mcompar_VSYNC_cmp_le0000_lut_10_3_763
    );
  Mcompar_VSYNC_cmp_le0000_cy_10_2 : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy_9_3_744,
      DI => N0,
      S => Mcompar_VSYNC_cmp_le0000_lut_10_3_763,
      O => Mcompar_VSYNC_cmp_le0000_cy_10_2_635
    );
  Mcompar_VSYNC_cmp_le0000_cy_11_0 : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy_10_2_635,
      DI => vPos(31),
      S => Mcompar_VSYNC_cmp_le0000_lut_11_1,
      O => RGB_cmp_le0003
    );
  Mcompar_VSYNC_cmp_le0000_lut_0_5 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => vPos(0),
      I1 => vPos(1),
      O => Mcompar_VSYNC_cmp_le0000_lut_0_5_755
    );
  Mcompar_VSYNC_cmp_le0000_cy_0_4 : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => Mcompar_VSYNC_cmp_le0000_lut_0_5_755,
      O => Mcompar_VSYNC_cmp_le0000_cy_0_5_628
    );
  Mcompar_VSYNC_cmp_le0000_lut_1_2 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => vPos(2),
      I1 => vPos(3),
      I2 => vPos(4),
      I3 => vPos(5),
      O => Mcompar_VSYNC_cmp_le0000_lut_1_2_778
    );
  Mcompar_VSYNC_cmp_le0000_cy_1_4 : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy_0_5_628,
      DI => N1,
      S => Mcompar_VSYNC_cmp_le0000_lut_1_2_778,
      O => Mcompar_VSYNC_cmp_le0000_cy_1_5_648
    );
  Mcompar_VSYNC_cmp_le0000_lut_2_5 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => vPos(6),
      I1 => vPos(7),
      I2 => vPos(8),
      I3 => vPos(9),
      O => Mcompar_VSYNC_cmp_le0000_lut_2_5_787
    );
  Mcompar_VSYNC_cmp_le0000_cy_2_4 : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy_1_5_648,
      DI => N0,
      S => Mcompar_VSYNC_cmp_le0000_lut_2_5_787,
      O => Mcompar_VSYNC_cmp_le0000_cy_2_5_665
    );
  Mcompar_VSYNC_cmp_le0000_lut_3_4 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => vPos(10),
      I1 => vPos(11),
      I2 => vPos(12),
      I3 => vPos(13),
      O => Mcompar_VSYNC_cmp_le0000_lut_3_4_796
    );
  Mcompar_VSYNC_cmp_le0000_cy_3_4 : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy_2_5_665,
      DI => N0,
      S => Mcompar_VSYNC_cmp_le0000_lut_3_4_796,
      O => Mcompar_VSYNC_cmp_le0000_cy_3_5_676
    );
  Mcompar_VSYNC_cmp_le0000_lut_4_4 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => vPos(14),
      I1 => vPos(15),
      I2 => vPos(16),
      I3 => vPos(17),
      O => Mcompar_VSYNC_cmp_le0000_lut_4_4_804
    );
  Mcompar_VSYNC_cmp_le0000_cy_4_4 : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy_3_5_676,
      DI => N0,
      S => Mcompar_VSYNC_cmp_le0000_lut_4_4_804,
      O => Mcompar_VSYNC_cmp_le0000_cy_4_5_690
    );
  Mcompar_VSYNC_cmp_le0000_lut_5_5 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => vPos(18),
      I1 => vPos(19),
      I2 => vPos(20),
      I3 => vPos(21),
      O => Mcompar_VSYNC_cmp_le0000_lut_5_5_814
    );
  Mcompar_VSYNC_cmp_le0000_cy_5_4 : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy_4_5_690,
      DI => N0,
      S => Mcompar_VSYNC_cmp_le0000_lut_5_5_814,
      O => Mcompar_VSYNC_cmp_le0000_cy_5_5_703
    );
  Mcompar_VSYNC_cmp_le0000_lut_6_5 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => vPos(22),
      I1 => vPos(23),
      I2 => vPos(24),
      I3 => vPos(25),
      O => Mcompar_VSYNC_cmp_le0000_lut_6_5_825
    );
  Mcompar_VSYNC_cmp_le0000_cy_6_4 : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy_5_5_703,
      DI => N0,
      S => Mcompar_VSYNC_cmp_le0000_lut_6_5_825,
      O => Mcompar_VSYNC_cmp_le0000_cy_6_5_715
    );
  Mcompar_VSYNC_cmp_le0000_lut_7_5 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => vPos(26),
      I1 => vPos(27),
      I2 => vPos(28),
      I3 => vPos(29),
      O => Mcompar_VSYNC_cmp_le0000_lut_7_5_835
    );
  Mcompar_VSYNC_cmp_le0000_cy_7_4 : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy_6_5_715,
      DI => N0,
      S => Mcompar_VSYNC_cmp_le0000_lut_7_5_835,
      O => Mcompar_VSYNC_cmp_le0000_cy_7_5_726
    );
  Mcompar_VSYNC_cmp_le0000_cy_8_4 : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy_7_5_726,
      DI => N0,
      S => Mcompar_VSYNC_cmp_le0000_lut_8_5,
      O => Mcompar_VSYNC_cmp_le0000_cy_8_4_736
    );
  Mcompar_VSYNC_cmp_le0000_cy_9_3 : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy_8_4_736,
      DI => vPos(31),
      S => Mcompar_VSYNC_cmp_le0000_lut_9_4,
      O => RGB_cmp_le0004
    );
  Mcompar_VSYNC_cmp_le0000_cy_0_5 : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => Mcompar_VSYNC_cmp_le0000_lut_0_6,
      O => Mcompar_VSYNC_cmp_le0000_cy_0_6_629
    );
  Mcompar_VSYNC_cmp_le0000_cy_1_5 : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy_0_6_629,
      DI => N1,
      S => Mcompar_VSYNC_cmp_le0000_cy_1_5_rt_655,
      O => Mcompar_VSYNC_cmp_le0000_cy_1_6_649
    );
  Mcompar_VSYNC_cmp_le0000_cy_2_5 : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy_1_6_649,
      DI => N0,
      S => Mcompar_VSYNC_cmp_le0000_lut_2_6,
      O => Mcompar_VSYNC_cmp_le0000_cy_2_6_666
    );
  Mcompar_VSYNC_cmp_le0000_lut_3_5 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => vPos(3),
      I1 => vPos(4),
      I2 => vPos(5),
      I3 => vPos(6),
      O => Mcompar_VSYNC_cmp_le0000_lut_3_5_797
    );
  Mcompar_VSYNC_cmp_le0000_cy_3_5 : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy_2_6_666,
      DI => N1,
      S => Mcompar_VSYNC_cmp_le0000_lut_3_5_797,
      O => Mcompar_VSYNC_cmp_le0000_cy_3_6_677
    );
  Mcompar_VSYNC_cmp_le0000_cy_4_5 : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy_3_6_677,
      DI => N1,
      S => Mcompar_VSYNC_cmp_le0000_cy_4_5_rt_696,
      O => Mcompar_VSYNC_cmp_le0000_cy_4_6_691
    );
  Mcompar_VSYNC_cmp_le0000_lut_5_6 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => vPos(8),
      I1 => vPos(9),
      I2 => vPos(10),
      I3 => vPos(11),
      O => Mcompar_VSYNC_cmp_le0000_lut_5_6_815
    );
  Mcompar_VSYNC_cmp_le0000_cy_5_5 : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy_4_6_691,
      DI => N0,
      S => Mcompar_VSYNC_cmp_le0000_lut_5_6_815,
      O => Mcompar_VSYNC_cmp_le0000_cy_5_6_704
    );
  Mcompar_VSYNC_cmp_le0000_lut_6_6 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => vPos(12),
      I1 => vPos(13),
      I2 => vPos(14),
      I3 => vPos(15),
      O => Mcompar_VSYNC_cmp_le0000_lut_6_6_826
    );
  Mcompar_VSYNC_cmp_le0000_cy_6_5 : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy_5_6_704,
      DI => N0,
      S => Mcompar_VSYNC_cmp_le0000_lut_6_6_826,
      O => Mcompar_VSYNC_cmp_le0000_cy_6_6_716
    );
  Mcompar_VSYNC_cmp_le0000_lut_7_6 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => vPos(16),
      I1 => vPos(17),
      I2 => vPos(18),
      I3 => vPos(19),
      O => Mcompar_VSYNC_cmp_le0000_lut_7_6_836
    );
  Mcompar_VSYNC_cmp_le0000_cy_7_5 : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy_6_6_716,
      DI => N0,
      S => Mcompar_VSYNC_cmp_le0000_lut_7_6_836,
      O => Mcompar_VSYNC_cmp_le0000_cy_7_6_727
    );
  Mcompar_VSYNC_cmp_le0000_lut_8_6 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => vPos(20),
      I1 => vPos(21),
      I2 => vPos(22),
      I3 => vPos(23),
      O => Mcompar_VSYNC_cmp_le0000_lut_8_6_847
    );
  Mcompar_VSYNC_cmp_le0000_cy_8_5 : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy_7_6_727,
      DI => N0,
      S => Mcompar_VSYNC_cmp_le0000_lut_8_6_847,
      O => Mcompar_VSYNC_cmp_le0000_cy_8_5_737
    );
  Mcompar_VSYNC_cmp_le0000_lut_9_5 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => vPos(24),
      I1 => vPos(25),
      I2 => vPos(26),
      I3 => vPos(27),
      O => Mcompar_VSYNC_cmp_le0000_lut_9_5_856
    );
  Mcompar_VSYNC_cmp_le0000_cy_9_4 : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy_8_5_737,
      DI => N0,
      S => Mcompar_VSYNC_cmp_le0000_lut_9_5_856,
      O => Mcompar_VSYNC_cmp_le0000_cy_9_4_745
    );
  Mcompar_VSYNC_cmp_le0000_lut_10_4 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => vPos(28),
      I1 => vPos(29),
      I2 => vPos(30),
      O => Mcompar_VSYNC_cmp_le0000_lut_10_4_764
    );
  Mcompar_VSYNC_cmp_le0000_cy_10_3 : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy_9_4_745,
      DI => N0,
      S => Mcompar_VSYNC_cmp_le0000_lut_10_4_764,
      O => Mcompar_VSYNC_cmp_le0000_cy_10_3_636
    );
  Mcompar_VSYNC_cmp_le0000_cy_11_1 : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy_10_3_636,
      DI => vPos(31),
      S => Mcompar_VSYNC_cmp_le0000_lut_11_2,
      O => RGB_cmp_le0018
    );
  Mcompar_VSYNC_cmp_le0000_lut_0_7 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => vPos(0),
      I1 => vPos(1),
      I2 => vPos(2),
      I3 => vPos(3),
      O => Mcompar_VSYNC_cmp_le0000_lut_0_7_757
    );
  Mcompar_VSYNC_cmp_le0000_cy_0_6 : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => Mcompar_VSYNC_cmp_le0000_lut_0_7_757,
      O => Mcompar_VSYNC_cmp_le0000_cy_0_7_630
    );
  Mcompar_VSYNC_cmp_le0000_lut_1_3 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => vPos(4),
      I1 => vPos_5_1_1952,
      I2 => vPos_6_1_1954,
      I3 => vPos_7_1_1956,
      O => Mcompar_VSYNC_cmp_le0000_lut_1_3_779
    );
  Mcompar_VSYNC_cmp_le0000_cy_1_6 : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy_0_7_630,
      DI => N1,
      S => Mcompar_VSYNC_cmp_le0000_lut_1_3_779,
      O => Mcompar_VSYNC_cmp_le0000_cy_1_7_650
    );
  Mcompar_VSYNC_cmp_le0000_lut_2_7 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => vPos_8_1_1958,
      I1 => vPos(9),
      I2 => vPos(10),
      I3 => vPos(11),
      O => Mcompar_VSYNC_cmp_le0000_lut_2_7_789
    );
  Mcompar_VSYNC_cmp_le0000_cy_2_6 : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy_1_7_650,
      DI => N0,
      S => Mcompar_VSYNC_cmp_le0000_lut_2_7_789,
      O => Mcompar_VSYNC_cmp_le0000_cy_2_7_667
    );
  Mcompar_VSYNC_cmp_le0000_lut_3_6 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => vPos(12),
      I1 => vPos(13),
      I2 => vPos(14),
      I3 => vPos(15),
      O => Mcompar_VSYNC_cmp_le0000_lut_3_6_798
    );
  Mcompar_VSYNC_cmp_le0000_cy_3_6 : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy_2_7_667,
      DI => N0,
      S => Mcompar_VSYNC_cmp_le0000_lut_3_6_798,
      O => Mcompar_VSYNC_cmp_le0000_cy_3_7_678
    );
  Mcompar_VSYNC_cmp_le0000_lut_4_5 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => vPos(16),
      I1 => vPos(17),
      I2 => vPos(18),
      I3 => vPos(19),
      O => Mcompar_VSYNC_cmp_le0000_lut_4_5_805
    );
  Mcompar_VSYNC_cmp_le0000_cy_4_6 : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy_3_7_678,
      DI => N0,
      S => Mcompar_VSYNC_cmp_le0000_lut_4_5_805,
      O => Mcompar_VSYNC_cmp_le0000_cy_4_7_692
    );
  Mcompar_VSYNC_cmp_le0000_lut_5_7 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => vPos(20),
      I1 => vPos(21),
      I2 => vPos(22),
      I3 => vPos(23),
      O => Mcompar_VSYNC_cmp_le0000_lut_5_7_816
    );
  Mcompar_VSYNC_cmp_le0000_cy_5_6 : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy_4_7_692,
      DI => N0,
      S => Mcompar_VSYNC_cmp_le0000_lut_5_7_816,
      O => Mcompar_VSYNC_cmp_le0000_cy_5_7_705
    );
  Mcompar_VSYNC_cmp_le0000_lut_6_7 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => vPos(24),
      I1 => vPos(25),
      I2 => vPos(26),
      I3 => vPos(27),
      O => Mcompar_VSYNC_cmp_le0000_lut_6_7_827
    );
  Mcompar_VSYNC_cmp_le0000_cy_6_6 : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy_5_7_705,
      DI => N0,
      S => Mcompar_VSYNC_cmp_le0000_lut_6_7_827,
      O => Mcompar_VSYNC_cmp_le0000_cy_6_7_717
    );
  Mcompar_VSYNC_cmp_le0000_lut_7_7 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => vPos(28),
      I1 => vPos(29),
      I2 => vPos(30),
      O => Mcompar_VSYNC_cmp_le0000_lut_7_7_837
    );
  Mcompar_VSYNC_cmp_le0000_cy_7_6 : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy_6_7_717,
      DI => N0,
      S => Mcompar_VSYNC_cmp_le0000_lut_7_7_837,
      O => Mcompar_VSYNC_cmp_le0000_cy_7_7_728
    );
  Mcompar_VSYNC_cmp_le0000_cy_8_6 : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy_7_7_728,
      DI => vPos(31),
      S => Mcompar_VSYNC_cmp_le0000_lut_8_7,
      O => RGB_cmp_le0025
    );
  Mcompar_VSYNC_cmp_le0000_cy_0_7 : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => Mcompar_VSYNC_cmp_le0000_lut_0_8,
      O => Mcompar_VSYNC_cmp_le0000_cy_0_8_631
    );
  Mcompar_VSYNC_cmp_le0000_lut_1_4 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => vPos(1),
      I1 => vPos(2),
      O => Mcompar_VSYNC_cmp_le0000_lut_1_4_780
    );
  Mcompar_VSYNC_cmp_le0000_cy_1_7 : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy_0_8_631,
      DI => N1,
      S => Mcompar_VSYNC_cmp_le0000_lut_1_4_780,
      O => Mcompar_VSYNC_cmp_le0000_cy_1_8_651
    );
  Mcompar_VSYNC_cmp_le0000_lut_2_8 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => vPos(3),
      I1 => vPos(4),
      I2 => vPos(5),
      I3 => vPos(6),
      O => Mcompar_VSYNC_cmp_le0000_lut_2_8_790
    );
  Mcompar_VSYNC_cmp_le0000_cy_2_7 : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy_1_8_651,
      DI => N0,
      S => Mcompar_VSYNC_cmp_le0000_lut_2_8_790,
      O => Mcompar_VSYNC_cmp_le0000_cy_2_8_668
    );
  Mcompar_VSYNC_cmp_le0000_lut_3_7 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => vPos_7_1_1956,
      I1 => vPos_8_1_1958,
      O => Mcompar_VSYNC_cmp_le0000_lut_3_7_799
    );
  Mcompar_VSYNC_cmp_le0000_cy_3_7 : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy_2_8_668,
      DI => N1,
      S => Mcompar_VSYNC_cmp_le0000_lut_3_7_799,
      O => Mcompar_VSYNC_cmp_le0000_cy_3_8_679
    );
  Mcompar_VSYNC_cmp_le0000_lut_4_6 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => vPos(9),
      I1 => vPos(10),
      I2 => vPos(11),
      I3 => vPos(12),
      O => Mcompar_VSYNC_cmp_le0000_lut_4_6_806
    );
  Mcompar_VSYNC_cmp_le0000_cy_4_7 : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy_3_8_679,
      DI => N0,
      S => Mcompar_VSYNC_cmp_le0000_lut_4_6_806,
      O => Mcompar_VSYNC_cmp_le0000_cy_4_8_693
    );
  Mcompar_VSYNC_cmp_le0000_lut_5_8 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => vPos(13),
      I1 => vPos(14),
      I2 => vPos(15),
      I3 => vPos(16),
      O => Mcompar_VSYNC_cmp_le0000_lut_5_8_817
    );
  Mcompar_VSYNC_cmp_le0000_cy_5_7 : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy_4_8_693,
      DI => N0,
      S => Mcompar_VSYNC_cmp_le0000_lut_5_8_817,
      O => Mcompar_VSYNC_cmp_le0000_cy_5_8_706
    );
  Mcompar_VSYNC_cmp_le0000_lut_6_8 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => vPos(17),
      I1 => vPos(18),
      I2 => vPos(19),
      I3 => vPos(20),
      O => Mcompar_VSYNC_cmp_le0000_lut_6_8_828
    );
  Mcompar_VSYNC_cmp_le0000_cy_6_7 : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy_5_8_706,
      DI => N0,
      S => Mcompar_VSYNC_cmp_le0000_lut_6_8_828,
      O => Mcompar_VSYNC_cmp_le0000_cy_6_8_718
    );
  Mcompar_VSYNC_cmp_le0000_lut_7_8 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => vPos(21),
      I1 => vPos(22),
      I2 => vPos(23),
      I3 => vPos(24),
      O => Mcompar_VSYNC_cmp_le0000_lut_7_8_838
    );
  Mcompar_VSYNC_cmp_le0000_cy_7_7 : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy_6_8_718,
      DI => N0,
      S => Mcompar_VSYNC_cmp_le0000_lut_7_8_838,
      O => Mcompar_VSYNC_cmp_le0000_cy_7_8_729
    );
  Mcompar_VSYNC_cmp_le0000_lut_8_8 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => vPos(25),
      I1 => vPos(26),
      I2 => vPos(27),
      I3 => vPos(28),
      O => Mcompar_VSYNC_cmp_le0000_lut_8_8_849
    );
  Mcompar_VSYNC_cmp_le0000_cy_8_7 : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy_7_8_729,
      DI => N0,
      S => Mcompar_VSYNC_cmp_le0000_lut_8_8_849,
      O => Mcompar_VSYNC_cmp_le0000_cy_8_6_738
    );
  Mcompar_VSYNC_cmp_le0000_lut_9_6 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => vPos(29),
      I1 => vPos(30),
      O => Mcompar_VSYNC_cmp_le0000_lut_9_6_857
    );
  Mcompar_VSYNC_cmp_le0000_cy_9_5 : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy_8_6_738,
      DI => N0,
      S => Mcompar_VSYNC_cmp_le0000_lut_9_6_857,
      O => Mcompar_VSYNC_cmp_le0000_cy_9_5_746
    );
  Mcompar_VSYNC_cmp_le0000_cy_10_4 : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy_9_5_746,
      DI => vPos(31),
      S => Mcompar_VSYNC_cmp_le0000_lut_10_5,
      O => RGB_cmp_le0027
    );
  Mcompar_VSYNC_cmp_le0000_lut_0_9 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => vPos(1),
      I1 => vPos(2),
      O => Mcompar_VSYNC_cmp_le0000_lut_0_9_759
    );
  Mcompar_VSYNC_cmp_le0000_cy_0_8 : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => Mcompar_VSYNC_cmp_le0000_lut_0_9_759,
      O => Mcompar_VSYNC_cmp_le0000_cy_0_9_632
    );
  Mcompar_VSYNC_cmp_le0000_cy_1_8 : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy_0_9_632,
      DI => N1,
      S => Mcompar_VSYNC_cmp_le0000_cy_1_8_rt_656,
      O => Mcompar_VSYNC_cmp_le0000_cy_1_9_652
    );
  Mcompar_VSYNC_cmp_le0000_lut_2_9 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => vPos(4),
      I1 => vPos(5),
      I2 => vPos(6),
      I3 => vPos(7),
      O => Mcompar_VSYNC_cmp_le0000_lut_2_9_791
    );
  Mcompar_VSYNC_cmp_le0000_cy_2_8 : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy_1_9_652,
      DI => N0,
      S => Mcompar_VSYNC_cmp_le0000_lut_2_9_791,
      O => Mcompar_VSYNC_cmp_le0000_cy_2_9_669
    );
  Mcompar_VSYNC_cmp_le0000_cy_3_8 : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy_2_9_669,
      DI => N1,
      S => Mcompar_VSYNC_cmp_le0000_cy_3_8_rt_682,
      O => Mcompar_VSYNC_cmp_le0000_cy_3_9_680
    );
  Mcompar_VSYNC_cmp_le0000_lut_4_7 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => vPos(9),
      I1 => vPos(10),
      I2 => vPos(11),
      I3 => vPos(12),
      O => Mcompar_VSYNC_cmp_le0000_lut_4_7_807
    );
  Mcompar_VSYNC_cmp_le0000_cy_4_8 : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy_3_9_680,
      DI => N0,
      S => Mcompar_VSYNC_cmp_le0000_lut_4_7_807,
      O => Mcompar_VSYNC_cmp_le0000_cy_4_9_694
    );
  Mcompar_VSYNC_cmp_le0000_lut_5_9 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => vPos(13),
      I1 => vPos(14),
      I2 => vPos(15),
      I3 => vPos(16),
      O => Mcompar_VSYNC_cmp_le0000_lut_5_9_818
    );
  Mcompar_VSYNC_cmp_le0000_cy_5_8 : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy_4_9_694,
      DI => N0,
      S => Mcompar_VSYNC_cmp_le0000_lut_5_9_818,
      O => Mcompar_VSYNC_cmp_le0000_cy_5_9_707
    );
  Mcompar_VSYNC_cmp_le0000_lut_6_9 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => vPos(17),
      I1 => vPos(18),
      I2 => vPos(19),
      I3 => vPos(20),
      O => Mcompar_VSYNC_cmp_le0000_lut_6_9_829
    );
  Mcompar_VSYNC_cmp_le0000_cy_6_8 : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy_5_9_707,
      DI => N0,
      S => Mcompar_VSYNC_cmp_le0000_lut_6_9_829,
      O => Mcompar_VSYNC_cmp_le0000_cy_6_9_719
    );
  Mcompar_VSYNC_cmp_le0000_lut_7_9 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => vPos(21),
      I1 => vPos(22),
      I2 => vPos(23),
      I3 => vPos(24),
      O => Mcompar_VSYNC_cmp_le0000_lut_7_9_839
    );
  Mcompar_VSYNC_cmp_le0000_cy_7_8 : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy_6_9_719,
      DI => N0,
      S => Mcompar_VSYNC_cmp_le0000_lut_7_9_839,
      O => Mcompar_VSYNC_cmp_le0000_cy_7_9_730
    );
  Mcompar_VSYNC_cmp_le0000_lut_8_9 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => vPos(25),
      I1 => vPos(26),
      I2 => vPos(27),
      I3 => vPos(28),
      O => Mcompar_VSYNC_cmp_le0000_lut_8_9_850
    );
  Mcompar_VSYNC_cmp_le0000_cy_8_8 : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy_7_9_730,
      DI => N0,
      S => Mcompar_VSYNC_cmp_le0000_lut_8_9_850,
      O => Mcompar_VSYNC_cmp_le0000_cy_8_7_739
    );
  Mcompar_VSYNC_cmp_le0000_lut_9_7 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => vPos(29),
      I1 => vPos(30),
      O => Mcompar_VSYNC_cmp_le0000_lut_9_7_858
    );
  Mcompar_VSYNC_cmp_le0000_cy_9_6 : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy_8_7_739,
      DI => N0,
      S => Mcompar_VSYNC_cmp_le0000_lut_9_7_858,
      O => Mcompar_VSYNC_cmp_le0000_cy_9_6_747
    );
  Mcompar_VSYNC_cmp_le0000_cy_10_5 : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy_9_6_747,
      DI => vPos(31),
      S => Mcompar_VSYNC_cmp_le0000_lut_10_6,
      O => RGB_cmp_le0030
    );
  Mcompar_VSYNC_cmp_le0000_lut_0_10 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => vPos(0),
      I1 => vPos(1),
      O => Mcompar_VSYNC_cmp_le0000_lut_0_10_751
    );
  Mcompar_VSYNC_cmp_le0000_cy_0_9 : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => Mcompar_VSYNC_cmp_le0000_lut_0_10_751,
      O => Mcompar_VSYNC_cmp_le0000_cy_0_10
    );
  Mcompar_VSYNC_cmp_le0000_cy_1_9 : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy_0_10,
      DI => N1,
      S => Mcompar_VSYNC_cmp_le0000_cy_1_9_rt_657,
      O => Mcompar_VSYNC_cmp_le0000_cy_1_10
    );
  Mcompar_VSYNC_cmp_le0000_cy_2_9 : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy_1_10,
      DI => N0,
      S => Mcompar_VSYNC_cmp_le0000_lut_2_10,
      O => Mcompar_VSYNC_cmp_le0000_cy_2_10
    );
  Mcompar_VSYNC_cmp_le0000_cy_3_9 : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy_2_10,
      DI => N1,
      S => Mcompar_VSYNC_cmp_le0000_cy_3_9_rt_683,
      O => Mcompar_VSYNC_cmp_le0000_cy_3_10
    );
  Mcompar_VSYNC_cmp_le0000_cy_4_9 : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy_3_10,
      DI => N0,
      S => Mcompar_VSYNC_cmp_le0000_lut_4_8,
      O => Mcompar_VSYNC_cmp_le0000_cy_4_10
    );
  Mcompar_VSYNC_cmp_le0000_cy_5_9 : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy_4_10,
      DI => N1,
      S => Mcompar_VSYNC_cmp_le0000_cy_5_9_rt_708,
      O => Mcompar_VSYNC_cmp_le0000_cy_5_10
    );
  Mcompar_VSYNC_cmp_le0000_cy_6_9 : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy_5_10,
      DI => N0,
      S => Mcompar_VSYNC_cmp_le0000_lut_6_10,
      O => Mcompar_VSYNC_cmp_le0000_cy_6_10
    );
  Mcompar_VSYNC_cmp_le0000_cy_7_9 : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy_6_10,
      DI => N1,
      S => Mcompar_VSYNC_cmp_le0000_cy_7_9_rt_731,
      O => Mcompar_VSYNC_cmp_le0000_cy_7_10
    );
  Mcompar_VSYNC_cmp_le0000_lut_8_10 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => vPos(9),
      I1 => vPos(10),
      I2 => vPos(11),
      I3 => vPos(12),
      O => Mcompar_VSYNC_cmp_le0000_lut_8_10_842
    );
  Mcompar_VSYNC_cmp_le0000_cy_8_9 : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy_7_10,
      DI => N0,
      S => Mcompar_VSYNC_cmp_le0000_lut_8_10_842,
      O => Mcompar_VSYNC_cmp_le0000_cy_8_8_740
    );
  Mcompar_VSYNC_cmp_le0000_lut_9_8 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => vPos(13),
      I1 => vPos(14),
      I2 => vPos(15),
      I3 => vPos(16),
      O => Mcompar_VSYNC_cmp_le0000_lut_9_8_859
    );
  Mcompar_VSYNC_cmp_le0000_cy_9_7 : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy_8_8_740,
      DI => N0,
      S => Mcompar_VSYNC_cmp_le0000_lut_9_8_859,
      O => Mcompar_VSYNC_cmp_le0000_cy_9_7_748
    );
  Mcompar_VSYNC_cmp_le0000_lut_10_7 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => vPos(17),
      I1 => vPos(18),
      I2 => vPos(19),
      I3 => vPos(20),
      O => Mcompar_VSYNC_cmp_le0000_lut_10_7_767
    );
  Mcompar_VSYNC_cmp_le0000_cy_10_6 : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy_9_7_748,
      DI => N0,
      S => Mcompar_VSYNC_cmp_le0000_lut_10_7_767,
      O => Mcompar_VSYNC_cmp_le0000_cy_10_4_637
    );
  Mcompar_VSYNC_cmp_le0000_lut_11_3 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => vPos(21),
      I1 => vPos(22),
      I2 => vPos(23),
      I3 => vPos(24),
      O => Mcompar_VSYNC_cmp_le0000_lut_11_3_771
    );
  Mcompar_VSYNC_cmp_le0000_cy_11_2 : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy_10_4_637,
      DI => N0,
      S => Mcompar_VSYNC_cmp_le0000_lut_11_3_771,
      O => Mcompar_VSYNC_cmp_le0000_cy_11_1_639
    );
  Mcompar_VSYNC_cmp_le0000_lut_12_1 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => vPos(25),
      I1 => vPos(26),
      I2 => vPos(27),
      I3 => vPos(28),
      O => Mcompar_VSYNC_cmp_le0000_lut_12_1_773
    );
  Mcompar_VSYNC_cmp_le0000_cy_12_0 : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy_11_1_639,
      DI => N0,
      S => Mcompar_VSYNC_cmp_le0000_lut_12_1_773,
      O => Mcompar_VSYNC_cmp_le0000_cy(12)
    );
  Mcompar_VSYNC_cmp_le0000_lut_13_Q : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => vPos(29),
      I1 => vPos(30),
      O => Mcompar_VSYNC_cmp_le0000_lut(13)
    );
  Mcompar_VSYNC_cmp_le0000_cy_13_Q : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy(12),
      DI => N0,
      S => Mcompar_VSYNC_cmp_le0000_lut(13),
      O => Mcompar_VSYNC_cmp_le0000_cy(13)
    );
  Mcompar_VSYNC_cmp_le0000_cy_14_Q : MUXCY
    port map (
      CI => Mcompar_VSYNC_cmp_le0000_cy(13),
      DI => vPos(31),
      S => Mcompar_VSYNC_cmp_le0000_lut(14),
      O => RGB_cmp_le0032
    );
  Mcompar_RGB_cmp_ge0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => Mcompar_RGB_cmp_ge0000_cy_0_rt_36,
      O => Mcompar_RGB_cmp_ge0000_cy(0)
    );
  Mcompar_RGB_cmp_ge0000_cy_1_Q : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy(0),
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut(1),
      O => Mcompar_RGB_cmp_ge0000_cy(1)
    );
  Mcompar_RGB_cmp_ge0000_cy_2_Q : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy(1),
      DI => N0,
      S => Mcompar_RGB_cmp_ge0000_cy_2_rt_115,
      O => Mcompar_RGB_cmp_ge0000_cy(2)
    );
  Mcompar_RGB_cmp_ge0000_lut_3_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos_5_1_1891,
      I1 => hPos_6_1_1894,
      I2 => hPos_4_1_1888,
      I3 => hPos_3_1_1885,
      O => Mcompar_RGB_cmp_ge0000_lut(3)
    );
  Mcompar_RGB_cmp_ge0000_cy_3_Q : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy(2),
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut(3),
      O => Mcompar_RGB_cmp_ge0000_cy(3)
    );
  Mcompar_RGB_cmp_ge0000_lut_4_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos_9_1_1903,
      I1 => hPos_10_1_1839,
      I2 => hPos_7_1_1897,
      I3 => hPos_8_1_1900,
      O => Mcompar_RGB_cmp_ge0000_lut(4)
    );
  Mcompar_RGB_cmp_ge0000_cy_4_Q : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy(3),
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut(4),
      O => Mcompar_RGB_cmp_ge0000_cy(4)
    );
  Mcompar_RGB_cmp_ge0000_lut_5_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos_13_1_1845,
      I1 => hPos_14_1_1847,
      I2 => hPos_12_1_1843,
      I3 => hPos_11_1_1841,
      O => Mcompar_RGB_cmp_ge0000_lut(5)
    );
  Mcompar_RGB_cmp_ge0000_cy_5_Q : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy(4),
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut(5),
      O => Mcompar_RGB_cmp_ge0000_cy(5)
    );
  Mcompar_RGB_cmp_ge0000_lut_6_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos_17_1_1853,
      I1 => hPos_18_1_1855,
      I2 => hPos_16_1_1851,
      I3 => hPos_15_1_1849,
      O => Mcompar_RGB_cmp_ge0000_lut(6)
    );
  Mcompar_RGB_cmp_ge0000_cy_6_Q : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy(5),
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut(6),
      O => Mcompar_RGB_cmp_ge0000_cy(6)
    );
  Mcompar_RGB_cmp_ge0000_lut_7_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos_21_1_1864,
      I1 => hPos_22_1_1866,
      I2 => hPos_20_1_1862,
      I3 => hPos_19_1_1857,
      O => Mcompar_RGB_cmp_ge0000_lut(7)
    );
  Mcompar_RGB_cmp_ge0000_cy_7_Q : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy(6),
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut(7),
      O => Mcompar_RGB_cmp_ge0000_cy(7)
    );
  Mcompar_RGB_cmp_ge0000_lut_8_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos_23_1_1868,
      I1 => hPos_24_1_1870,
      I2 => hPos_25_1_1872,
      I3 => hPos_26_1_1874,
      O => Mcompar_RGB_cmp_ge0000_lut(8)
    );
  Mcompar_RGB_cmp_ge0000_cy_8_Q : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy(7),
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut(8),
      O => Mcompar_RGB_cmp_ge0000_cy(8)
    );
  Mcompar_RGB_cmp_ge0000_lut_9_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos_29_1_1878,
      I1 => hPos(30),
      I2 => hPos(28),
      I3 => hPos(27),
      O => Mcompar_RGB_cmp_ge0000_lut(9)
    );
  Mcompar_RGB_cmp_ge0000_cy_9_Q : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy(8),
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut(9),
      O => Mcompar_RGB_cmp_ge0000_cy(9)
    );
  Mcompar_RGB_cmp_ge0000_cy_10_Q : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy(9),
      DI => N0,
      S => Mcompar_RGB_cmp_ge0000_lut(10),
      O => RGB_cmp_ge0000
    );
  Mcompar_RGB_cmp_ge0000_lut_0_Q : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => hPos_0_2_1836,
      I1 => hPos_1_2_1859,
      I2 => hPos_2_2_1880,
      O => Mcompar_RGB_cmp_ge0000_lut(0)
    );
  Mcompar_RGB_cmp_ge0000_cy_0_0 : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => Mcompar_RGB_cmp_ge0000_lut(0),
      O => Mcompar_RGB_cmp_ge0000_cy_0_1_7
    );
  Mcompar_RGB_cmp_ge0000_cy_1_0 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_0_1_7,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_1_1,
      O => Mcompar_RGB_cmp_ge0000_cy_1_1_61
    );
  Mcompar_RGB_cmp_ge0000_lut_2_Q : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => hPos_4_2_1889,
      I1 => hPos_5_2_1892,
      O => Mcompar_RGB_cmp_ge0000_lut(2)
    );
  Mcompar_RGB_cmp_ge0000_cy_2_0 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_1_1_61,
      DI => N0,
      S => Mcompar_RGB_cmp_ge0000_lut(2),
      O => Mcompar_RGB_cmp_ge0000_cy_2_1_82
    );
  Mcompar_RGB_cmp_ge0000_lut_3_1 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos_6_2_1895,
      I1 => hPos_7_2_1898,
      I2 => hPos_8_2_1901,
      I3 => hPos(9),
      O => Mcompar_RGB_cmp_ge0000_lut_3_1_354
    );
  Mcompar_RGB_cmp_ge0000_cy_3_0 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_2_1_82,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_3_1_354,
      O => Mcompar_RGB_cmp_ge0000_cy_3_1_117
    );
  Mcompar_RGB_cmp_ge0000_lut_4_1 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(10),
      I1 => hPos(11),
      I2 => hPos(12),
      I3 => hPos(13),
      O => Mcompar_RGB_cmp_ge0000_lut_4_1_375
    );
  Mcompar_RGB_cmp_ge0000_cy_4_0 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_3_1_117,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_4_1_375,
      O => Mcompar_RGB_cmp_ge0000_cy_4_1_138
    );
  Mcompar_RGB_cmp_ge0000_lut_5_1 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(14),
      I1 => hPos(15),
      I2 => hPos(16),
      I3 => hPos(17),
      O => Mcompar_RGB_cmp_ge0000_lut_5_1_385
    );
  Mcompar_RGB_cmp_ge0000_cy_5_0 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_4_1_138,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_5_1_385,
      O => Mcompar_RGB_cmp_ge0000_cy_5_1_170
    );
  Mcompar_RGB_cmp_ge0000_lut_6_1 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(18),
      I1 => hPos(19),
      I2 => hPos(20),
      I3 => hPos(21),
      O => Mcompar_RGB_cmp_ge0000_lut_6_1_406
    );
  Mcompar_RGB_cmp_ge0000_cy_6_0 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_5_1_170,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_6_1_406,
      O => Mcompar_RGB_cmp_ge0000_cy_6_1_191
    );
  Mcompar_RGB_cmp_ge0000_lut_7_1 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(22),
      I1 => hPos(23),
      I2 => hPos(24),
      I3 => hPos(25),
      O => Mcompar_RGB_cmp_ge0000_lut_7_1_423
    );
  Mcompar_RGB_cmp_ge0000_cy_7_0 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_6_1_191,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_7_1_423,
      O => Mcompar_RGB_cmp_ge0000_cy_7_1_216
    );
  Mcompar_RGB_cmp_ge0000_lut_8_1 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(26),
      I1 => hPos(27),
      I2 => hPos(28),
      I3 => hPos(29),
      O => Mcompar_RGB_cmp_ge0000_lut_8_1_444
    );
  Mcompar_RGB_cmp_ge0000_cy_8_0 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_7_1_216,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_8_1_444,
      O => Mcompar_RGB_cmp_ge0000_cy_8_1_236
    );
  Mcompar_RGB_cmp_ge0000_cy_9_0 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_8_1_236,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_9_1,
      O => Mcompar_RGB_cmp_ge0000_cy_9_1_256
    );
  Mcompar_RGB_cmp_ge0000_cy_10_0 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_9_1_256,
      DI => N0,
      S => Mcompar_RGB_cmp_ge0000_lut_10_1,
      O => RGB_cmp_ge0002
    );
  Mcompar_RGB_cmp_ge0000_cy_0_1 : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => Mcompar_RGB_cmp_ge0000_cy_0_1_rt_30,
      O => Mcompar_RGB_cmp_ge0000_cy_0_2_18
    );
  Mcompar_RGB_cmp_ge0000_lut_1_2 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => hPos_1_2_1859,
      I1 => hPos_2_2_1880,
      O => Mcompar_RGB_cmp_ge0000_lut_1_2_337
    );
  Mcompar_RGB_cmp_ge0000_cy_1_1 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_0_2_18,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_1_2_337,
      O => Mcompar_RGB_cmp_ge0000_cy_1_2_72
    );
  Mcompar_RGB_cmp_ge0000_cy_2_1 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_1_2_72,
      DI => N0,
      S => Mcompar_RGB_cmp_ge0000_cy_2_1_rt_107,
      O => Mcompar_RGB_cmp_ge0000_cy_2_2_93
    );
  Mcompar_RGB_cmp_ge0000_cy_3_1 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_2_2_93,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_3_2,
      O => Mcompar_RGB_cmp_ge0000_cy_3_2_128
    );
  Mcompar_RGB_cmp_ge0000_lut_4_2 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => hPos_5_2_1892,
      I1 => hPos_6_2_1895,
      O => Mcompar_RGB_cmp_ge0000_lut_4_2_376
    );
  Mcompar_RGB_cmp_ge0000_cy_4_1 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_3_2_128,
      DI => N0,
      S => Mcompar_RGB_cmp_ge0000_lut_4_2_376,
      O => Mcompar_RGB_cmp_ge0000_cy_4_2_149
    );
  Mcompar_RGB_cmp_ge0000_lut_5_2 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos_7_2_1898,
      I1 => hPos_8_2_1901,
      I2 => hPos(9),
      I3 => hPos(10),
      O => Mcompar_RGB_cmp_ge0000_lut_5_2_396
    );
  Mcompar_RGB_cmp_ge0000_cy_5_1 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_4_2_149,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_5_2_396,
      O => Mcompar_RGB_cmp_ge0000_cy_5_2_181
    );
  Mcompar_RGB_cmp_ge0000_lut_6_2 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(11),
      I1 => hPos(12),
      I2 => hPos(13),
      I3 => hPos(14),
      O => Mcompar_RGB_cmp_ge0000_lut_6_2_414
    );
  Mcompar_RGB_cmp_ge0000_cy_6_1 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_5_2_181,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_6_2_414,
      O => Mcompar_RGB_cmp_ge0000_cy_6_2_202
    );
  Mcompar_RGB_cmp_ge0000_lut_7_2 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(15),
      I1 => hPos(16),
      I2 => hPos(17),
      I3 => hPos(18),
      O => Mcompar_RGB_cmp_ge0000_lut_7_2_434
    );
  Mcompar_RGB_cmp_ge0000_cy_7_1 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_6_2_202,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_7_2_434,
      O => Mcompar_RGB_cmp_ge0000_cy_7_2_227
    );
  Mcompar_RGB_cmp_ge0000_lut_8_2 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(19),
      I1 => hPos(20),
      I2 => hPos(21),
      I3 => hPos(22),
      O => Mcompar_RGB_cmp_ge0000_lut_8_2_455
    );
  Mcompar_RGB_cmp_ge0000_cy_8_1 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_7_2_227,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_8_2_455,
      O => Mcompar_RGB_cmp_ge0000_cy_8_2_247
    );
  Mcompar_RGB_cmp_ge0000_lut_9_2 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(23),
      I1 => hPos(24),
      I2 => hPos(25),
      I3 => hPos(26),
      O => Mcompar_RGB_cmp_ge0000_lut_9_2_475
    );
  Mcompar_RGB_cmp_ge0000_cy_9_1 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_8_2_247,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_9_2_475,
      O => Mcompar_RGB_cmp_ge0000_cy_9_2_265
    );
  Mcompar_RGB_cmp_ge0000_lut_10_2 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(27),
      I1 => hPos(28),
      I2 => hPos(29),
      I3 => hPos(30),
      O => Mcompar_RGB_cmp_ge0000_lut_10_2_294
    );
  Mcompar_RGB_cmp_ge0000_cy_10_1 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_9_2_265,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_10_2_294,
      O => Mcompar_RGB_cmp_ge0000_cy(10)
    );
  Mcompar_RGB_cmp_ge0000_cy_11_Q : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy(10),
      DI => N0,
      S => Mcompar_RGB_cmp_ge0000_lut(11),
      O => RGB_cmp_ge0004
    );
  Mcompar_RGB_cmp_ge0000_cy_0_2 : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => Mcompar_RGB_cmp_ge0000_cy_0_2_rt_31,
      O => Mcompar_RGB_cmp_ge0000_cy_0_3_20
    );
  Mcompar_RGB_cmp_ge0000_cy_1_2 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_0_3_20,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_1_3,
      O => Mcompar_RGB_cmp_ge0000_cy_1_3_74
    );
  Mcompar_RGB_cmp_ge0000_cy_2_2 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_1_3_74,
      DI => N0,
      S => Mcompar_RGB_cmp_ge0000_cy_2_2_rt_108,
      O => Mcompar_RGB_cmp_ge0000_cy_2_3_95
    );
  Mcompar_RGB_cmp_ge0000_lut_3_3 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => hPos_3_2_1886,
      I1 => hPos_4_2_1889,
      O => Mcompar_RGB_cmp_ge0000_lut_3_3_367
    );
  Mcompar_RGB_cmp_ge0000_cy_3_2 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_2_3_95,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_3_3_367,
      O => Mcompar_RGB_cmp_ge0000_cy_3_3_130
    );
  Mcompar_RGB_cmp_ge0000_cy_4_2 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_3_3_130,
      DI => N0,
      S => Mcompar_RGB_cmp_ge0000_cy_4_2_rt_163,
      O => Mcompar_RGB_cmp_ge0000_cy_4_3_151
    );
  Mcompar_RGB_cmp_ge0000_cy_5_2 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_4_3_151,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_5_3,
      O => Mcompar_RGB_cmp_ge0000_cy_5_3_183
    );
  Mcompar_RGB_cmp_ge0000_cy_6_2 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_5_3_183,
      DI => N0,
      S => Mcompar_RGB_cmp_ge0000_cy_6_2_rt_212,
      O => Mcompar_RGB_cmp_ge0000_cy_6_3_204
    );
  Mcompar_RGB_cmp_ge0000_lut_7_3 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos_8_2_1901,
      I1 => hPos(9),
      I2 => hPos(10),
      I3 => hPos(11),
      O => Mcompar_RGB_cmp_ge0000_lut_7_3_436
    );
  Mcompar_RGB_cmp_ge0000_cy_7_2 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_6_3_204,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_7_3_436,
      O => Mcompar_RGB_cmp_ge0000_cy_7_3_228
    );
  Mcompar_RGB_cmp_ge0000_lut_8_3 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(12),
      I1 => hPos(13),
      I2 => hPos(14),
      I3 => hPos(15),
      O => Mcompar_RGB_cmp_ge0000_lut_8_3_456
    );
  Mcompar_RGB_cmp_ge0000_cy_8_2 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_7_3_228,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_8_3_456,
      O => Mcompar_RGB_cmp_ge0000_cy_8_3_248
    );
  Mcompar_RGB_cmp_ge0000_lut_9_3 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(16),
      I1 => hPos(17),
      I2 => hPos(18),
      I3 => hPos(19),
      O => Mcompar_RGB_cmp_ge0000_lut_9_3_476
    );
  Mcompar_RGB_cmp_ge0000_cy_9_2 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_8_3_248,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_9_3_476,
      O => Mcompar_RGB_cmp_ge0000_cy_9_3_266
    );
  Mcompar_RGB_cmp_ge0000_lut_10_3 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(20),
      I1 => hPos(21),
      I2 => hPos(22),
      I3 => hPos(23),
      O => Mcompar_RGB_cmp_ge0000_lut_10_3_295
    );
  Mcompar_RGB_cmp_ge0000_cy_10_2 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_9_3_266,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_10_3_295,
      O => Mcompar_RGB_cmp_ge0000_cy_10_1_38
    );
  Mcompar_RGB_cmp_ge0000_lut_11_1 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(24),
      I1 => hPos(25),
      I2 => hPos(26),
      I3 => hPos(27),
      O => Mcompar_RGB_cmp_ge0000_lut_11_1_303
    );
  Mcompar_RGB_cmp_ge0000_cy_11_0 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_10_1_38,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_11_1_303,
      O => Mcompar_RGB_cmp_ge0000_cy(11)
    );
  Mcompar_RGB_cmp_ge0000_lut_12_Q : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => hPos(28),
      I1 => hPos(29),
      I2 => hPos(30),
      O => Mcompar_RGB_cmp_ge0000_lut(12)
    );
  Mcompar_RGB_cmp_ge0000_cy_12_Q : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy(11),
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut(12),
      O => Mcompar_RGB_cmp_ge0000_cy(12)
    );
  Mcompar_RGB_cmp_ge0000_cy_13_Q : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy(12),
      DI => N0,
      S => Mcompar_RGB_cmp_ge0000_lut(13),
      O => RGB_cmp_ge0005
    );
  Mcompar_RGB_cmp_ge0000_lut_0_1 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => hPos_0_1_1835,
      I1 => hPos_1_1_1858,
      I2 => hPos_2_1_1879,
      O => Mcompar_RGB_cmp_ge0000_lut_0_1_274
    );
  Mcompar_RGB_cmp_ge0000_cy_0_3 : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => Mcompar_RGB_cmp_ge0000_lut_0_1_274,
      O => Mcompar_RGB_cmp_ge0000_cy_0_4_21
    );
  Mcompar_RGB_cmp_ge0000_cy_1_3 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_0_4_21,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_1_4,
      O => Mcompar_RGB_cmp_ge0000_cy_1_4_75
    );
  Mcompar_RGB_cmp_ge0000_cy_2_3 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_1_4_75,
      DI => N0,
      S => Mcompar_RGB_cmp_ge0000_cy_2_3_rt_109,
      O => Mcompar_RGB_cmp_ge0000_cy_2_4_96
    );
  Mcompar_RGB_cmp_ge0000_cy_3_3 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_2_4_96,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_3_4,
      O => Mcompar_RGB_cmp_ge0000_cy_3_4_131
    );
  Mcompar_RGB_cmp_ge0000_lut_4_3 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => hPos_6_1_1894,
      I1 => hPos_7_1_1897,
      O => Mcompar_RGB_cmp_ge0000_lut_4_3_377
    );
  Mcompar_RGB_cmp_ge0000_cy_4_3 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_3_4_131,
      DI => N0,
      S => Mcompar_RGB_cmp_ge0000_lut_4_3_377,
      O => Mcompar_RGB_cmp_ge0000_cy_4_4_152
    );
  Mcompar_RGB_cmp_ge0000_lut_5_4 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos_11_1_1841,
      I1 => hPos_8_1_1900,
      I2 => hPos(10),
      I3 => hPos(9),
      O => Mcompar_RGB_cmp_ge0000_lut_5_4_399
    );
  Mcompar_RGB_cmp_ge0000_cy_5_3 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_4_4_152,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_5_4_399,
      O => Mcompar_RGB_cmp_ge0000_cy_5_4_184
    );
  Mcompar_RGB_cmp_ge0000_lut_6_3 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos_15_1_1849,
      I1 => hPos_12_1_1843,
      I2 => hPos(14),
      I3 => hPos(13),
      O => Mcompar_RGB_cmp_ge0000_lut_6_3_415
    );
  Mcompar_RGB_cmp_ge0000_cy_6_3 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_5_4_184,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_6_3_415,
      O => Mcompar_RGB_cmp_ge0000_cy_6_4_205
    );
  Mcompar_RGB_cmp_ge0000_lut_7_4 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos_19_1_1857,
      I1 => hPos_16_1_1851,
      I2 => hPos(18),
      I3 => hPos(17),
      O => Mcompar_RGB_cmp_ge0000_lut_7_4_437
    );
  Mcompar_RGB_cmp_ge0000_cy_7_3 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_6_4_205,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_7_4_437,
      O => Mcompar_RGB_cmp_ge0000_cy_7_4_229
    );
  Mcompar_RGB_cmp_ge0000_lut_8_4 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos_20_1_1862,
      I1 => hPos(21),
      I2 => hPos(22),
      I3 => hPos(23),
      O => Mcompar_RGB_cmp_ge0000_lut_8_4_457
    );
  Mcompar_RGB_cmp_ge0000_cy_8_3 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_7_4_229,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_8_4_457,
      O => Mcompar_RGB_cmp_ge0000_cy_8_4_249
    );
  Mcompar_RGB_cmp_ge0000_lut_9_4 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos_24_1_1870,
      I1 => hPos(25),
      I2 => hPos(26),
      I3 => hPos(27),
      O => Mcompar_RGB_cmp_ge0000_lut_9_4_477
    );
  Mcompar_RGB_cmp_ge0000_cy_9_3 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_8_4_249,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_9_4_477,
      O => Mcompar_RGB_cmp_ge0000_cy_9_4_267
    );
  Mcompar_RGB_cmp_ge0000_lut_10_4 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => hPos(28),
      I1 => hPos(29),
      I2 => hPos(30),
      O => Mcompar_RGB_cmp_ge0000_lut_10_4_296
    );
  Mcompar_RGB_cmp_ge0000_cy_10_3 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_9_4_267,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_10_4_296,
      O => Mcompar_RGB_cmp_ge0000_cy_10_2_44
    );
  Mcompar_RGB_cmp_ge0000_cy_11_1 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_10_2_44,
      DI => N0,
      S => Mcompar_RGB_cmp_ge0000_lut_11_2,
      O => RGB_cmp_ge0006
    );
  Mcompar_RGB_cmp_ge0000_cy_0_4 : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => Mcompar_RGB_cmp_ge0000_cy_0_4_rt_32,
      O => Mcompar_RGB_cmp_ge0000_cy_0_5_22
    );
  Mcompar_RGB_cmp_ge0000_lut_1_5 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => hPos_1_2_1859,
      I1 => hPos(2),
      O => Mcompar_RGB_cmp_ge0000_lut_1_5_341
    );
  Mcompar_RGB_cmp_ge0000_cy_1_4 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_0_5_22,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_1_5_341,
      O => Mcompar_RGB_cmp_ge0000_cy_1_5_76
    );
  Mcompar_RGB_cmp_ge0000_cy_2_4 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_1_5_76,
      DI => N0,
      S => Mcompar_RGB_cmp_ge0000_cy_2_4_rt_110,
      O => Mcompar_RGB_cmp_ge0000_cy_2_5_97
    );
  Mcompar_RGB_cmp_ge0000_lut_3_5 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos_4_2_1889,
      I1 => hPos(5),
      I2 => hPos(6),
      I3 => hPos(7),
      O => Mcompar_RGB_cmp_ge0000_lut_3_5_369
    );
  Mcompar_RGB_cmp_ge0000_cy_3_4 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_2_5_97,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_3_5_369,
      O => Mcompar_RGB_cmp_ge0000_cy_3_5_132
    );
  Mcompar_RGB_cmp_ge0000_cy_4_4 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_3_5_132,
      DI => N0,
      S => Mcompar_RGB_cmp_ge0000_cy_4_4_rt_164,
      O => Mcompar_RGB_cmp_ge0000_cy_4_5_153
    );
  Mcompar_RGB_cmp_ge0000_lut_5_5 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(9),
      I1 => hPos(10),
      I2 => hPos(11),
      I3 => hPos(12),
      O => Mcompar_RGB_cmp_ge0000_lut_5_5_400
    );
  Mcompar_RGB_cmp_ge0000_cy_5_4 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_4_5_153,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_5_5_400,
      O => Mcompar_RGB_cmp_ge0000_cy_5_5_185
    );
  Mcompar_RGB_cmp_ge0000_lut_6_4 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(13),
      I1 => hPos(14),
      I2 => hPos(15),
      I3 => hPos(16),
      O => Mcompar_RGB_cmp_ge0000_lut_6_4_416
    );
  Mcompar_RGB_cmp_ge0000_cy_6_4 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_5_5_185,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_6_4_416,
      O => Mcompar_RGB_cmp_ge0000_cy_6_5_206
    );
  Mcompar_RGB_cmp_ge0000_lut_7_5 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(17),
      I1 => hPos(18),
      I2 => hPos(19),
      I3 => hPos(20),
      O => Mcompar_RGB_cmp_ge0000_lut_7_5_438
    );
  Mcompar_RGB_cmp_ge0000_cy_7_4 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_6_5_206,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_7_5_438,
      O => Mcompar_RGB_cmp_ge0000_cy_7_5_230
    );
  Mcompar_RGB_cmp_ge0000_lut_8_5 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(21),
      I1 => hPos(22),
      I2 => hPos(23),
      I3 => hPos(24),
      O => Mcompar_RGB_cmp_ge0000_lut_8_5_458
    );
  Mcompar_RGB_cmp_ge0000_cy_8_4 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_7_5_230,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_8_5_458,
      O => Mcompar_RGB_cmp_ge0000_cy_8_5_250
    );
  Mcompar_RGB_cmp_ge0000_lut_9_5 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(25),
      I1 => hPos(26),
      I2 => hPos(27),
      I3 => hPos(28),
      O => Mcompar_RGB_cmp_ge0000_lut_9_5_478
    );
  Mcompar_RGB_cmp_ge0000_cy_9_4 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_8_5_250,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_9_5_478,
      O => Mcompar_RGB_cmp_ge0000_cy_9_5_268
    );
  Mcompar_RGB_cmp_ge0000_lut_10_5 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => hPos(29),
      I1 => hPos(30),
      O => Mcompar_RGB_cmp_ge0000_lut_10_5_297
    );
  Mcompar_RGB_cmp_ge0000_cy_10_4 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_9_5_268,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_10_5_297,
      O => Mcompar_RGB_cmp_ge0000_cy_10_3_45
    );
  Mcompar_RGB_cmp_ge0000_cy_11_2 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_10_3_45,
      DI => N0,
      S => Mcompar_RGB_cmp_ge0000_lut_11_3,
      O => RGB_cmp_ge0008
    );
  Mcompar_RGB_cmp_ge0000_lut_0_2 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => hPos_0_2_1836,
      I1 => hPos_1_2_1859,
      I2 => hPos_2_2_1880,
      O => Mcompar_RGB_cmp_ge0000_lut_0_2_276
    );
  Mcompar_RGB_cmp_ge0000_cy_0_5 : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => Mcompar_RGB_cmp_ge0000_lut_0_2_276,
      O => Mcompar_RGB_cmp_ge0000_cy_0_6_23
    );
  Mcompar_RGB_cmp_ge0000_cy_1_5 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_0_6_23,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_1_6,
      O => Mcompar_RGB_cmp_ge0000_cy_1_6_77
    );
  Mcompar_RGB_cmp_ge0000_lut_2_1 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => hPos_4_2_1889,
      I1 => hPos_5_2_1892,
      I2 => hPos_6_2_1895,
      O => Mcompar_RGB_cmp_ge0000_lut_2_1_347
    );
  Mcompar_RGB_cmp_ge0000_cy_2_5 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_1_6_77,
      DI => N0,
      S => Mcompar_RGB_cmp_ge0000_lut_2_1_347,
      O => Mcompar_RGB_cmp_ge0000_cy_2_6_98
    );
  Mcompar_RGB_cmp_ge0000_cy_3_5 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_2_6_98,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_3_6,
      O => Mcompar_RGB_cmp_ge0000_cy_3_6_133
    );
  Mcompar_RGB_cmp_ge0000_cy_4_5 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_3_6_133,
      DI => N0,
      S => Mcompar_RGB_cmp_ge0000_cy_4_5_rt_165,
      O => Mcompar_RGB_cmp_ge0000_cy_4_6_154
    );
  Mcompar_RGB_cmp_ge0000_lut_5_6 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(9),
      I1 => hPos(10),
      I2 => hPos(11),
      I3 => hPos(12),
      O => Mcompar_RGB_cmp_ge0000_lut_5_6_401
    );
  Mcompar_RGB_cmp_ge0000_cy_5_5 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_4_6_154,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_5_6_401,
      O => Mcompar_RGB_cmp_ge0000_cy_5_6_186
    );
  Mcompar_RGB_cmp_ge0000_lut_6_5 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(13),
      I1 => hPos(14),
      I2 => hPos(15),
      I3 => hPos(16),
      O => Mcompar_RGB_cmp_ge0000_lut_6_5_417
    );
  Mcompar_RGB_cmp_ge0000_cy_6_5 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_5_6_186,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_6_5_417,
      O => Mcompar_RGB_cmp_ge0000_cy_6_6_207
    );
  Mcompar_RGB_cmp_ge0000_lut_7_6 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(17),
      I1 => hPos(18),
      I2 => hPos(19),
      I3 => hPos(20),
      O => Mcompar_RGB_cmp_ge0000_lut_7_6_439
    );
  Mcompar_RGB_cmp_ge0000_cy_7_5 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_6_6_207,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_7_6_439,
      O => Mcompar_RGB_cmp_ge0000_cy_7_6_231
    );
  Mcompar_RGB_cmp_ge0000_lut_8_6 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(21),
      I1 => hPos(22),
      I2 => hPos(23),
      I3 => hPos(24),
      O => Mcompar_RGB_cmp_ge0000_lut_8_6_459
    );
  Mcompar_RGB_cmp_ge0000_cy_8_5 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_7_6_231,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_8_6_459,
      O => Mcompar_RGB_cmp_ge0000_cy_8_6_251
    );
  Mcompar_RGB_cmp_ge0000_lut_9_6 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(25),
      I1 => hPos(26),
      I2 => hPos(27),
      I3 => hPos(28),
      O => Mcompar_RGB_cmp_ge0000_lut_9_6_479
    );
  Mcompar_RGB_cmp_ge0000_cy_9_5 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_8_6_251,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_9_6_479,
      O => Mcompar_RGB_cmp_ge0000_cy_9_6_269
    );
  Mcompar_RGB_cmp_ge0000_lut_10_6 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => hPos(29),
      I1 => hPos(30),
      O => Mcompar_RGB_cmp_ge0000_lut_10_6_298
    );
  Mcompar_RGB_cmp_ge0000_cy_10_5 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_9_6_269,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_10_6_298,
      O => Mcompar_RGB_cmp_ge0000_cy_10_4_46
    );
  Mcompar_RGB_cmp_ge0000_cy_11_3 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_10_4_46,
      DI => N0,
      S => Mcompar_RGB_cmp_ge0000_lut_11_4,
      O => RGB_cmp_ge0009
    );
  Mcompar_RGB_cmp_ge0000_cy_0_6 : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => Mcompar_RGB_cmp_ge0000_cy_0_6_rt_33,
      O => Mcompar_RGB_cmp_ge0000_cy_0_7_24
    );
  Mcompar_RGB_cmp_ge0000_cy_1_6 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_0_7_24,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_1_7,
      O => Mcompar_RGB_cmp_ge0000_cy_1_7_78
    );
  Mcompar_RGB_cmp_ge0000_cy_2_6 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_1_7_78,
      DI => N0,
      S => Mcompar_RGB_cmp_ge0000_cy_2_6_rt_111,
      O => Mcompar_RGB_cmp_ge0000_cy_2_7_99
    );
  Mcompar_RGB_cmp_ge0000_lut_3_7 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => hPos(3),
      I1 => hPos(4),
      I2 => hPos(5),
      O => Mcompar_RGB_cmp_ge0000_lut_3_7_371
    );
  Mcompar_RGB_cmp_ge0000_cy_3_6 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_2_7_99,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_3_7_371,
      O => Mcompar_RGB_cmp_ge0000_cy_3_7_134
    );
  Mcompar_RGB_cmp_ge0000_cy_4_6 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_3_7_134,
      DI => N0,
      S => Mcompar_RGB_cmp_ge0000_cy_4_6_rt_166,
      O => Mcompar_RGB_cmp_ge0000_cy_4_7_155
    );
  Mcompar_RGB_cmp_ge0000_cy_5_6 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_4_7_155,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_5_7,
      O => Mcompar_RGB_cmp_ge0000_cy_5_7_187
    );
  Mcompar_RGB_cmp_ge0000_cy_6_6 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_5_7_187,
      DI => N0,
      S => Mcompar_RGB_cmp_ge0000_cy_6_6_rt_213,
      O => Mcompar_RGB_cmp_ge0000_cy_6_7_208
    );
  Mcompar_RGB_cmp_ge0000_lut_7_7 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(9),
      I1 => hPos(10),
      I2 => hPos(11),
      I3 => hPos(12),
      O => Mcompar_RGB_cmp_ge0000_lut_7_7_440
    );
  Mcompar_RGB_cmp_ge0000_cy_7_6 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_6_7_208,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_7_7_440,
      O => Mcompar_RGB_cmp_ge0000_cy_7_7_232
    );
  Mcompar_RGB_cmp_ge0000_lut_8_7 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(13),
      I1 => hPos(14),
      I2 => hPos(15),
      I3 => hPos(16),
      O => Mcompar_RGB_cmp_ge0000_lut_8_7_460
    );
  Mcompar_RGB_cmp_ge0000_cy_8_6 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_7_7_232,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_8_7_460,
      O => Mcompar_RGB_cmp_ge0000_cy_8_7_252
    );
  Mcompar_RGB_cmp_ge0000_lut_9_7 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(17),
      I1 => hPos(18),
      I2 => hPos(19),
      I3 => hPos(20),
      O => Mcompar_RGB_cmp_ge0000_lut_9_7_480
    );
  Mcompar_RGB_cmp_ge0000_cy_9_6 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_8_7_252,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_9_7_480,
      O => Mcompar_RGB_cmp_ge0000_cy_9_7_270
    );
  Mcompar_RGB_cmp_ge0000_lut_10_7 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(21),
      I1 => hPos(22),
      I2 => hPos(23),
      I3 => hPos(24),
      O => Mcompar_RGB_cmp_ge0000_lut_10_7_299
    );
  Mcompar_RGB_cmp_ge0000_cy_10_6 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_9_7_270,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_10_7_299,
      O => Mcompar_RGB_cmp_ge0000_cy_10_5_47
    );
  Mcompar_RGB_cmp_ge0000_lut_11_5 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(25),
      I1 => hPos(26),
      I2 => hPos(27),
      I3 => hPos(28),
      O => Mcompar_RGB_cmp_ge0000_lut_11_5_312
    );
  Mcompar_RGB_cmp_ge0000_cy_11_4 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_10_5_47,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_11_5_312,
      O => Mcompar_RGB_cmp_ge0000_cy_11_1_53
    );
  Mcompar_RGB_cmp_ge0000_lut_12_1 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => hPos(29),
      I1 => hPos(30),
      O => Mcompar_RGB_cmp_ge0000_lut_12_1_318
    );
  Mcompar_RGB_cmp_ge0000_cy_12_0 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_11_1_53,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_12_1_318,
      O => Mcompar_RGB_cmp_ge0000_cy_12_1_57
    );
  Mcompar_RGB_cmp_ge0000_cy_13_0 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_12_1_57,
      DI => N0,
      S => Mcompar_RGB_cmp_ge0000_lut_13_1,
      O => RGB_cmp_ge0010
    );
  Mcompar_RGB_cmp_ge0000_lut_0_3 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => hPos_0_2_1836,
      I1 => hPos_1_2_1859,
      I2 => hPos_2_2_1880,
      O => Mcompar_RGB_cmp_ge0000_lut_0_3_277
    );
  Mcompar_RGB_cmp_ge0000_cy_0_7 : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => Mcompar_RGB_cmp_ge0000_lut_0_3_277,
      O => Mcompar_RGB_cmp_ge0000_cy_0_8_25
    );
  Mcompar_RGB_cmp_ge0000_cy_1_7 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_0_8_25,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_1_8,
      O => Mcompar_RGB_cmp_ge0000_cy_1_8_79
    );
  Mcompar_RGB_cmp_ge0000_cy_2_7 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_1_8_79,
      DI => N0,
      S => Mcompar_RGB_cmp_ge0000_cy_2_7_rt_112,
      O => Mcompar_RGB_cmp_ge0000_cy_2_8_100
    );
  Mcompar_RGB_cmp_ge0000_lut_3_8 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos_5_2_1892,
      I1 => hPos_6_2_1895,
      I2 => hPos_7_2_1898,
      I3 => hPos_8_2_1901,
      O => Mcompar_RGB_cmp_ge0000_lut_3_8_372
    );
  Mcompar_RGB_cmp_ge0000_cy_3_7 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_2_8_100,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_3_8_372,
      O => Mcompar_RGB_cmp_ge0000_cy_3_8_135
    );
  Mcompar_RGB_cmp_ge0000_cy_4_7 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_3_8_135,
      DI => N0,
      S => Mcompar_RGB_cmp_ge0000_cy_4_7_rt_167,
      O => Mcompar_RGB_cmp_ge0000_cy_4_8_156
    );
  Mcompar_RGB_cmp_ge0000_lut_5_8 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos_10_1_1839,
      I1 => hPos(11),
      I2 => hPos(12),
      I3 => hPos(13),
      O => Mcompar_RGB_cmp_ge0000_lut_5_8_403
    );
  Mcompar_RGB_cmp_ge0000_cy_5_7 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_4_8_156,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_5_8_403,
      O => Mcompar_RGB_cmp_ge0000_cy_5_8_188
    );
  Mcompar_RGB_cmp_ge0000_lut_6_6 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos_14_1_1847,
      I1 => hPos(15),
      I2 => hPos(16),
      I3 => hPos(17),
      O => Mcompar_RGB_cmp_ge0000_lut_6_6_418
    );
  Mcompar_RGB_cmp_ge0000_cy_6_7 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_5_8_188,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_6_6_418,
      O => Mcompar_RGB_cmp_ge0000_cy_6_8_209
    );
  Mcompar_RGB_cmp_ge0000_lut_7_8 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos_18_1_1855,
      I1 => hPos(19),
      I2 => hPos(20),
      I3 => hPos(21),
      O => Mcompar_RGB_cmp_ge0000_lut_7_8_441
    );
  Mcompar_RGB_cmp_ge0000_cy_7_7 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_6_8_209,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_7_8_441,
      O => Mcompar_RGB_cmp_ge0000_cy_7_8_233
    );
  Mcompar_RGB_cmp_ge0000_lut_8_8 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos_22_1_1866,
      I1 => hPos(23),
      I2 => hPos(24),
      I3 => hPos(25),
      O => Mcompar_RGB_cmp_ge0000_lut_8_8_461
    );
  Mcompar_RGB_cmp_ge0000_cy_8_7 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_7_8_233,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_8_8_461,
      O => Mcompar_RGB_cmp_ge0000_cy_8_8_253
    );
  Mcompar_RGB_cmp_ge0000_lut_9_8 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos_26_1_1874,
      I1 => hPos(27),
      I2 => hPos(28),
      I3 => hPos(29),
      O => Mcompar_RGB_cmp_ge0000_lut_9_8_481
    );
  Mcompar_RGB_cmp_ge0000_cy_9_7 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_8_8_253,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_9_8_481,
      O => Mcompar_RGB_cmp_ge0000_cy_9_8_271
    );
  Mcompar_RGB_cmp_ge0000_cy_10_7 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_9_8_271,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_10_8,
      O => Mcompar_RGB_cmp_ge0000_cy_10_6_48
    );
  Mcompar_RGB_cmp_ge0000_cy_11_5 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_10_6_48,
      DI => N0,
      S => Mcompar_RGB_cmp_ge0000_lut_11_6,
      O => RGB_cmp_ge0012
    );
  Mcompar_RGB_cmp_ge0000_cy_0_8 : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => Mcompar_RGB_cmp_ge0000_cy_0_8_rt_34,
      O => Mcompar_RGB_cmp_ge0000_cy_0_9_26
    );
  Mcompar_RGB_cmp_ge0000_cy_1_8 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_0_9_26,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_1_9,
      O => Mcompar_RGB_cmp_ge0000_cy_1_9_80
    );
  Mcompar_RGB_cmp_ge0000_cy_2_8 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_1_9_80,
      DI => N0,
      S => Mcompar_RGB_cmp_ge0000_cy_2_8_rt_113,
      O => Mcompar_RGB_cmp_ge0000_cy_2_9_101
    );
  Mcompar_RGB_cmp_ge0000_lut_3_9 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => hPos_3_1_1885,
      I1 => hPos_4_1_1888,
      O => Mcompar_RGB_cmp_ge0000_lut_3_9_373
    );
  Mcompar_RGB_cmp_ge0000_cy_3_8 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_2_9_101,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_3_9_373,
      O => Mcompar_RGB_cmp_ge0000_cy_3_9_136
    );
  Mcompar_RGB_cmp_ge0000_lut_4_4 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => hPos_5_1_1891,
      I1 => hPos_6_1_1894,
      I2 => hPos_7_1_1897,
      I3 => hPos_8_1_1900,
      O => Mcompar_RGB_cmp_ge0000_lut_4_4_378
    );
  Mcompar_RGB_cmp_ge0000_cy_4_8 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_3_9_136,
      DI => N0,
      S => Mcompar_RGB_cmp_ge0000_lut_4_4_378,
      O => Mcompar_RGB_cmp_ge0000_cy_4_9_157
    );
  Mcompar_RGB_cmp_ge0000_lut_5_9 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos_9_1_1903,
      I1 => hPos_10_1_1839,
      I2 => hPos_11_1_1841,
      I3 => hPos_12_1_1843,
      O => Mcompar_RGB_cmp_ge0000_lut_5_9_404
    );
  Mcompar_RGB_cmp_ge0000_cy_5_8 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_4_9_157,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_5_9_404,
      O => Mcompar_RGB_cmp_ge0000_cy_5_9_189
    );
  Mcompar_RGB_cmp_ge0000_lut_6_7 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos_13_1_1845,
      I1 => hPos_14_1_1847,
      I2 => hPos_15_1_1849,
      I3 => hPos_16_1_1851,
      O => Mcompar_RGB_cmp_ge0000_lut_6_7_419
    );
  Mcompar_RGB_cmp_ge0000_cy_6_8 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_5_9_189,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_6_7_419,
      O => Mcompar_RGB_cmp_ge0000_cy_6_9_210
    );
  Mcompar_RGB_cmp_ge0000_lut_7_9 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos_17_1_1853,
      I1 => hPos_18_1_1855,
      I2 => hPos_19_1_1857,
      I3 => hPos_20_1_1862,
      O => Mcompar_RGB_cmp_ge0000_lut_7_9_442
    );
  Mcompar_RGB_cmp_ge0000_cy_7_8 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_6_9_210,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_7_9_442,
      O => Mcompar_RGB_cmp_ge0000_cy_7_9_234
    );
  Mcompar_RGB_cmp_ge0000_lut_8_9 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos_21_1_1864,
      I1 => hPos_22_1_1866,
      I2 => hPos_23_1_1868,
      I3 => hPos_24_1_1870,
      O => Mcompar_RGB_cmp_ge0000_lut_8_9_462
    );
  Mcompar_RGB_cmp_ge0000_cy_8_8 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_7_9_234,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_8_9_462,
      O => Mcompar_RGB_cmp_ge0000_cy_8_9_254
    );
  Mcompar_RGB_cmp_ge0000_lut_9_9 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos_25_1_1872,
      I1 => hPos_26_1_1874,
      I2 => hPos(27),
      I3 => hPos(28),
      O => Mcompar_RGB_cmp_ge0000_lut_9_9_482
    );
  Mcompar_RGB_cmp_ge0000_cy_9_8 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_8_9_254,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_9_9_482,
      O => Mcompar_RGB_cmp_ge0000_cy_9_9_272
    );
  Mcompar_RGB_cmp_ge0000_lut_10_9 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => hPos_29_1_1878,
      I1 => hPos(30),
      O => Mcompar_RGB_cmp_ge0000_lut_10_9_301
    );
  Mcompar_RGB_cmp_ge0000_cy_10_8 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_9_9_272,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_10_9_301,
      O => Mcompar_RGB_cmp_ge0000_cy_10_7_49
    );
  Mcompar_RGB_cmp_ge0000_cy_11_6 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_10_7_49,
      DI => N0,
      S => Mcompar_RGB_cmp_ge0000_lut_11_7,
      O => RGB_cmp_ge0011
    );
  Mcompar_RGB_cmp_ge0000_cy_0_9 : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => Mcompar_RGB_cmp_ge0000_cy_0_9_rt_35,
      O => Mcompar_RGB_cmp_ge0000_cy_0_10_8
    );
  Mcompar_RGB_cmp_ge0000_lut_1_10 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => hPos_1_2_1859,
      I1 => hPos_2_2_1880,
      O => Mcompar_RGB_cmp_ge0000_lut_1_10_327
    );
  Mcompar_RGB_cmp_ge0000_cy_1_9 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_0_10_8,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_1_10_327,
      O => Mcompar_RGB_cmp_ge0000_cy_1_10_62
    );
  Mcompar_RGB_cmp_ge0000_cy_2_9 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_1_10_62,
      DI => N0,
      S => Mcompar_RGB_cmp_ge0000_cy_2_9_rt_114,
      O => Mcompar_RGB_cmp_ge0000_cy_2_10_83
    );
  Mcompar_RGB_cmp_ge0000_lut_3_10 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => hPos_4_2_1889,
      I1 => hPos_5_2_1892,
      O => Mcompar_RGB_cmp_ge0000_lut_3_10_355
    );
  Mcompar_RGB_cmp_ge0000_cy_3_9 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_2_10_83,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_3_10_355,
      O => Mcompar_RGB_cmp_ge0000_cy_3_10_118
    );
  Mcompar_RGB_cmp_ge0000_cy_4_9 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_3_10_118,
      DI => N0,
      S => Mcompar_RGB_cmp_ge0000_cy_4_9_rt_168,
      O => Mcompar_RGB_cmp_ge0000_cy_4_10_139
    );
  Mcompar_RGB_cmp_ge0000_lut_5_10 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => hPos_7_2_1898,
      I1 => hPos_8_2_1901,
      O => Mcompar_RGB_cmp_ge0000_lut_5_10_386
    );
  Mcompar_RGB_cmp_ge0000_cy_5_9 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_4_10_139,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_5_10_386,
      O => Mcompar_RGB_cmp_ge0000_cy_5_10_171
    );
  Mcompar_RGB_cmp_ge0000_cy_6_9 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_5_10_171,
      DI => N0,
      S => Mcompar_RGB_cmp_ge0000_cy_6_9_rt_214,
      O => Mcompar_RGB_cmp_ge0000_cy_6_10_192
    );
  Mcompar_RGB_cmp_ge0000_lut_7_10 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(10),
      I1 => hPos(11),
      I2 => hPos(12),
      I3 => hPos(13),
      O => Mcompar_RGB_cmp_ge0000_lut_7_10_424
    );
  Mcompar_RGB_cmp_ge0000_cy_7_9 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_6_10_192,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_7_10_424,
      O => Mcompar_RGB_cmp_ge0000_cy_7_10_217
    );
  Mcompar_RGB_cmp_ge0000_lut_8_10 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(14),
      I1 => hPos(15),
      I2 => hPos(16),
      I3 => hPos(17),
      O => Mcompar_RGB_cmp_ge0000_lut_8_10_445
    );
  Mcompar_RGB_cmp_ge0000_cy_8_9 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_7_10_217,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_8_10_445,
      O => Mcompar_RGB_cmp_ge0000_cy_8_10_237
    );
  Mcompar_RGB_cmp_ge0000_lut_9_10 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(18),
      I1 => hPos(19),
      I2 => hPos(20),
      I3 => hPos(21),
      O => Mcompar_RGB_cmp_ge0000_lut_9_10_465
    );
  Mcompar_RGB_cmp_ge0000_cy_9_9 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_8_10_237,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_9_10_465,
      O => Mcompar_RGB_cmp_ge0000_cy_9_10_257
    );
  Mcompar_RGB_cmp_ge0000_lut_10_10 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(22),
      I1 => hPos(23),
      I2 => hPos(24),
      I3 => hPos(25),
      O => Mcompar_RGB_cmp_ge0000_lut_10_10_286
    );
  Mcompar_RGB_cmp_ge0000_cy_10_9 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_9_10_257,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_10_10_286,
      O => Mcompar_RGB_cmp_ge0000_cy_10_8_50
    );
  Mcompar_RGB_cmp_ge0000_lut_11_8 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(26),
      I1 => hPos(27),
      I2 => hPos(28),
      I3 => hPos(29),
      O => Mcompar_RGB_cmp_ge0000_lut_11_8_315
    );
  Mcompar_RGB_cmp_ge0000_cy_11_7 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_10_8_50,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_11_8_315,
      O => Mcompar_RGB_cmp_ge0000_cy_11_2_54
    );
  Mcompar_RGB_cmp_ge0000_cy_12_1 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_11_2_54,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_12_2,
      O => Mcompar_RGB_cmp_ge0000_cy_12_2_58
    );
  Mcompar_RGB_cmp_ge0000_cy_13_1 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_12_2_58,
      DI => N0,
      S => Mcompar_RGB_cmp_ge0000_lut_13_2,
      O => RGB_cmp_ge0013
    );
  Mcompar_RGB_cmp_ge0000_cy_0_10 : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => Mcompar_RGB_cmp_ge0000_cy_0_10_rt_27,
      O => Mcompar_RGB_cmp_ge0000_cy_0_11_9
    );
  Mcompar_RGB_cmp_ge0000_cy_1_10 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_0_11_9,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_1_11,
      O => Mcompar_RGB_cmp_ge0000_cy_1_11_63
    );
  Mcompar_RGB_cmp_ge0000_cy_2_10 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_1_11_63,
      DI => N0,
      S => Mcompar_RGB_cmp_ge0000_cy_2_10_rt_102,
      O => Mcompar_RGB_cmp_ge0000_cy_2_11_84
    );
  Mcompar_RGB_cmp_ge0000_lut_3_11 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(4),
      I1 => hPos(5),
      I2 => hPos(6),
      I3 => hPos(7),
      O => Mcompar_RGB_cmp_ge0000_lut_3_11_356
    );
  Mcompar_RGB_cmp_ge0000_cy_3_10 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_2_11_84,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_3_11_356,
      O => Mcompar_RGB_cmp_ge0000_cy_3_11_119
    );
  Mcompar_RGB_cmp_ge0000_lut_4_5 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(8),
      I1 => hPos(9),
      I2 => hPos(10),
      I3 => hPos(11),
      O => Mcompar_RGB_cmp_ge0000_lut_4_5_379
    );
  Mcompar_RGB_cmp_ge0000_cy_4_10 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_3_11_119,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_4_5_379,
      O => Mcompar_RGB_cmp_ge0000_cy_4_11_140
    );
  Mcompar_RGB_cmp_ge0000_lut_5_11 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(12),
      I1 => hPos(13),
      I2 => hPos(14),
      I3 => hPos(15),
      O => Mcompar_RGB_cmp_ge0000_lut_5_11_387
    );
  Mcompar_RGB_cmp_ge0000_cy_5_10 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_4_11_140,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_5_11_387,
      O => Mcompar_RGB_cmp_ge0000_cy_5_11_172
    );
  Mcompar_RGB_cmp_ge0000_lut_6_8 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(16),
      I1 => hPos(17),
      I2 => hPos(18),
      I3 => hPos(19),
      O => Mcompar_RGB_cmp_ge0000_lut_6_8_420
    );
  Mcompar_RGB_cmp_ge0000_cy_6_10 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_5_11_172,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_6_8_420,
      O => Mcompar_RGB_cmp_ge0000_cy_6_11_193
    );
  Mcompar_RGB_cmp_ge0000_lut_7_11 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(20),
      I1 => hPos(21),
      I2 => hPos(22),
      I3 => hPos(23),
      O => Mcompar_RGB_cmp_ge0000_lut_7_11_425
    );
  Mcompar_RGB_cmp_ge0000_cy_7_10 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_6_11_193,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_7_11_425,
      O => Mcompar_RGB_cmp_ge0000_cy_7_11_218
    );
  Mcompar_RGB_cmp_ge0000_lut_8_11 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(24),
      I1 => hPos(25),
      I2 => hPos(26),
      I3 => hPos(27),
      O => Mcompar_RGB_cmp_ge0000_lut_8_11_446
    );
  Mcompar_RGB_cmp_ge0000_cy_8_10 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_7_11_218,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_8_11_446,
      O => Mcompar_RGB_cmp_ge0000_cy_8_11_238
    );
  Mcompar_RGB_cmp_ge0000_lut_9_11 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => hPos(28),
      I1 => hPos(29),
      I2 => hPos(30),
      O => Mcompar_RGB_cmp_ge0000_lut_9_11_466
    );
  Mcompar_RGB_cmp_ge0000_cy_9_10 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_8_11_238,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_9_11_466,
      O => Mcompar_RGB_cmp_ge0000_cy_9_11_258
    );
  Mcompar_RGB_cmp_ge0000_cy_10_10 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_9_11_258,
      DI => N0,
      S => Mcompar_RGB_cmp_ge0000_lut_10_11,
      O => RGB_cmp_ge0014
    );
  Mcompar_RGB_cmp_ge0000_lut_0_4 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => hPos(1),
      I1 => hPos(2),
      O => Mcompar_RGB_cmp_ge0000_lut_0_4_278
    );
  Mcompar_RGB_cmp_ge0000_cy_0_11 : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => Mcompar_RGB_cmp_ge0000_lut_0_4_278,
      O => Mcompar_RGB_cmp_ge0000_cy_0_12_10
    );
  Mcompar_RGB_cmp_ge0000_cy_1_11 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_0_12_10,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_1_12,
      O => Mcompar_RGB_cmp_ge0000_cy_1_12_64
    );
  Mcompar_RGB_cmp_ge0000_lut_2_2 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => hPos(4),
      I1 => hPos(5),
      O => Mcompar_RGB_cmp_ge0000_lut_2_2_348
    );
  Mcompar_RGB_cmp_ge0000_cy_2_11 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_1_12_64,
      DI => N0,
      S => Mcompar_RGB_cmp_ge0000_lut_2_2_348,
      O => Mcompar_RGB_cmp_ge0000_cy_2_12_85
    );
  Mcompar_RGB_cmp_ge0000_lut_3_12 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => hPos(6),
      I1 => hPos(7),
      O => Mcompar_RGB_cmp_ge0000_lut_3_12_357
    );
  Mcompar_RGB_cmp_ge0000_cy_3_11 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_2_12_85,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_3_12_357,
      O => Mcompar_RGB_cmp_ge0000_cy_3_12_120
    );
  Mcompar_RGB_cmp_ge0000_cy_4_11 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_3_12_120,
      DI => N0,
      S => Mcompar_RGB_cmp_ge0000_cy_4_11_rt_158,
      O => Mcompar_RGB_cmp_ge0000_cy_4_12_141
    );
  Mcompar_RGB_cmp_ge0000_lut_5_12 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(9),
      I1 => hPos(10),
      I2 => hPos(11),
      I3 => hPos(12),
      O => Mcompar_RGB_cmp_ge0000_lut_5_12_388
    );
  Mcompar_RGB_cmp_ge0000_cy_5_11 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_4_12_141,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_5_12_388,
      O => Mcompar_RGB_cmp_ge0000_cy_5_12_173
    );
  Mcompar_RGB_cmp_ge0000_lut_6_9 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(13),
      I1 => hPos(14),
      I2 => hPos(15),
      I3 => hPos(16),
      O => Mcompar_RGB_cmp_ge0000_lut_6_9_421
    );
  Mcompar_RGB_cmp_ge0000_cy_6_11 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_5_12_173,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_6_9_421,
      O => Mcompar_RGB_cmp_ge0000_cy_6_12_194
    );
  Mcompar_RGB_cmp_ge0000_lut_7_12 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(17),
      I1 => hPos(18),
      I2 => hPos(19),
      I3 => hPos(20),
      O => Mcompar_RGB_cmp_ge0000_lut_7_12_426
    );
  Mcompar_RGB_cmp_ge0000_cy_7_11 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_6_12_194,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_7_12_426,
      O => Mcompar_RGB_cmp_ge0000_cy_7_12_219
    );
  Mcompar_RGB_cmp_ge0000_lut_8_12 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(21),
      I1 => hPos(22),
      I2 => hPos(23),
      I3 => hPos(24),
      O => Mcompar_RGB_cmp_ge0000_lut_8_12_447
    );
  Mcompar_RGB_cmp_ge0000_cy_8_11 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_7_12_219,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_8_12_447,
      O => Mcompar_RGB_cmp_ge0000_cy_8_12_239
    );
  Mcompar_RGB_cmp_ge0000_lut_9_12 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(25),
      I1 => hPos(26),
      I2 => hPos(27),
      I3 => hPos(28),
      O => Mcompar_RGB_cmp_ge0000_lut_9_12_467
    );
  Mcompar_RGB_cmp_ge0000_cy_9_11 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_8_12_239,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_9_12_467,
      O => Mcompar_RGB_cmp_ge0000_cy_9_12_259
    );
  Mcompar_RGB_cmp_ge0000_lut_10_12 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => hPos(29),
      I1 => hPos(30),
      O => Mcompar_RGB_cmp_ge0000_lut_10_12_288
    );
  Mcompar_RGB_cmp_ge0000_cy_10_11 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_9_12_259,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_10_12_288,
      O => Mcompar_RGB_cmp_ge0000_cy_10_9_51
    );
  Mcompar_RGB_cmp_ge0000_cy_11_8 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_10_9_51,
      DI => N0,
      S => Mcompar_RGB_cmp_ge0000_lut_11_9,
      O => RGB_cmp_ge0016
    );
  Mcompar_RGB_cmp_ge0000_lut_0_5 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => hPos(1),
      I1 => hPos(2),
      O => Mcompar_RGB_cmp_ge0000_lut_0_5_279
    );
  Mcompar_RGB_cmp_ge0000_cy_0_12 : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => Mcompar_RGB_cmp_ge0000_lut_0_5_279,
      O => Mcompar_RGB_cmp_ge0000_cy_0_13_11
    );
  Mcompar_RGB_cmp_ge0000_cy_1_12 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_0_13_11,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_1_13,
      O => Mcompar_RGB_cmp_ge0000_cy_1_13_65
    );
  Mcompar_RGB_cmp_ge0000_cy_2_12 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_1_13_65,
      DI => N0,
      S => Mcompar_RGB_cmp_ge0000_cy_2_12_rt_103,
      O => Mcompar_RGB_cmp_ge0000_cy_2_13_86
    );
  Mcompar_RGB_cmp_ge0000_cy_3_12 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_2_13_86,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_3_13,
      O => Mcompar_RGB_cmp_ge0000_cy_3_13_121
    );
  Mcompar_RGB_cmp_ge0000_lut_4_6 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => hPos(6),
      I1 => hPos(7),
      I2 => hPos(8),
      O => Mcompar_RGB_cmp_ge0000_lut_4_6_380
    );
  Mcompar_RGB_cmp_ge0000_cy_4_12 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_3_13_121,
      DI => N0,
      S => Mcompar_RGB_cmp_ge0000_lut_4_6_380,
      O => Mcompar_RGB_cmp_ge0000_cy_4_13_142
    );
  Mcompar_RGB_cmp_ge0000_lut_5_13 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(9),
      I1 => hPos(10),
      I2 => hPos(11),
      I3 => hPos(12),
      O => Mcompar_RGB_cmp_ge0000_lut_5_13_389
    );
  Mcompar_RGB_cmp_ge0000_cy_5_12 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_4_13_142,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_5_13_389,
      O => Mcompar_RGB_cmp_ge0000_cy_5_13_174
    );
  Mcompar_RGB_cmp_ge0000_lut_6_10 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(13),
      I1 => hPos(14),
      I2 => hPos(15),
      I3 => hPos(16),
      O => Mcompar_RGB_cmp_ge0000_lut_6_10_407
    );
  Mcompar_RGB_cmp_ge0000_cy_6_12 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_5_13_174,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_6_10_407,
      O => Mcompar_RGB_cmp_ge0000_cy_6_13_195
    );
  Mcompar_RGB_cmp_ge0000_lut_7_13 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(17),
      I1 => hPos(18),
      I2 => hPos(19),
      I3 => hPos(20),
      O => Mcompar_RGB_cmp_ge0000_lut_7_13_427
    );
  Mcompar_RGB_cmp_ge0000_cy_7_12 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_6_13_195,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_7_13_427,
      O => Mcompar_RGB_cmp_ge0000_cy_7_13_220
    );
  Mcompar_RGB_cmp_ge0000_lut_8_13 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(21),
      I1 => hPos(22),
      I2 => hPos(23),
      I3 => hPos(24),
      O => Mcompar_RGB_cmp_ge0000_lut_8_13_448
    );
  Mcompar_RGB_cmp_ge0000_cy_8_12 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_7_13_220,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_8_13_448,
      O => Mcompar_RGB_cmp_ge0000_cy_8_13_240
    );
  Mcompar_RGB_cmp_ge0000_lut_9_13 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(25),
      I1 => hPos(26),
      I2 => hPos(27),
      I3 => hPos(28),
      O => Mcompar_RGB_cmp_ge0000_lut_9_13_468
    );
  Mcompar_RGB_cmp_ge0000_cy_9_12 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_8_13_240,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_9_13_468,
      O => Mcompar_RGB_cmp_ge0000_cy_9_13_260
    );
  Mcompar_RGB_cmp_ge0000_lut_10_13 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => hPos(29),
      I1 => hPos(30),
      O => Mcompar_RGB_cmp_ge0000_lut_10_13_289
    );
  Mcompar_RGB_cmp_ge0000_cy_10_12 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_9_13_260,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_10_13_289,
      O => Mcompar_RGB_cmp_ge0000_cy_10_10_39
    );
  Mcompar_RGB_cmp_ge0000_cy_11_9 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_10_10_39,
      DI => N0,
      S => Mcompar_RGB_cmp_ge0000_lut_11_10,
      O => RGB_cmp_ge0017
    );
  Mcompar_RGB_cmp_ge0000_lut_0_6 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => hPos(1),
      I1 => hPos(2),
      O => Mcompar_RGB_cmp_ge0000_lut_0_6_280
    );
  Mcompar_RGB_cmp_ge0000_cy_0_13 : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => Mcompar_RGB_cmp_ge0000_lut_0_6_280,
      O => Mcompar_RGB_cmp_ge0000_cy_0_14_12
    );
  Mcompar_RGB_cmp_ge0000_lut_1_14 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(3),
      I1 => hPos(4),
      I2 => hPos(5),
      I3 => hPos(6),
      O => Mcompar_RGB_cmp_ge0000_lut_1_14_331
    );
  Mcompar_RGB_cmp_ge0000_cy_1_13 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_0_14_12,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_1_14_331,
      O => Mcompar_RGB_cmp_ge0000_cy_1_14_66
    );
  Mcompar_RGB_cmp_ge0000_lut_2_3 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => hPos(7),
      I1 => hPos(8),
      O => Mcompar_RGB_cmp_ge0000_lut_2_3_349
    );
  Mcompar_RGB_cmp_ge0000_cy_2_13 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_1_14_66,
      DI => N0,
      S => Mcompar_RGB_cmp_ge0000_lut_2_3_349,
      O => Mcompar_RGB_cmp_ge0000_cy_2_14_87
    );
  Mcompar_RGB_cmp_ge0000_lut_3_14 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(9),
      I1 => hPos(10),
      I2 => hPos(11),
      I3 => hPos(12),
      O => Mcompar_RGB_cmp_ge0000_lut_3_14_359
    );
  Mcompar_RGB_cmp_ge0000_cy_3_13 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_2_14_87,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_3_14_359,
      O => Mcompar_RGB_cmp_ge0000_cy_3_14_122
    );
  Mcompar_RGB_cmp_ge0000_lut_4_7 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(13),
      I1 => hPos(14),
      I2 => hPos(15),
      I3 => hPos(16),
      O => Mcompar_RGB_cmp_ge0000_lut_4_7_381
    );
  Mcompar_RGB_cmp_ge0000_cy_4_13 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_3_14_122,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_4_7_381,
      O => Mcompar_RGB_cmp_ge0000_cy_4_14_143
    );
  Mcompar_RGB_cmp_ge0000_lut_5_14 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(17),
      I1 => hPos(18),
      I2 => hPos(19),
      I3 => hPos(20),
      O => Mcompar_RGB_cmp_ge0000_lut_5_14_390
    );
  Mcompar_RGB_cmp_ge0000_cy_5_13 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_4_14_143,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_5_14_390,
      O => Mcompar_RGB_cmp_ge0000_cy_5_14_175
    );
  Mcompar_RGB_cmp_ge0000_lut_6_11 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(21),
      I1 => hPos(22),
      I2 => hPos(23),
      I3 => hPos(24),
      O => Mcompar_RGB_cmp_ge0000_lut_6_11_408
    );
  Mcompar_RGB_cmp_ge0000_cy_6_13 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_5_14_175,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_6_11_408,
      O => Mcompar_RGB_cmp_ge0000_cy_6_14_196
    );
  Mcompar_RGB_cmp_ge0000_lut_7_14 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(25),
      I1 => hPos(26),
      I2 => hPos(27),
      I3 => hPos(28),
      O => Mcompar_RGB_cmp_ge0000_lut_7_14_428
    );
  Mcompar_RGB_cmp_ge0000_cy_7_13 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_6_14_196,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_7_14_428,
      O => Mcompar_RGB_cmp_ge0000_cy_7_14_221
    );
  Mcompar_RGB_cmp_ge0000_lut_8_14 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => hPos(29),
      I1 => hPos(30),
      O => Mcompar_RGB_cmp_ge0000_lut_8_14_449
    );
  Mcompar_RGB_cmp_ge0000_cy_8_13 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_7_14_221,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_8_14_449,
      O => Mcompar_RGB_cmp_ge0000_cy_8_14_241
    );
  Mcompar_RGB_cmp_ge0000_cy_9_13 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_8_14_241,
      DI => N0,
      S => Mcompar_RGB_cmp_ge0000_lut_9_14,
      O => RGB_cmp_ge0019
    );
  Mcompar_RGB_cmp_ge0000_lut_0_7 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => hPos(1),
      I1 => hPos(2),
      O => Mcompar_RGB_cmp_ge0000_lut_0_7_281
    );
  Mcompar_RGB_cmp_ge0000_cy_0_14 : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => Mcompar_RGB_cmp_ge0000_lut_0_7_281,
      O => Mcompar_RGB_cmp_ge0000_cy_0_15_13
    );
  Mcompar_RGB_cmp_ge0000_cy_1_14 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_0_15_13,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_1_15,
      O => Mcompar_RGB_cmp_ge0000_cy_1_15_67
    );
  Mcompar_RGB_cmp_ge0000_cy_2_14 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_1_15_67,
      DI => N0,
      S => Mcompar_RGB_cmp_ge0000_cy_2_14_rt_104,
      O => Mcompar_RGB_cmp_ge0000_cy_2_15_88
    );
  Mcompar_RGB_cmp_ge0000_lut_3_15 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => hPos(5),
      I1 => hPos(6),
      O => Mcompar_RGB_cmp_ge0000_lut_3_15_360
    );
  Mcompar_RGB_cmp_ge0000_cy_3_14 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_2_15_88,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_3_15_360,
      O => Mcompar_RGB_cmp_ge0000_cy_3_15_123
    );
  Mcompar_RGB_cmp_ge0000_cy_4_14 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_3_15_123,
      DI => N0,
      S => Mcompar_RGB_cmp_ge0000_cy_4_14_rt_159,
      O => Mcompar_RGB_cmp_ge0000_cy_4_15_144
    );
  Mcompar_RGB_cmp_ge0000_lut_5_15 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(8),
      I1 => hPos(9),
      I2 => hPos(10),
      I3 => hPos(11),
      O => Mcompar_RGB_cmp_ge0000_lut_5_15_391
    );
  Mcompar_RGB_cmp_ge0000_cy_5_14 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_4_15_144,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_5_15_391,
      O => Mcompar_RGB_cmp_ge0000_cy_5_15_176
    );
  Mcompar_RGB_cmp_ge0000_lut_6_12 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(12),
      I1 => hPos(13),
      I2 => hPos(14),
      I3 => hPos(15),
      O => Mcompar_RGB_cmp_ge0000_lut_6_12_409
    );
  Mcompar_RGB_cmp_ge0000_cy_6_14 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_5_15_176,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_6_12_409,
      O => Mcompar_RGB_cmp_ge0000_cy_6_15_197
    );
  Mcompar_RGB_cmp_ge0000_lut_7_15 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(16),
      I1 => hPos(17),
      I2 => hPos(18),
      I3 => hPos(19),
      O => Mcompar_RGB_cmp_ge0000_lut_7_15_429
    );
  Mcompar_RGB_cmp_ge0000_cy_7_14 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_6_15_197,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_7_15_429,
      O => Mcompar_RGB_cmp_ge0000_cy_7_15_222
    );
  Mcompar_RGB_cmp_ge0000_lut_8_15 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(20),
      I1 => hPos(21),
      I2 => hPos(22),
      I3 => hPos(23),
      O => Mcompar_RGB_cmp_ge0000_lut_8_15_450
    );
  Mcompar_RGB_cmp_ge0000_cy_8_14 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_7_15_222,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_8_15_450,
      O => Mcompar_RGB_cmp_ge0000_cy_8_15_242
    );
  Mcompar_RGB_cmp_ge0000_lut_9_15 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(24),
      I1 => hPos(25),
      I2 => hPos(26),
      I3 => hPos(27),
      O => Mcompar_RGB_cmp_ge0000_lut_9_15_470
    );
  Mcompar_RGB_cmp_ge0000_cy_9_14 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_8_15_242,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_9_15_470,
      O => Mcompar_RGB_cmp_ge0000_cy_9_14_261
    );
  Mcompar_RGB_cmp_ge0000_lut_10_14 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => hPos(28),
      I1 => hPos(29),
      I2 => hPos(30),
      O => Mcompar_RGB_cmp_ge0000_lut_10_14_290
    );
  Mcompar_RGB_cmp_ge0000_cy_10_13 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_9_14_261,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_10_14_290,
      O => Mcompar_RGB_cmp_ge0000_cy_10_11_40
    );
  Mcompar_RGB_cmp_ge0000_cy_11_10 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_10_11_40,
      DI => N0,
      S => Mcompar_RGB_cmp_ge0000_lut_11_11,
      O => RGB_cmp_ge0018
    );
  Mcompar_RGB_cmp_ge0000_lut_0_8 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => hPos(0),
      I1 => hPos(1),
      O => Mcompar_RGB_cmp_ge0000_lut_0_8_282
    );
  Mcompar_RGB_cmp_ge0000_cy_0_15 : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => Mcompar_RGB_cmp_ge0000_lut_0_8_282,
      O => Mcompar_RGB_cmp_ge0000_cy_0_16_14
    );
  Mcompar_RGB_cmp_ge0000_cy_1_15 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_0_16_14,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_1_16,
      O => Mcompar_RGB_cmp_ge0000_cy_1_16_68
    );
  Mcompar_RGB_cmp_ge0000_cy_2_15 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_1_16_68,
      DI => N0,
      S => Mcompar_RGB_cmp_ge0000_cy_2_15_rt_105,
      O => Mcompar_RGB_cmp_ge0000_cy_2_16_89
    );
  Mcompar_RGB_cmp_ge0000_lut_3_16 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => hPos(4),
      I1 => hPos(5),
      O => Mcompar_RGB_cmp_ge0000_lut_3_16_361
    );
  Mcompar_RGB_cmp_ge0000_cy_3_15 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_2_16_89,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_3_16_361,
      O => Mcompar_RGB_cmp_ge0000_cy_3_16_124
    );
  Mcompar_RGB_cmp_ge0000_cy_4_15 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_3_16_124,
      DI => N0,
      S => Mcompar_RGB_cmp_ge0000_cy_4_15_rt_160,
      O => Mcompar_RGB_cmp_ge0000_cy_4_16_145
    );
  Mcompar_RGB_cmp_ge0000_lut_5_16 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(7),
      I1 => hPos(8),
      I2 => hPos(9),
      I3 => hPos(10),
      O => Mcompar_RGB_cmp_ge0000_lut_5_16_392
    );
  Mcompar_RGB_cmp_ge0000_cy_5_15 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_4_16_145,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_5_16_392,
      O => Mcompar_RGB_cmp_ge0000_cy_5_16_177
    );
  Mcompar_RGB_cmp_ge0000_lut_6_13 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(11),
      I1 => hPos(12),
      I2 => hPos(13),
      I3 => hPos(14),
      O => Mcompar_RGB_cmp_ge0000_lut_6_13_410
    );
  Mcompar_RGB_cmp_ge0000_cy_6_15 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_5_16_177,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_6_13_410,
      O => Mcompar_RGB_cmp_ge0000_cy_6_16_198
    );
  Mcompar_RGB_cmp_ge0000_lut_7_16 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(15),
      I1 => hPos(16),
      I2 => hPos(17),
      I3 => hPos(18),
      O => Mcompar_RGB_cmp_ge0000_lut_7_16_430
    );
  Mcompar_RGB_cmp_ge0000_cy_7_15 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_6_16_198,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_7_16_430,
      O => Mcompar_RGB_cmp_ge0000_cy_7_16_223
    );
  Mcompar_RGB_cmp_ge0000_lut_8_16 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(19),
      I1 => hPos(20),
      I2 => hPos(21),
      I3 => hPos(22),
      O => Mcompar_RGB_cmp_ge0000_lut_8_16_451
    );
  Mcompar_RGB_cmp_ge0000_cy_8_15 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_7_16_223,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_8_16_451,
      O => Mcompar_RGB_cmp_ge0000_cy_8_16_243
    );
  Mcompar_RGB_cmp_ge0000_lut_9_16 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(23),
      I1 => hPos(24),
      I2 => hPos(25),
      I3 => hPos(26),
      O => Mcompar_RGB_cmp_ge0000_lut_9_16_471
    );
  Mcompar_RGB_cmp_ge0000_cy_9_15 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_8_16_243,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_9_16_471,
      O => Mcompar_RGB_cmp_ge0000_cy_9_15_262
    );
  Mcompar_RGB_cmp_ge0000_lut_10_15 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(27),
      I1 => hPos(28),
      I2 => hPos(29),
      I3 => hPos(30),
      O => Mcompar_RGB_cmp_ge0000_lut_10_15_291
    );
  Mcompar_RGB_cmp_ge0000_cy_10_14 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_9_15_262,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_10_15_291,
      O => Mcompar_RGB_cmp_ge0000_cy_10_12_41
    );
  Mcompar_RGB_cmp_ge0000_cy_11_11 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_10_12_41,
      DI => N0,
      S => Mcompar_RGB_cmp_ge0000_lut_11_12,
      O => RGB_cmp_ge0020
    );
  Mcompar_RGB_cmp_ge0000_cy_0_16 : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => Mcompar_RGB_cmp_ge0000_cy_0_16_rt_28,
      O => Mcompar_RGB_cmp_ge0000_cy_0_17_15
    );
  Mcompar_RGB_cmp_ge0000_lut_1_17 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => hPos_2_2_1880,
      I1 => hPos(3),
      O => Mcompar_RGB_cmp_ge0000_lut_1_17_334
    );
  Mcompar_RGB_cmp_ge0000_cy_1_16 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_0_17_15,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_1_17_334,
      O => Mcompar_RGB_cmp_ge0000_cy_1_17_69
    );
  Mcompar_RGB_cmp_ge0000_lut_2_4 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => hPos_4_2_1889,
      I1 => hPos(5),
      I2 => hPos(6),
      O => Mcompar_RGB_cmp_ge0000_lut_2_4_350
    );
  Mcompar_RGB_cmp_ge0000_cy_2_16 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_1_17_69,
      DI => N0,
      S => Mcompar_RGB_cmp_ge0000_lut_2_4_350,
      O => Mcompar_RGB_cmp_ge0000_cy_2_17_90
    );
  Mcompar_RGB_cmp_ge0000_cy_3_16 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_2_17_90,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_3_17,
      O => Mcompar_RGB_cmp_ge0000_cy_3_17_125
    );
  Mcompar_RGB_cmp_ge0000_cy_4_16 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_3_17_125,
      DI => N0,
      S => Mcompar_RGB_cmp_ge0000_cy_4_16_rt_161,
      O => Mcompar_RGB_cmp_ge0000_cy_4_17_146
    );
  Mcompar_RGB_cmp_ge0000_lut_5_17 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(9),
      I1 => hPos(10),
      I2 => hPos(11),
      I3 => hPos(12),
      O => Mcompar_RGB_cmp_ge0000_lut_5_17_393
    );
  Mcompar_RGB_cmp_ge0000_cy_5_16 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_4_17_146,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_5_17_393,
      O => Mcompar_RGB_cmp_ge0000_cy_5_17_178
    );
  Mcompar_RGB_cmp_ge0000_lut_6_14 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(13),
      I1 => hPos(14),
      I2 => hPos(15),
      I3 => hPos(16),
      O => Mcompar_RGB_cmp_ge0000_lut_6_14_411
    );
  Mcompar_RGB_cmp_ge0000_cy_6_16 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_5_17_178,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_6_14_411,
      O => Mcompar_RGB_cmp_ge0000_cy_6_17_199
    );
  Mcompar_RGB_cmp_ge0000_lut_7_17 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(17),
      I1 => hPos(18),
      I2 => hPos(19),
      I3 => hPos(20),
      O => Mcompar_RGB_cmp_ge0000_lut_7_17_431
    );
  Mcompar_RGB_cmp_ge0000_cy_7_16 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_6_17_199,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_7_17_431,
      O => Mcompar_RGB_cmp_ge0000_cy_7_17_224
    );
  Mcompar_RGB_cmp_ge0000_lut_8_17 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(21),
      I1 => hPos(22),
      I2 => hPos(23),
      I3 => hPos(24),
      O => Mcompar_RGB_cmp_ge0000_lut_8_17_452
    );
  Mcompar_RGB_cmp_ge0000_cy_8_16 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_7_17_224,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_8_17_452,
      O => Mcompar_RGB_cmp_ge0000_cy_8_17_244
    );
  Mcompar_RGB_cmp_ge0000_lut_9_17 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(25),
      I1 => hPos(26),
      I2 => hPos(27),
      I3 => hPos(28),
      O => Mcompar_RGB_cmp_ge0000_lut_9_17_472
    );
  Mcompar_RGB_cmp_ge0000_cy_9_16 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_8_17_244,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_9_17_472,
      O => Mcompar_RGB_cmp_ge0000_cy_9_16_263
    );
  Mcompar_RGB_cmp_ge0000_lut_10_16 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => hPos(29),
      I1 => hPos(30),
      O => Mcompar_RGB_cmp_ge0000_lut_10_16_292
    );
  Mcompar_RGB_cmp_ge0000_cy_10_15 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_9_16_263,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_10_16_292,
      O => Mcompar_RGB_cmp_ge0000_cy_10_13_42
    );
  Mcompar_RGB_cmp_ge0000_cy_11_12 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_10_13_42,
      DI => N0,
      S => Mcompar_RGB_cmp_ge0000_lut_11_13,
      O => RGB_cmp_ge0021
    );
  Mcompar_RGB_cmp_ge0000_cy_0_17 : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => Mcompar_RGB_cmp_ge0000_cy_0_17_rt_29,
      O => Mcompar_RGB_cmp_ge0000_cy_0_18_16
    );
  Mcompar_RGB_cmp_ge0000_cy_1_17 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_0_18_16,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_1_18,
      O => Mcompar_RGB_cmp_ge0000_cy_1_18_70
    );
  Mcompar_RGB_cmp_ge0000_cy_2_17 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_1_18_70,
      DI => N0,
      S => Mcompar_RGB_cmp_ge0000_cy_2_17_rt_106,
      O => Mcompar_RGB_cmp_ge0000_cy_2_18_91
    );
  Mcompar_RGB_cmp_ge0000_cy_3_17 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_2_18_91,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_3_18,
      O => Mcompar_RGB_cmp_ge0000_cy_3_18_126
    );
  Mcompar_RGB_cmp_ge0000_cy_4_17 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_3_18_126,
      DI => N0,
      S => Mcompar_RGB_cmp_ge0000_cy_4_17_rt_162,
      O => Mcompar_RGB_cmp_ge0000_cy_4_18_147
    );
  Mcompar_RGB_cmp_ge0000_cy_5_17 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_4_18_147,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_5_18,
      O => Mcompar_RGB_cmp_ge0000_cy_5_18_179
    );
  Mcompar_RGB_cmp_ge0000_cy_6_17 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_5_18_179,
      DI => N0,
      S => Mcompar_RGB_cmp_ge0000_cy_6_17_rt_211,
      O => Mcompar_RGB_cmp_ge0000_cy_6_18_200
    );
  Mcompar_RGB_cmp_ge0000_lut_7_18 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos_8_2_1901,
      I1 => hPos(9),
      I2 => hPos(10),
      I3 => hPos(11),
      O => Mcompar_RGB_cmp_ge0000_lut_7_18_432
    );
  Mcompar_RGB_cmp_ge0000_cy_7_17 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_6_18_200,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_7_18_432,
      O => Mcompar_RGB_cmp_ge0000_cy_7_18_225
    );
  Mcompar_RGB_cmp_ge0000_lut_8_18 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(12),
      I1 => hPos(13),
      I2 => hPos(14),
      I3 => hPos(15),
      O => Mcompar_RGB_cmp_ge0000_lut_8_18_453
    );
  Mcompar_RGB_cmp_ge0000_cy_8_17 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_7_18_225,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_8_18_453,
      O => Mcompar_RGB_cmp_ge0000_cy_8_18_245
    );
  Mcompar_RGB_cmp_ge0000_lut_9_18 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(16),
      I1 => hPos(17),
      I2 => hPos(18),
      I3 => hPos(19),
      O => Mcompar_RGB_cmp_ge0000_lut_9_18_473
    );
  Mcompar_RGB_cmp_ge0000_cy_9_17 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_8_18_245,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_9_18_473,
      O => Mcompar_RGB_cmp_ge0000_cy_9_17_264
    );
  Mcompar_RGB_cmp_ge0000_lut_10_17 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(20),
      I1 => hPos(21),
      I2 => hPos(22),
      I3 => hPos(23),
      O => Mcompar_RGB_cmp_ge0000_lut_10_17_293
    );
  Mcompar_RGB_cmp_ge0000_cy_10_16 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_9_17_264,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_10_17_293,
      O => Mcompar_RGB_cmp_ge0000_cy_10_14_43
    );
  Mcompar_RGB_cmp_ge0000_lut_11_14 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(24),
      I1 => hPos(25),
      I2 => hPos(26),
      I3 => hPos(27),
      O => Mcompar_RGB_cmp_ge0000_lut_11_14_308
    );
  Mcompar_RGB_cmp_ge0000_cy_11_13 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_10_14_43,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_11_14_308,
      O => Mcompar_RGB_cmp_ge0000_cy_11_3_55
    );
  Mcompar_RGB_cmp_ge0000_lut_12_3 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => hPos(28),
      I1 => hPos(29),
      I2 => hPos(30),
      O => Mcompar_RGB_cmp_ge0000_lut_12_3_320
    );
  Mcompar_RGB_cmp_ge0000_cy_12_2 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_11_3_55,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_12_3_320,
      O => Mcompar_RGB_cmp_ge0000_cy_12_3
    );
  Mcompar_RGB_cmp_ge0000_cy_13_2 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_12_3,
      DI => N0,
      S => Mcompar_RGB_cmp_ge0000_lut_13_3,
      O => RGB_cmp_ge0023
    );
  Mcompar_RGB_cmp_ge0000_lut_0_9 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => hPos(3),
      I1 => hPos(4),
      I2 => hPos(5),
      I3 => hPos(6),
      O => Mcompar_RGB_cmp_ge0000_lut_0_9_283
    );
  Mcompar_RGB_cmp_ge0000_cy_0_18 : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => Mcompar_RGB_cmp_ge0000_lut_0_9_283,
      O => Mcompar_RGB_cmp_ge0000_cy_0_19_17
    );
  Mcompar_RGB_cmp_ge0000_lut_1_19 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(7),
      I1 => hPos(8),
      I2 => hPos(9),
      I3 => hPos(10),
      O => Mcompar_RGB_cmp_ge0000_lut_1_19_336
    );
  Mcompar_RGB_cmp_ge0000_cy_1_18 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_0_19_17,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_1_19_336,
      O => Mcompar_RGB_cmp_ge0000_cy_1_19_71
    );
  Mcompar_RGB_cmp_ge0000_lut_2_5 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(11),
      I1 => hPos(12),
      I2 => hPos(13),
      I3 => hPos(14),
      O => Mcompar_RGB_cmp_ge0000_lut_2_5_351
    );
  Mcompar_RGB_cmp_ge0000_cy_2_18 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_1_19_71,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_2_5_351,
      O => Mcompar_RGB_cmp_ge0000_cy_2_19_92
    );
  Mcompar_RGB_cmp_ge0000_lut_3_19 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(15),
      I1 => hPos(16),
      I2 => hPos(17),
      I3 => hPos(18),
      O => Mcompar_RGB_cmp_ge0000_lut_3_19_364
    );
  Mcompar_RGB_cmp_ge0000_cy_3_18 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_2_19_92,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_3_19_364,
      O => Mcompar_RGB_cmp_ge0000_cy_3_19_127
    );
  Mcompar_RGB_cmp_ge0000_lut_4_8 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(19),
      I1 => hPos(20),
      I2 => hPos(21),
      I3 => hPos(22),
      O => Mcompar_RGB_cmp_ge0000_lut_4_8_382
    );
  Mcompar_RGB_cmp_ge0000_cy_4_18 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_3_19_127,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_4_8_382,
      O => Mcompar_RGB_cmp_ge0000_cy_4_19_148
    );
  Mcompar_RGB_cmp_ge0000_lut_5_19 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(23),
      I1 => hPos(24),
      I2 => hPos(25),
      I3 => hPos(26),
      O => Mcompar_RGB_cmp_ge0000_lut_5_19_395
    );
  Mcompar_RGB_cmp_ge0000_cy_5_18 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_4_19_148,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_5_19_395,
      O => Mcompar_RGB_cmp_ge0000_cy_5_19_180
    );
  Mcompar_RGB_cmp_ge0000_lut_6_15 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(27),
      I1 => hPos(28),
      I2 => hPos(29),
      I3 => hPos(30),
      O => Mcompar_RGB_cmp_ge0000_lut_6_15_412
    );
  Mcompar_RGB_cmp_ge0000_cy_6_18 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_5_19_180,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_6_15_412,
      O => Mcompar_RGB_cmp_ge0000_cy_6_19_201
    );
  Mcompar_RGB_cmp_ge0000_cy_7_18 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_6_19_201,
      DI => N0,
      S => Mcompar_RGB_cmp_ge0000_lut_7_19,
      O => RGB_cmp_ge0025
    );
  Mcompar_RGB_cmp_ge0000_lut_0_10 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => hPos(2),
      I1 => hPos(3),
      I2 => hPos(4),
      O => Mcompar_RGB_cmp_ge0000_lut_0_10_275
    );
  Mcompar_RGB_cmp_ge0000_cy_0_19 : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => Mcompar_RGB_cmp_ge0000_lut_0_10_275,
      O => Mcompar_RGB_cmp_ge0000_cy_0_20
    );
  Mcompar_RGB_cmp_ge0000_cy_1_19 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_0_20,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_1_20,
      O => Mcompar_RGB_cmp_ge0000_cy_1_20
    );
  Mcompar_RGB_cmp_ge0000_lut_2_6 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => hPos(6),
      I1 => hPos(7),
      O => Mcompar_RGB_cmp_ge0000_lut_2_6_352
    );
  Mcompar_RGB_cmp_ge0000_cy_2_19 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_1_20,
      DI => N0,
      S => Mcompar_RGB_cmp_ge0000_lut_2_6_352,
      O => Mcompar_RGB_cmp_ge0000_cy_2_20
    );
  Mcompar_RGB_cmp_ge0000_lut_3_20 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(8),
      I1 => hPos(9),
      I2 => hPos(10),
      I3 => hPos(11),
      O => Mcompar_RGB_cmp_ge0000_lut_3_20_366
    );
  Mcompar_RGB_cmp_ge0000_cy_3_19 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_2_20,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_3_20_366,
      O => Mcompar_RGB_cmp_ge0000_cy_3_20
    );
  Mcompar_RGB_cmp_ge0000_lut_4_9 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(12),
      I1 => hPos(13),
      I2 => hPos(14),
      I3 => hPos(15),
      O => Mcompar_RGB_cmp_ge0000_lut_4_9_383
    );
  Mcompar_RGB_cmp_ge0000_cy_4_19 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_3_20,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_4_9_383,
      O => Mcompar_RGB_cmp_ge0000_cy_4_20
    );
  Mcompar_RGB_cmp_ge0000_lut_5_20 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(16),
      I1 => hPos(17),
      I2 => hPos(18),
      I3 => hPos(19),
      O => Mcompar_RGB_cmp_ge0000_lut_5_20_397
    );
  Mcompar_RGB_cmp_ge0000_cy_5_19 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_4_20,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_5_20_397,
      O => Mcompar_RGB_cmp_ge0000_cy_5_20
    );
  Mcompar_RGB_cmp_ge0000_lut_6_16 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(20),
      I1 => hPos(21),
      I2 => hPos(22),
      I3 => hPos(23),
      O => Mcompar_RGB_cmp_ge0000_lut_6_16_413
    );
  Mcompar_RGB_cmp_ge0000_cy_6_19 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_5_20,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_6_16_413,
      O => Mcompar_RGB_cmp_ge0000_cy_6_20
    );
  Mcompar_RGB_cmp_ge0000_lut_7_20 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(24),
      I1 => hPos(25),
      I2 => hPos(26),
      I3 => hPos(27),
      O => Mcompar_RGB_cmp_ge0000_lut_7_20_435
    );
  Mcompar_RGB_cmp_ge0000_cy_7_19 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_6_20,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_7_20_435,
      O => Mcompar_RGB_cmp_ge0000_cy_7_19_226
    );
  Mcompar_RGB_cmp_ge0000_lut_8_19 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => hPos(28),
      I1 => hPos(29),
      I2 => hPos(30),
      O => Mcompar_RGB_cmp_ge0000_lut_8_19_454
    );
  Mcompar_RGB_cmp_ge0000_cy_8_18 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_7_19_226,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0000_lut_8_19_454,
      O => Mcompar_RGB_cmp_ge0000_cy_8_19
    );
  Mcompar_RGB_cmp_ge0000_cy_9_18 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0000_cy_8_19,
      DI => N0,
      S => Mcompar_RGB_cmp_ge0000_lut_9_19,
      O => RGB_cmp_ge0027
    );
  Mcompar_RGB_cmp_ge0001_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => Mcompar_RGB_cmp_ge0001_cy_0_rt_492,
      O => Mcompar_RGB_cmp_ge0001_cy(0)
    );
  Mcompar_RGB_cmp_ge0001_cy_1_Q : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0001_cy(0),
      DI => N1,
      S => Mcompar_RGB_cmp_ge0001_lut(1),
      O => Mcompar_RGB_cmp_ge0001_cy(1)
    );
  Mcompar_RGB_cmp_ge0001_cy_2_Q : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0001_cy(1),
      DI => N0,
      S => Mcompar_RGB_cmp_ge0001_cy_2_rt_512,
      O => Mcompar_RGB_cmp_ge0001_cy(2)
    );
  Mcompar_RGB_cmp_ge0001_lut_3_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => vPos(4),
      I1 => vPos(5),
      I2 => vPos(6),
      I3 => vPos(7),
      O => Mcompar_RGB_cmp_ge0001_lut(3)
    );
  Mcompar_RGB_cmp_ge0001_cy_3_Q : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0001_cy(2),
      DI => N1,
      S => Mcompar_RGB_cmp_ge0001_lut(3),
      O => Mcompar_RGB_cmp_ge0001_cy(3)
    );
  Mcompar_RGB_cmp_ge0001_lut_4_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => vPos(8),
      I1 => vPos(9),
      I2 => vPos(10),
      I3 => vPos(11),
      O => Mcompar_RGB_cmp_ge0001_lut(4)
    );
  Mcompar_RGB_cmp_ge0001_cy_4_Q : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0001_cy(3),
      DI => N1,
      S => Mcompar_RGB_cmp_ge0001_lut(4),
      O => Mcompar_RGB_cmp_ge0001_cy(4)
    );
  Mcompar_RGB_cmp_ge0001_lut_5_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => vPos(12),
      I1 => vPos(13),
      I2 => vPos(14),
      I3 => vPos(15),
      O => Mcompar_RGB_cmp_ge0001_lut(5)
    );
  Mcompar_RGB_cmp_ge0001_cy_5_Q : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0001_cy(4),
      DI => N1,
      S => Mcompar_RGB_cmp_ge0001_lut(5),
      O => Mcompar_RGB_cmp_ge0001_cy(5)
    );
  Mcompar_RGB_cmp_ge0001_lut_6_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => vPos(16),
      I1 => vPos(17),
      I2 => vPos(18),
      I3 => vPos(19),
      O => Mcompar_RGB_cmp_ge0001_lut(6)
    );
  Mcompar_RGB_cmp_ge0001_cy_6_Q : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0001_cy(5),
      DI => N1,
      S => Mcompar_RGB_cmp_ge0001_lut(6),
      O => Mcompar_RGB_cmp_ge0001_cy(6)
    );
  Mcompar_RGB_cmp_ge0001_lut_7_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => vPos(20),
      I1 => vPos(21),
      I2 => vPos(22),
      I3 => vPos(23),
      O => Mcompar_RGB_cmp_ge0001_lut(7)
    );
  Mcompar_RGB_cmp_ge0001_cy_7_Q : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0001_cy(6),
      DI => N1,
      S => Mcompar_RGB_cmp_ge0001_lut(7),
      O => Mcompar_RGB_cmp_ge0001_cy(7)
    );
  Mcompar_RGB_cmp_ge0001_lut_8_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => vPos(24),
      I1 => vPos(25),
      I2 => vPos(26),
      I3 => vPos(27),
      O => Mcompar_RGB_cmp_ge0001_lut(8)
    );
  Mcompar_RGB_cmp_ge0001_cy_8_Q : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0001_cy(7),
      DI => N1,
      S => Mcompar_RGB_cmp_ge0001_lut(8),
      O => Mcompar_RGB_cmp_ge0001_cy(8)
    );
  Mcompar_RGB_cmp_ge0001_lut_9_Q : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => vPos(28),
      I1 => vPos(29),
      I2 => vPos(30),
      O => Mcompar_RGB_cmp_ge0001_lut(9)
    );
  Mcompar_RGB_cmp_ge0001_cy_9_Q : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0001_cy(8),
      DI => N1,
      S => Mcompar_RGB_cmp_ge0001_lut(9),
      O => Mcompar_RGB_cmp_ge0001_cy(9)
    );
  Mcompar_RGB_cmp_ge0001_cy_10_Q : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0001_cy(9),
      DI => N0,
      S => Mcompar_RGB_cmp_ge0001_lut(10),
      O => RGB_cmp_ge0001
    );
  Mcompar_RGB_cmp_ge0001_lut_0_Q : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => vPos(2),
      I1 => vPos(3),
      I2 => vPos(4),
      O => Mcompar_RGB_cmp_ge0001_lut(0)
    );
  Mcompar_RGB_cmp_ge0001_cy_0_0 : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => Mcompar_RGB_cmp_ge0001_lut(0),
      O => Mcompar_RGB_cmp_ge0001_cy_0_1_484
    );
  Mcompar_RGB_cmp_ge0001_cy_1_0 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0001_cy_0_1_484,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0001_lut_1_1,
      O => Mcompar_RGB_cmp_ge0001_cy_1_1_496
    );
  Mcompar_RGB_cmp_ge0001_lut_2_Q : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => vPos_6_1_1954,
      I1 => vPos_7_1_1956,
      O => Mcompar_RGB_cmp_ge0001_lut(2)
    );
  Mcompar_RGB_cmp_ge0001_cy_2_0 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0001_cy_1_1_496,
      DI => N0,
      S => Mcompar_RGB_cmp_ge0001_lut(2),
      O => Mcompar_RGB_cmp_ge0001_cy_2_1_503
    );
  Mcompar_RGB_cmp_ge0001_lut_3_1 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => vPos_8_1_1958,
      I1 => vPos(9),
      I2 => vPos(10),
      I3 => vPos(11),
      O => Mcompar_RGB_cmp_ge0001_lut_3_1_577
    );
  Mcompar_RGB_cmp_ge0001_cy_3_0 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0001_cy_2_1_503,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0001_lut_3_1_577,
      O => Mcompar_RGB_cmp_ge0001_cy_3_1_514
    );
  Mcompar_RGB_cmp_ge0001_lut_4_1 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => vPos(12),
      I1 => vPos(13),
      I2 => vPos(14),
      I3 => vPos(15),
      O => Mcompar_RGB_cmp_ge0001_lut_4_1_584
    );
  Mcompar_RGB_cmp_ge0001_cy_4_0 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0001_cy_3_1_514,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0001_lut_4_1_584,
      O => Mcompar_RGB_cmp_ge0001_cy_4_1_521
    );
  Mcompar_RGB_cmp_ge0001_lut_5_1 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => vPos(16),
      I1 => vPos(17),
      I2 => vPos(18),
      I3 => vPos(19),
      O => Mcompar_RGB_cmp_ge0001_lut_5_1_590
    );
  Mcompar_RGB_cmp_ge0001_cy_5_0 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0001_cy_4_1_521,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0001_lut_5_1_590,
      O => Mcompar_RGB_cmp_ge0001_cy_5_1_529
    );
  Mcompar_RGB_cmp_ge0001_lut_6_1 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => vPos(20),
      I1 => vPos(21),
      I2 => vPos(22),
      I3 => vPos(23),
      O => Mcompar_RGB_cmp_ge0001_lut_6_1_597
    );
  Mcompar_RGB_cmp_ge0001_cy_6_0 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0001_cy_5_1_529,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0001_lut_6_1_597,
      O => Mcompar_RGB_cmp_ge0001_cy_6_1_536
    );
  Mcompar_RGB_cmp_ge0001_lut_7_1 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => vPos(24),
      I1 => vPos(25),
      I2 => vPos(26),
      I3 => vPos(27),
      O => Mcompar_RGB_cmp_ge0001_lut_7_1_604
    );
  Mcompar_RGB_cmp_ge0001_cy_7_0 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0001_cy_6_1_536,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0001_lut_7_1_604,
      O => Mcompar_RGB_cmp_ge0001_cy_7_1_543
    );
  Mcompar_RGB_cmp_ge0001_lut_8_1 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => vPos(28),
      I1 => vPos(29),
      I2 => vPos(30),
      O => Mcompar_RGB_cmp_ge0001_lut_8_1_611
    );
  Mcompar_RGB_cmp_ge0001_cy_8_0 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0001_cy_7_1_543,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0001_lut_8_1_611,
      O => Mcompar_RGB_cmp_ge0001_cy_8_1_549
    );
  Mcompar_RGB_cmp_ge0001_cy_9_0 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0001_cy_8_1_549,
      DI => N0,
      S => Mcompar_RGB_cmp_ge0001_lut_9_1,
      O => RGB_cmp_ge0003
    );
  Mcompar_RGB_cmp_ge0001_cy_0_1 : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => Mcompar_RGB_cmp_ge0001_cy_0_1_rt_490,
      O => Mcompar_RGB_cmp_ge0001_cy_0_2_485
    );
  Mcompar_RGB_cmp_ge0001_lut_1_2 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => vPos(3),
      I1 => vPos(4),
      O => Mcompar_RGB_cmp_ge0001_lut_1_2_568
    );
  Mcompar_RGB_cmp_ge0001_cy_1_1 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0001_cy_0_2_485,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0001_lut_1_2_568,
      O => Mcompar_RGB_cmp_ge0001_cy_1_2_497
    );
  Mcompar_RGB_cmp_ge0001_cy_2_1 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0001_cy_1_2_497,
      DI => N0,
      S => Mcompar_RGB_cmp_ge0001_cy_2_1_rt_509,
      O => Mcompar_RGB_cmp_ge0001_cy_2_2_504
    );
  Mcompar_RGB_cmp_ge0001_cy_3_1 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0001_cy_2_2_504,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0001_lut_3_2,
      O => Mcompar_RGB_cmp_ge0001_cy_3_2_515
    );
  Mcompar_RGB_cmp_ge0001_lut_4_2 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => vPos(7),
      I1 => vPos(8),
      O => Mcompar_RGB_cmp_ge0001_lut_4_2_585
    );
  Mcompar_RGB_cmp_ge0001_cy_4_1 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0001_cy_3_2_515,
      DI => N0,
      S => Mcompar_RGB_cmp_ge0001_lut_4_2_585,
      O => Mcompar_RGB_cmp_ge0001_cy_4_2_522
    );
  Mcompar_RGB_cmp_ge0001_lut_5_2 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => vPos(9),
      I1 => vPos(10),
      I2 => vPos(11),
      I3 => vPos(12),
      O => Mcompar_RGB_cmp_ge0001_lut_5_2_591
    );
  Mcompar_RGB_cmp_ge0001_cy_5_1 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0001_cy_4_2_522,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0001_lut_5_2_591,
      O => Mcompar_RGB_cmp_ge0001_cy_5_2_530
    );
  Mcompar_RGB_cmp_ge0001_lut_6_2 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => vPos(13),
      I1 => vPos(14),
      I2 => vPos(15),
      I3 => vPos(16),
      O => Mcompar_RGB_cmp_ge0001_lut_6_2_598
    );
  Mcompar_RGB_cmp_ge0001_cy_6_1 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0001_cy_5_2_530,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0001_lut_6_2_598,
      O => Mcompar_RGB_cmp_ge0001_cy_6_2_537
    );
  Mcompar_RGB_cmp_ge0001_lut_7_2 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => vPos(17),
      I1 => vPos(18),
      I2 => vPos(19),
      I3 => vPos(20),
      O => Mcompar_RGB_cmp_ge0001_lut_7_2_605
    );
  Mcompar_RGB_cmp_ge0001_cy_7_1 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0001_cy_6_2_537,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0001_lut_7_2_605,
      O => Mcompar_RGB_cmp_ge0001_cy_7_2_544
    );
  Mcompar_RGB_cmp_ge0001_lut_8_2 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => vPos(21),
      I1 => vPos(22),
      I2 => vPos(23),
      I3 => vPos(24),
      O => Mcompar_RGB_cmp_ge0001_lut_8_2_612
    );
  Mcompar_RGB_cmp_ge0001_cy_8_1 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0001_cy_7_2_544,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0001_lut_8_2_612,
      O => Mcompar_RGB_cmp_ge0001_cy_8_2_550
    );
  Mcompar_RGB_cmp_ge0001_lut_9_2 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => vPos(25),
      I1 => vPos(26),
      I2 => vPos(27),
      I3 => vPos(28),
      O => Mcompar_RGB_cmp_ge0001_lut_9_2_618
    );
  Mcompar_RGB_cmp_ge0001_cy_9_1 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0001_cy_8_2_550,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0001_lut_9_2_618,
      O => Mcompar_RGB_cmp_ge0001_cy_9_1_555
    );
  Mcompar_RGB_cmp_ge0001_lut_10_1 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => vPos(29),
      I1 => vPos(30),
      O => Mcompar_RGB_cmp_ge0001_lut_10_1_562
    );
  Mcompar_RGB_cmp_ge0001_cy_10_0 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0001_cy_9_1_555,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0001_lut_10_1_562,
      O => Mcompar_RGB_cmp_ge0001_cy(10)
    );
  Mcompar_RGB_cmp_ge0001_cy_11_Q : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0001_cy(10),
      DI => N0,
      S => Mcompar_RGB_cmp_ge0001_lut(11),
      O => RGB_cmp_ge0007
    );
  Mcompar_RGB_cmp_ge0001_lut_0_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => vPos(1),
      I1 => vPos(2),
      O => Mcompar_RGB_cmp_ge0001_lut_0_1_558
    );
  Mcompar_RGB_cmp_ge0001_cy_0_2 : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => Mcompar_RGB_cmp_ge0001_lut_0_1_558,
      O => Mcompar_RGB_cmp_ge0001_cy_0_3_486
    );
  Mcompar_RGB_cmp_ge0001_lut_1_3 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => vPos(3),
      I1 => vPos(4),
      O => Mcompar_RGB_cmp_ge0001_lut_1_3_569
    );
  Mcompar_RGB_cmp_ge0001_cy_1_2 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0001_cy_0_3_486,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0001_lut_1_3_569,
      O => Mcompar_RGB_cmp_ge0001_cy_1_3_498
    );
  Mcompar_RGB_cmp_ge0001_lut_2_1 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => vPos(5),
      I1 => vPos(6),
      I2 => vPos(7),
      O => Mcompar_RGB_cmp_ge0001_lut_2_1_574
    );
  Mcompar_RGB_cmp_ge0001_cy_2_2 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0001_cy_1_3_498,
      DI => N0,
      S => Mcompar_RGB_cmp_ge0001_lut_2_1_574,
      O => Mcompar_RGB_cmp_ge0001_cy_2_3_505
    );
  Mcompar_RGB_cmp_ge0001_lut_3_3 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => vPos(8),
      I1 => vPos(9),
      I2 => vPos(10),
      I3 => vPos(11),
      O => Mcompar_RGB_cmp_ge0001_lut_3_3_579
    );
  Mcompar_RGB_cmp_ge0001_cy_3_2 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0001_cy_2_3_505,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0001_lut_3_3_579,
      O => Mcompar_RGB_cmp_ge0001_cy_3_3_516
    );
  Mcompar_RGB_cmp_ge0001_lut_4_3 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => vPos(12),
      I1 => vPos(13),
      I2 => vPos(14),
      I3 => vPos(15),
      O => Mcompar_RGB_cmp_ge0001_lut_4_3_586
    );
  Mcompar_RGB_cmp_ge0001_cy_4_2 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0001_cy_3_3_516,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0001_lut_4_3_586,
      O => Mcompar_RGB_cmp_ge0001_cy_4_3_523
    );
  Mcompar_RGB_cmp_ge0001_lut_5_3 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => vPos(16),
      I1 => vPos(17),
      I2 => vPos(18),
      I3 => vPos(19),
      O => Mcompar_RGB_cmp_ge0001_lut_5_3_592
    );
  Mcompar_RGB_cmp_ge0001_cy_5_2 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0001_cy_4_3_523,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0001_lut_5_3_592,
      O => Mcompar_RGB_cmp_ge0001_cy_5_3_531
    );
  Mcompar_RGB_cmp_ge0001_lut_6_3 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => vPos(20),
      I1 => vPos(21),
      I2 => vPos(22),
      I3 => vPos(23),
      O => Mcompar_RGB_cmp_ge0001_lut_6_3_599
    );
  Mcompar_RGB_cmp_ge0001_cy_6_2 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0001_cy_5_3_531,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0001_lut_6_3_599,
      O => Mcompar_RGB_cmp_ge0001_cy_6_3_538
    );
  Mcompar_RGB_cmp_ge0001_lut_7_3 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => vPos(24),
      I1 => vPos(25),
      I2 => vPos(26),
      I3 => vPos(27),
      O => Mcompar_RGB_cmp_ge0001_lut_7_3_606
    );
  Mcompar_RGB_cmp_ge0001_cy_7_2 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0001_cy_6_3_538,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0001_lut_7_3_606,
      O => Mcompar_RGB_cmp_ge0001_cy_7_3_545
    );
  Mcompar_RGB_cmp_ge0001_lut_8_3 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => vPos(28),
      I1 => vPos(29),
      I2 => vPos(30),
      O => Mcompar_RGB_cmp_ge0001_lut_8_3_613
    );
  Mcompar_RGB_cmp_ge0001_cy_8_2 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0001_cy_7_3_545,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0001_lut_8_3_613,
      O => Mcompar_RGB_cmp_ge0001_cy_8_3_551
    );
  Mcompar_RGB_cmp_ge0001_cy_9_2 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0001_cy_8_3_551,
      DI => N0,
      S => Mcompar_RGB_cmp_ge0001_lut_9_3,
      O => RGB_cmp_ge0015
    );
  Mcompar_RGB_cmp_ge0001_lut_0_2 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => vPos(2),
      I1 => vPos(3),
      O => Mcompar_RGB_cmp_ge0001_lut_0_2_559
    );
  Mcompar_RGB_cmp_ge0001_cy_0_3 : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => Mcompar_RGB_cmp_ge0001_lut_0_2_559,
      O => Mcompar_RGB_cmp_ge0001_cy_0_4_487
    );
  Mcompar_RGB_cmp_ge0001_lut_1_4 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => vPos(4),
      I1 => vPos(5),
      I2 => vPos(6),
      O => Mcompar_RGB_cmp_ge0001_lut_1_4_570
    );
  Mcompar_RGB_cmp_ge0001_cy_1_3 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0001_cy_0_4_487,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0001_lut_1_4_570,
      O => Mcompar_RGB_cmp_ge0001_cy_1_4_499
    );
  Mcompar_RGB_cmp_ge0001_cy_2_3 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0001_cy_1_4_499,
      DI => N0,
      S => Mcompar_RGB_cmp_ge0001_cy_2_3_rt_510,
      O => Mcompar_RGB_cmp_ge0001_cy_2_4_506
    );
  Mcompar_RGB_cmp_ge0001_lut_3_4 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => vPos(8),
      I1 => vPos(9),
      I2 => vPos(10),
      I3 => vPos(11),
      O => Mcompar_RGB_cmp_ge0001_lut_3_4_580
    );
  Mcompar_RGB_cmp_ge0001_cy_3_3 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0001_cy_2_4_506,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0001_lut_3_4_580,
      O => Mcompar_RGB_cmp_ge0001_cy_3_4_517
    );
  Mcompar_RGB_cmp_ge0001_lut_4_4 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => vPos(12),
      I1 => vPos(13),
      I2 => vPos(14),
      I3 => vPos(15),
      O => Mcompar_RGB_cmp_ge0001_lut_4_4_587
    );
  Mcompar_RGB_cmp_ge0001_cy_4_3 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0001_cy_3_4_517,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0001_lut_4_4_587,
      O => Mcompar_RGB_cmp_ge0001_cy_4_4_524
    );
  Mcompar_RGB_cmp_ge0001_lut_5_4 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => vPos(16),
      I1 => vPos(17),
      I2 => vPos(18),
      I3 => vPos(19),
      O => Mcompar_RGB_cmp_ge0001_lut_5_4_593
    );
  Mcompar_RGB_cmp_ge0001_cy_5_3 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0001_cy_4_4_524,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0001_lut_5_4_593,
      O => Mcompar_RGB_cmp_ge0001_cy_5_4_532
    );
  Mcompar_RGB_cmp_ge0001_lut_6_4 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => vPos(20),
      I1 => vPos(21),
      I2 => vPos(22),
      I3 => vPos(23),
      O => Mcompar_RGB_cmp_ge0001_lut_6_4_600
    );
  Mcompar_RGB_cmp_ge0001_cy_6_3 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0001_cy_5_4_532,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0001_lut_6_4_600,
      O => Mcompar_RGB_cmp_ge0001_cy_6_4_539
    );
  Mcompar_RGB_cmp_ge0001_lut_7_4 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => vPos(24),
      I1 => vPos(25),
      I2 => vPos(26),
      I3 => vPos(27),
      O => Mcompar_RGB_cmp_ge0001_lut_7_4_607
    );
  Mcompar_RGB_cmp_ge0001_cy_7_3 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0001_cy_6_4_539,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0001_lut_7_4_607,
      O => Mcompar_RGB_cmp_ge0001_cy_7_4_546
    );
  Mcompar_RGB_cmp_ge0001_lut_8_4 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => vPos(28),
      I1 => vPos(29),
      I2 => vPos(30),
      O => Mcompar_RGB_cmp_ge0001_lut_8_4_614
    );
  Mcompar_RGB_cmp_ge0001_cy_8_3 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0001_cy_7_4_546,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0001_lut_8_4_614,
      O => Mcompar_RGB_cmp_ge0001_cy_8_4_552
    );
  Mcompar_RGB_cmp_ge0001_cy_9_3 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0001_cy_8_4_552,
      DI => N0,
      S => Mcompar_RGB_cmp_ge0001_lut_9_4,
      O => RGB_cmp_ge0022
    );
  Mcompar_RGB_cmp_ge0001_cy_0_4 : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => Mcompar_RGB_cmp_ge0001_cy_0_4_rt_491,
      O => Mcompar_RGB_cmp_ge0001_cy_0_5_488
    );
  Mcompar_RGB_cmp_ge0001_lut_1_5 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => vPos(2),
      I1 => vPos(3),
      I2 => vPos(4),
      O => Mcompar_RGB_cmp_ge0001_lut_1_5_571
    );
  Mcompar_RGB_cmp_ge0001_cy_1_4 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0001_cy_0_5_488,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0001_lut_1_5_571,
      O => Mcompar_RGB_cmp_ge0001_cy_1_5_500
    );
  Mcompar_RGB_cmp_ge0001_cy_2_4 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0001_cy_1_5_500,
      DI => N0,
      S => Mcompar_RGB_cmp_ge0001_cy_2_4_rt_511,
      O => Mcompar_RGB_cmp_ge0001_cy_2_5_507
    );
  Mcompar_RGB_cmp_ge0001_lut_3_5 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => vPos_6_1_1954,
      I1 => vPos(7),
      O => Mcompar_RGB_cmp_ge0001_lut_3_5_581
    );
  Mcompar_RGB_cmp_ge0001_cy_3_4 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0001_cy_2_5_507,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0001_lut_3_5_581,
      O => Mcompar_RGB_cmp_ge0001_cy_3_5_518
    );
  Mcompar_RGB_cmp_ge0001_cy_4_4 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0001_cy_3_5_518,
      DI => N0,
      S => Mcompar_RGB_cmp_ge0001_cy_4_4_rt_527,
      O => Mcompar_RGB_cmp_ge0001_cy_4_5_525
    );
  Mcompar_RGB_cmp_ge0001_lut_5_5 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => vPos(9),
      I1 => vPos(10),
      I2 => vPos(11),
      I3 => vPos(12),
      O => Mcompar_RGB_cmp_ge0001_lut_5_5_594
    );
  Mcompar_RGB_cmp_ge0001_cy_5_4 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0001_cy_4_5_525,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0001_lut_5_5_594,
      O => Mcompar_RGB_cmp_ge0001_cy_5_5_533
    );
  Mcompar_RGB_cmp_ge0001_lut_6_5 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => vPos(13),
      I1 => vPos(14),
      I2 => vPos(15),
      I3 => vPos(16),
      O => Mcompar_RGB_cmp_ge0001_lut_6_5_601
    );
  Mcompar_RGB_cmp_ge0001_cy_6_4 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0001_cy_5_5_533,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0001_lut_6_5_601,
      O => Mcompar_RGB_cmp_ge0001_cy_6_5_540
    );
  Mcompar_RGB_cmp_ge0001_lut_7_5 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => vPos(17),
      I1 => vPos(18),
      I2 => vPos(19),
      I3 => vPos(20),
      O => Mcompar_RGB_cmp_ge0001_lut_7_5_608
    );
  Mcompar_RGB_cmp_ge0001_cy_7_4 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0001_cy_6_5_540,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0001_lut_7_5_608,
      O => Mcompar_RGB_cmp_ge0001_cy_7_5_547
    );
  Mcompar_RGB_cmp_ge0001_lut_8_5 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => vPos(21),
      I1 => vPos(22),
      I2 => vPos(23),
      I3 => vPos(24),
      O => Mcompar_RGB_cmp_ge0001_lut_8_5_615
    );
  Mcompar_RGB_cmp_ge0001_cy_8_4 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0001_cy_7_5_547,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0001_lut_8_5_615,
      O => Mcompar_RGB_cmp_ge0001_cy_8_5
    );
  Mcompar_RGB_cmp_ge0001_lut_9_5 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => vPos(25),
      I1 => vPos(26),
      I2 => vPos(27),
      I3 => vPos(28),
      O => Mcompar_RGB_cmp_ge0001_lut_9_5_621
    );
  Mcompar_RGB_cmp_ge0001_cy_9_4 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0001_cy_8_5,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0001_lut_9_5_621,
      O => Mcompar_RGB_cmp_ge0001_cy_9_2_556
    );
  Mcompar_RGB_cmp_ge0001_lut_10_2 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => vPos(29),
      I1 => vPos(30),
      O => Mcompar_RGB_cmp_ge0001_lut_10_2_563
    );
  Mcompar_RGB_cmp_ge0001_cy_10_1 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0001_cy_9_2_556,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0001_lut_10_2_563,
      O => Mcompar_RGB_cmp_ge0001_cy_10_1_494
    );
  Mcompar_RGB_cmp_ge0001_cy_11_0 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0001_cy_10_1_494,
      DI => N0,
      S => Mcompar_RGB_cmp_ge0001_lut_11_1,
      O => RGB_cmp_ge0024
    );
  Mcompar_RGB_cmp_ge0001_lut_0_3 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => vPos(4),
      I1 => vPos(5),
      I2 => vPos(6),
      I3 => vPos(7),
      O => Mcompar_RGB_cmp_ge0001_lut_0_3_560
    );
  Mcompar_RGB_cmp_ge0001_cy_0_5 : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => Mcompar_RGB_cmp_ge0001_lut_0_3_560,
      O => Mcompar_RGB_cmp_ge0001_cy_0_6
    );
  Mcompar_RGB_cmp_ge0001_lut_1_6 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => vPos(8),
      I1 => vPos(9),
      I2 => vPos(10),
      I3 => vPos(11),
      O => Mcompar_RGB_cmp_ge0001_lut_1_6_572
    );
  Mcompar_RGB_cmp_ge0001_cy_1_5 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0001_cy_0_6,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0001_lut_1_6_572,
      O => Mcompar_RGB_cmp_ge0001_cy_1_6
    );
  Mcompar_RGB_cmp_ge0001_lut_2_2 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => vPos(12),
      I1 => vPos(13),
      I2 => vPos(14),
      I3 => vPos(15),
      O => Mcompar_RGB_cmp_ge0001_lut_2_2_575
    );
  Mcompar_RGB_cmp_ge0001_cy_2_5 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0001_cy_1_6,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0001_lut_2_2_575,
      O => Mcompar_RGB_cmp_ge0001_cy_2_6
    );
  Mcompar_RGB_cmp_ge0001_lut_3_6 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => vPos(16),
      I1 => vPos(17),
      I2 => vPos(18),
      I3 => vPos(19),
      O => Mcompar_RGB_cmp_ge0001_lut_3_6_582
    );
  Mcompar_RGB_cmp_ge0001_cy_3_5 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0001_cy_2_6,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0001_lut_3_6_582,
      O => Mcompar_RGB_cmp_ge0001_cy_3_6
    );
  Mcompar_RGB_cmp_ge0001_lut_4_5 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => vPos(20),
      I1 => vPos(21),
      I2 => vPos(22),
      I3 => vPos(23),
      O => Mcompar_RGB_cmp_ge0001_lut_4_5_588
    );
  Mcompar_RGB_cmp_ge0001_cy_4_5 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0001_cy_3_6,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0001_lut_4_5_588,
      O => Mcompar_RGB_cmp_ge0001_cy_4_6
    );
  Mcompar_RGB_cmp_ge0001_lut_5_6 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => vPos(24),
      I1 => vPos(25),
      I2 => vPos(26),
      I3 => vPos(27),
      O => Mcompar_RGB_cmp_ge0001_lut_5_6_595
    );
  Mcompar_RGB_cmp_ge0001_cy_5_5 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0001_cy_4_6,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0001_lut_5_6_595,
      O => Mcompar_RGB_cmp_ge0001_cy_5_6
    );
  Mcompar_RGB_cmp_ge0001_lut_6_6 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => vPos(28),
      I1 => vPos(29),
      I2 => vPos(30),
      O => Mcompar_RGB_cmp_ge0001_lut_6_6_602
    );
  Mcompar_RGB_cmp_ge0001_cy_6_5 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0001_cy_5_6,
      DI => N1,
      S => Mcompar_RGB_cmp_ge0001_lut_6_6_602,
      O => Mcompar_RGB_cmp_ge0001_cy_6_6
    );
  Mcompar_RGB_cmp_ge0001_cy_7_5 : MUXCY
    port map (
      CI => Mcompar_RGB_cmp_ge0001_cy_6_6,
      DI => N0,
      S => Mcompar_RGB_cmp_ge0001_lut_7_6,
      O => RGB_cmp_ge0026
    );
  Mcount_hPos_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => N1,
      S => Mcount_hPos_lut(0),
      O => Mcount_hPos_cy(0)
    );
  Mcount_hPos_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => Mcount_hPos_lut(0),
      O => Result(0)
    );
  Mcount_hPos_cy_1_Q : MUXCY
    port map (
      CI => Mcount_hPos_cy(0),
      DI => N0,
      S => Mcount_hPos_cy_1_rt_1452,
      O => Mcount_hPos_cy(1)
    );
  Mcount_hPos_xor_1_Q : XORCY
    port map (
      CI => Mcount_hPos_cy(0),
      LI => Mcount_hPos_cy_1_rt_1452,
      O => Result(1)
    );
  Mcount_hPos_cy_2_Q : MUXCY
    port map (
      CI => Mcount_hPos_cy(1),
      DI => N0,
      S => Mcount_hPos_cy_2_rt_1474,
      O => Mcount_hPos_cy(2)
    );
  Mcount_hPos_xor_2_Q : XORCY
    port map (
      CI => Mcount_hPos_cy(1),
      LI => Mcount_hPos_cy_2_rt_1474,
      O => Result(2)
    );
  Mcount_hPos_cy_3_Q : MUXCY
    port map (
      CI => Mcount_hPos_cy(2),
      DI => N0,
      S => Mcount_hPos_cy_3_rt_1478,
      O => Mcount_hPos_cy(3)
    );
  Mcount_hPos_xor_3_Q : XORCY
    port map (
      CI => Mcount_hPos_cy(2),
      LI => Mcount_hPos_cy_3_rt_1478,
      O => Result(3)
    );
  Mcount_hPos_cy_4_Q : MUXCY
    port map (
      CI => Mcount_hPos_cy(3),
      DI => N0,
      S => Mcount_hPos_cy_4_rt_1480,
      O => Mcount_hPos_cy(4)
    );
  Mcount_hPos_xor_4_Q : XORCY
    port map (
      CI => Mcount_hPos_cy(3),
      LI => Mcount_hPos_cy_4_rt_1480,
      O => Result(4)
    );
  Mcount_hPos_cy_5_Q : MUXCY
    port map (
      CI => Mcount_hPos_cy(4),
      DI => N0,
      S => Mcount_hPos_cy_5_rt_1482,
      O => Mcount_hPos_cy(5)
    );
  Mcount_hPos_xor_5_Q : XORCY
    port map (
      CI => Mcount_hPos_cy(4),
      LI => Mcount_hPos_cy_5_rt_1482,
      O => Result(5)
    );
  Mcount_hPos_cy_6_Q : MUXCY
    port map (
      CI => Mcount_hPos_cy(5),
      DI => N0,
      S => Mcount_hPos_cy_6_rt_1484,
      O => Mcount_hPos_cy(6)
    );
  Mcount_hPos_xor_6_Q : XORCY
    port map (
      CI => Mcount_hPos_cy(5),
      LI => Mcount_hPos_cy_6_rt_1484,
      O => Result(6)
    );
  Mcount_hPos_cy_7_Q : MUXCY
    port map (
      CI => Mcount_hPos_cy(6),
      DI => N0,
      S => Mcount_hPos_cy_7_rt_1486,
      O => Mcount_hPos_cy(7)
    );
  Mcount_hPos_xor_7_Q : XORCY
    port map (
      CI => Mcount_hPos_cy(6),
      LI => Mcount_hPos_cy_7_rt_1486,
      O => Result(7)
    );
  Mcount_hPos_cy_8_Q : MUXCY
    port map (
      CI => Mcount_hPos_cy(7),
      DI => N0,
      S => Mcount_hPos_cy_8_rt_1488,
      O => Mcount_hPos_cy(8)
    );
  Mcount_hPos_xor_8_Q : XORCY
    port map (
      CI => Mcount_hPos_cy(7),
      LI => Mcount_hPos_cy_8_rt_1488,
      O => Result(8)
    );
  Mcount_hPos_cy_9_Q : MUXCY
    port map (
      CI => Mcount_hPos_cy(8),
      DI => N0,
      S => Mcount_hPos_cy_9_rt_1490,
      O => Mcount_hPos_cy(9)
    );
  Mcount_hPos_xor_9_Q : XORCY
    port map (
      CI => Mcount_hPos_cy(8),
      LI => Mcount_hPos_cy_9_rt_1490,
      O => Result(9)
    );
  Mcount_hPos_cy_10_Q : MUXCY
    port map (
      CI => Mcount_hPos_cy(9),
      DI => N0,
      S => Mcount_hPos_cy_10_rt_1432,
      O => Mcount_hPos_cy(10)
    );
  Mcount_hPos_xor_10_Q : XORCY
    port map (
      CI => Mcount_hPos_cy(9),
      LI => Mcount_hPos_cy_10_rt_1432,
      O => Result(10)
    );
  Mcount_hPos_cy_11_Q : MUXCY
    port map (
      CI => Mcount_hPos_cy(10),
      DI => N0,
      S => Mcount_hPos_cy_11_rt_1434,
      O => Mcount_hPos_cy(11)
    );
  Mcount_hPos_xor_11_Q : XORCY
    port map (
      CI => Mcount_hPos_cy(10),
      LI => Mcount_hPos_cy_11_rt_1434,
      O => Result(11)
    );
  Mcount_hPos_cy_12_Q : MUXCY
    port map (
      CI => Mcount_hPos_cy(11),
      DI => N0,
      S => Mcount_hPos_cy_12_rt_1436,
      O => Mcount_hPos_cy(12)
    );
  Mcount_hPos_xor_12_Q : XORCY
    port map (
      CI => Mcount_hPos_cy(11),
      LI => Mcount_hPos_cy_12_rt_1436,
      O => Result(12)
    );
  Mcount_hPos_cy_13_Q : MUXCY
    port map (
      CI => Mcount_hPos_cy(12),
      DI => N0,
      S => Mcount_hPos_cy_13_rt_1438,
      O => Mcount_hPos_cy(13)
    );
  Mcount_hPos_xor_13_Q : XORCY
    port map (
      CI => Mcount_hPos_cy(12),
      LI => Mcount_hPos_cy_13_rt_1438,
      O => Result(13)
    );
  Mcount_hPos_cy_14_Q : MUXCY
    port map (
      CI => Mcount_hPos_cy(13),
      DI => N0,
      S => Mcount_hPos_cy_14_rt_1440,
      O => Mcount_hPos_cy(14)
    );
  Mcount_hPos_xor_14_Q : XORCY
    port map (
      CI => Mcount_hPos_cy(13),
      LI => Mcount_hPos_cy_14_rt_1440,
      O => Result(14)
    );
  Mcount_hPos_cy_15_Q : MUXCY
    port map (
      CI => Mcount_hPos_cy(14),
      DI => N0,
      S => Mcount_hPos_cy_15_rt_1442,
      O => Mcount_hPos_cy(15)
    );
  Mcount_hPos_xor_15_Q : XORCY
    port map (
      CI => Mcount_hPos_cy(14),
      LI => Mcount_hPos_cy_15_rt_1442,
      O => Result(15)
    );
  Mcount_hPos_cy_16_Q : MUXCY
    port map (
      CI => Mcount_hPos_cy(15),
      DI => N0,
      S => Mcount_hPos_cy_16_rt_1444,
      O => Mcount_hPos_cy(16)
    );
  Mcount_hPos_xor_16_Q : XORCY
    port map (
      CI => Mcount_hPos_cy(15),
      LI => Mcount_hPos_cy_16_rt_1444,
      O => Result(16)
    );
  Mcount_hPos_cy_17_Q : MUXCY
    port map (
      CI => Mcount_hPos_cy(16),
      DI => N0,
      S => Mcount_hPos_cy_17_rt_1446,
      O => Mcount_hPos_cy(17)
    );
  Mcount_hPos_xor_17_Q : XORCY
    port map (
      CI => Mcount_hPos_cy(16),
      LI => Mcount_hPos_cy_17_rt_1446,
      O => Result(17)
    );
  Mcount_hPos_cy_18_Q : MUXCY
    port map (
      CI => Mcount_hPos_cy(17),
      DI => N0,
      S => Mcount_hPos_cy_18_rt_1448,
      O => Mcount_hPos_cy(18)
    );
  Mcount_hPos_xor_18_Q : XORCY
    port map (
      CI => Mcount_hPos_cy(17),
      LI => Mcount_hPos_cy_18_rt_1448,
      O => Result(18)
    );
  Mcount_hPos_cy_19_Q : MUXCY
    port map (
      CI => Mcount_hPos_cy(18),
      DI => N0,
      S => Mcount_hPos_cy_19_rt_1450,
      O => Mcount_hPos_cy(19)
    );
  Mcount_hPos_xor_19_Q : XORCY
    port map (
      CI => Mcount_hPos_cy(18),
      LI => Mcount_hPos_cy_19_rt_1450,
      O => Result(19)
    );
  Mcount_hPos_cy_20_Q : MUXCY
    port map (
      CI => Mcount_hPos_cy(19),
      DI => N0,
      S => Mcount_hPos_cy_20_rt_1454,
      O => Mcount_hPos_cy(20)
    );
  Mcount_hPos_xor_20_Q : XORCY
    port map (
      CI => Mcount_hPos_cy(19),
      LI => Mcount_hPos_cy_20_rt_1454,
      O => Result(20)
    );
  Mcount_hPos_cy_21_Q : MUXCY
    port map (
      CI => Mcount_hPos_cy(20),
      DI => N0,
      S => Mcount_hPos_cy_21_rt_1456,
      O => Mcount_hPos_cy(21)
    );
  Mcount_hPos_xor_21_Q : XORCY
    port map (
      CI => Mcount_hPos_cy(20),
      LI => Mcount_hPos_cy_21_rt_1456,
      O => Result(21)
    );
  Mcount_hPos_cy_22_Q : MUXCY
    port map (
      CI => Mcount_hPos_cy(21),
      DI => N0,
      S => Mcount_hPos_cy_22_rt_1458,
      O => Mcount_hPos_cy(22)
    );
  Mcount_hPos_xor_22_Q : XORCY
    port map (
      CI => Mcount_hPos_cy(21),
      LI => Mcount_hPos_cy_22_rt_1458,
      O => Result(22)
    );
  Mcount_hPos_cy_23_Q : MUXCY
    port map (
      CI => Mcount_hPos_cy(22),
      DI => N0,
      S => Mcount_hPos_cy_23_rt_1460,
      O => Mcount_hPos_cy(23)
    );
  Mcount_hPos_xor_23_Q : XORCY
    port map (
      CI => Mcount_hPos_cy(22),
      LI => Mcount_hPos_cy_23_rt_1460,
      O => Result(23)
    );
  Mcount_hPos_cy_24_Q : MUXCY
    port map (
      CI => Mcount_hPos_cy(23),
      DI => N0,
      S => Mcount_hPos_cy_24_rt_1462,
      O => Mcount_hPos_cy(24)
    );
  Mcount_hPos_xor_24_Q : XORCY
    port map (
      CI => Mcount_hPos_cy(23),
      LI => Mcount_hPos_cy_24_rt_1462,
      O => Result(24)
    );
  Mcount_hPos_cy_25_Q : MUXCY
    port map (
      CI => Mcount_hPos_cy(24),
      DI => N0,
      S => Mcount_hPos_cy_25_rt_1464,
      O => Mcount_hPos_cy(25)
    );
  Mcount_hPos_xor_25_Q : XORCY
    port map (
      CI => Mcount_hPos_cy(24),
      LI => Mcount_hPos_cy_25_rt_1464,
      O => Result(25)
    );
  Mcount_hPos_cy_26_Q : MUXCY
    port map (
      CI => Mcount_hPos_cy(25),
      DI => N0,
      S => Mcount_hPos_cy_26_rt_1466,
      O => Mcount_hPos_cy(26)
    );
  Mcount_hPos_xor_26_Q : XORCY
    port map (
      CI => Mcount_hPos_cy(25),
      LI => Mcount_hPos_cy_26_rt_1466,
      O => Result(26)
    );
  Mcount_hPos_cy_27_Q : MUXCY
    port map (
      CI => Mcount_hPos_cy(26),
      DI => N0,
      S => Mcount_hPos_cy_27_rt_1468,
      O => Mcount_hPos_cy(27)
    );
  Mcount_hPos_xor_27_Q : XORCY
    port map (
      CI => Mcount_hPos_cy(26),
      LI => Mcount_hPos_cy_27_rt_1468,
      O => Result(27)
    );
  Mcount_hPos_cy_28_Q : MUXCY
    port map (
      CI => Mcount_hPos_cy(27),
      DI => N0,
      S => Mcount_hPos_cy_28_rt_1470,
      O => Mcount_hPos_cy(28)
    );
  Mcount_hPos_xor_28_Q : XORCY
    port map (
      CI => Mcount_hPos_cy(27),
      LI => Mcount_hPos_cy_28_rt_1470,
      O => Result(28)
    );
  Mcount_hPos_cy_29_Q : MUXCY
    port map (
      CI => Mcount_hPos_cy(28),
      DI => N0,
      S => Mcount_hPos_cy_29_rt_1472,
      O => Mcount_hPos_cy(29)
    );
  Mcount_hPos_xor_29_Q : XORCY
    port map (
      CI => Mcount_hPos_cy(28),
      LI => Mcount_hPos_cy_29_rt_1472,
      O => Result(29)
    );
  Mcount_hPos_cy_30_Q : MUXCY
    port map (
      CI => Mcount_hPos_cy(29),
      DI => N0,
      S => Mcount_hPos_cy_30_rt_1476,
      O => Mcount_hPos_cy(30)
    );
  Mcount_hPos_xor_30_Q : XORCY
    port map (
      CI => Mcount_hPos_cy(29),
      LI => Mcount_hPos_cy_30_rt_1476,
      O => Result(30)
    );
  Mcount_hPos_xor_31_Q : XORCY
    port map (
      CI => Mcount_hPos_cy(30),
      LI => Mcount_hPos_xor_31_rt_1524,
      O => Result(31)
    );
  Mcount_vPos_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => N1,
      S => Mcount_vPos_lut(0),
      O => Mcount_vPos_cy(0)
    );
  Mcount_vPos_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => Mcount_vPos_lut(0),
      O => Result_0_1
    );
  Mcount_vPos_cy_1_Q : MUXCY
    port map (
      CI => Mcount_vPos_cy(0),
      DI => N0,
      S => Mcount_vPos_cy_1_rt_1547,
      O => Mcount_vPos_cy(1)
    );
  Mcount_vPos_xor_1_Q : XORCY
    port map (
      CI => Mcount_vPos_cy(0),
      LI => Mcount_vPos_cy_1_rt_1547,
      O => Result_1_1
    );
  Mcount_vPos_cy_2_Q : MUXCY
    port map (
      CI => Mcount_vPos_cy(1),
      DI => N0,
      S => Mcount_vPos_cy_2_rt_1569,
      O => Mcount_vPos_cy(2)
    );
  Mcount_vPos_xor_2_Q : XORCY
    port map (
      CI => Mcount_vPos_cy(1),
      LI => Mcount_vPos_cy_2_rt_1569,
      O => Result_2_1
    );
  Mcount_vPos_cy_3_Q : MUXCY
    port map (
      CI => Mcount_vPos_cy(2),
      DI => N0,
      S => Mcount_vPos_cy_3_rt_1573,
      O => Mcount_vPos_cy(3)
    );
  Mcount_vPos_xor_3_Q : XORCY
    port map (
      CI => Mcount_vPos_cy(2),
      LI => Mcount_vPos_cy_3_rt_1573,
      O => Result_3_1
    );
  Mcount_vPos_cy_4_Q : MUXCY
    port map (
      CI => Mcount_vPos_cy(3),
      DI => N0,
      S => Mcount_vPos_cy_4_rt_1575,
      O => Mcount_vPos_cy(4)
    );
  Mcount_vPos_xor_4_Q : XORCY
    port map (
      CI => Mcount_vPos_cy(3),
      LI => Mcount_vPos_cy_4_rt_1575,
      O => Result_4_1
    );
  Mcount_vPos_cy_5_Q : MUXCY
    port map (
      CI => Mcount_vPos_cy(4),
      DI => N0,
      S => Mcount_vPos_cy_5_rt_1577,
      O => Mcount_vPos_cy(5)
    );
  Mcount_vPos_xor_5_Q : XORCY
    port map (
      CI => Mcount_vPos_cy(4),
      LI => Mcount_vPos_cy_5_rt_1577,
      O => Result_5_1
    );
  Mcount_vPos_cy_6_Q : MUXCY
    port map (
      CI => Mcount_vPos_cy(5),
      DI => N0,
      S => Mcount_vPos_cy_6_rt_1579,
      O => Mcount_vPos_cy(6)
    );
  Mcount_vPos_xor_6_Q : XORCY
    port map (
      CI => Mcount_vPos_cy(5),
      LI => Mcount_vPos_cy_6_rt_1579,
      O => Result_6_1
    );
  Mcount_vPos_cy_7_Q : MUXCY
    port map (
      CI => Mcount_vPos_cy(6),
      DI => N0,
      S => Mcount_vPos_cy_7_rt_1581,
      O => Mcount_vPos_cy(7)
    );
  Mcount_vPos_xor_7_Q : XORCY
    port map (
      CI => Mcount_vPos_cy(6),
      LI => Mcount_vPos_cy_7_rt_1581,
      O => Result_7_1
    );
  Mcount_vPos_cy_8_Q : MUXCY
    port map (
      CI => Mcount_vPos_cy(7),
      DI => N0,
      S => Mcount_vPos_cy_8_rt_1583,
      O => Mcount_vPos_cy(8)
    );
  Mcount_vPos_xor_8_Q : XORCY
    port map (
      CI => Mcount_vPos_cy(7),
      LI => Mcount_vPos_cy_8_rt_1583,
      O => Result_8_1
    );
  Mcount_vPos_cy_9_Q : MUXCY
    port map (
      CI => Mcount_vPos_cy(8),
      DI => N0,
      S => Mcount_vPos_cy_9_rt_1585,
      O => Mcount_vPos_cy(9)
    );
  Mcount_vPos_xor_9_Q : XORCY
    port map (
      CI => Mcount_vPos_cy(8),
      LI => Mcount_vPos_cy_9_rt_1585,
      O => Result_9_1
    );
  Mcount_vPos_cy_10_Q : MUXCY
    port map (
      CI => Mcount_vPos_cy(9),
      DI => N0,
      S => Mcount_vPos_cy_10_rt_1527,
      O => Mcount_vPos_cy(10)
    );
  Mcount_vPos_xor_10_Q : XORCY
    port map (
      CI => Mcount_vPos_cy(9),
      LI => Mcount_vPos_cy_10_rt_1527,
      O => Result_10_1
    );
  Mcount_vPos_cy_11_Q : MUXCY
    port map (
      CI => Mcount_vPos_cy(10),
      DI => N0,
      S => Mcount_vPos_cy_11_rt_1529,
      O => Mcount_vPos_cy(11)
    );
  Mcount_vPos_xor_11_Q : XORCY
    port map (
      CI => Mcount_vPos_cy(10),
      LI => Mcount_vPos_cy_11_rt_1529,
      O => Result_11_1
    );
  Mcount_vPos_cy_12_Q : MUXCY
    port map (
      CI => Mcount_vPos_cy(11),
      DI => N0,
      S => Mcount_vPos_cy_12_rt_1531,
      O => Mcount_vPos_cy(12)
    );
  Mcount_vPos_xor_12_Q : XORCY
    port map (
      CI => Mcount_vPos_cy(11),
      LI => Mcount_vPos_cy_12_rt_1531,
      O => Result_12_1
    );
  Mcount_vPos_cy_13_Q : MUXCY
    port map (
      CI => Mcount_vPos_cy(12),
      DI => N0,
      S => Mcount_vPos_cy_13_rt_1533,
      O => Mcount_vPos_cy(13)
    );
  Mcount_vPos_xor_13_Q : XORCY
    port map (
      CI => Mcount_vPos_cy(12),
      LI => Mcount_vPos_cy_13_rt_1533,
      O => Result_13_1
    );
  Mcount_vPos_cy_14_Q : MUXCY
    port map (
      CI => Mcount_vPos_cy(13),
      DI => N0,
      S => Mcount_vPos_cy_14_rt_1535,
      O => Mcount_vPos_cy(14)
    );
  Mcount_vPos_xor_14_Q : XORCY
    port map (
      CI => Mcount_vPos_cy(13),
      LI => Mcount_vPos_cy_14_rt_1535,
      O => Result_14_1
    );
  Mcount_vPos_cy_15_Q : MUXCY
    port map (
      CI => Mcount_vPos_cy(14),
      DI => N0,
      S => Mcount_vPos_cy_15_rt_1537,
      O => Mcount_vPos_cy(15)
    );
  Mcount_vPos_xor_15_Q : XORCY
    port map (
      CI => Mcount_vPos_cy(14),
      LI => Mcount_vPos_cy_15_rt_1537,
      O => Result_15_1
    );
  Mcount_vPos_cy_16_Q : MUXCY
    port map (
      CI => Mcount_vPos_cy(15),
      DI => N0,
      S => Mcount_vPos_cy_16_rt_1539,
      O => Mcount_vPos_cy(16)
    );
  Mcount_vPos_xor_16_Q : XORCY
    port map (
      CI => Mcount_vPos_cy(15),
      LI => Mcount_vPos_cy_16_rt_1539,
      O => Result_16_1
    );
  Mcount_vPos_cy_17_Q : MUXCY
    port map (
      CI => Mcount_vPos_cy(16),
      DI => N0,
      S => Mcount_vPos_cy_17_rt_1541,
      O => Mcount_vPos_cy(17)
    );
  Mcount_vPos_xor_17_Q : XORCY
    port map (
      CI => Mcount_vPos_cy(16),
      LI => Mcount_vPos_cy_17_rt_1541,
      O => Result_17_1
    );
  Mcount_vPos_cy_18_Q : MUXCY
    port map (
      CI => Mcount_vPos_cy(17),
      DI => N0,
      S => Mcount_vPos_cy_18_rt_1543,
      O => Mcount_vPos_cy(18)
    );
  Mcount_vPos_xor_18_Q : XORCY
    port map (
      CI => Mcount_vPos_cy(17),
      LI => Mcount_vPos_cy_18_rt_1543,
      O => Result_18_1
    );
  Mcount_vPos_cy_19_Q : MUXCY
    port map (
      CI => Mcount_vPos_cy(18),
      DI => N0,
      S => Mcount_vPos_cy_19_rt_1545,
      O => Mcount_vPos_cy(19)
    );
  Mcount_vPos_xor_19_Q : XORCY
    port map (
      CI => Mcount_vPos_cy(18),
      LI => Mcount_vPos_cy_19_rt_1545,
      O => Result_19_1
    );
  Mcount_vPos_cy_20_Q : MUXCY
    port map (
      CI => Mcount_vPos_cy(19),
      DI => N0,
      S => Mcount_vPos_cy_20_rt_1549,
      O => Mcount_vPos_cy(20)
    );
  Mcount_vPos_xor_20_Q : XORCY
    port map (
      CI => Mcount_vPos_cy(19),
      LI => Mcount_vPos_cy_20_rt_1549,
      O => Result_20_1
    );
  Mcount_vPos_cy_21_Q : MUXCY
    port map (
      CI => Mcount_vPos_cy(20),
      DI => N0,
      S => Mcount_vPos_cy_21_rt_1551,
      O => Mcount_vPos_cy(21)
    );
  Mcount_vPos_xor_21_Q : XORCY
    port map (
      CI => Mcount_vPos_cy(20),
      LI => Mcount_vPos_cy_21_rt_1551,
      O => Result_21_1
    );
  Mcount_vPos_cy_22_Q : MUXCY
    port map (
      CI => Mcount_vPos_cy(21),
      DI => N0,
      S => Mcount_vPos_cy_22_rt_1553,
      O => Mcount_vPos_cy(22)
    );
  Mcount_vPos_xor_22_Q : XORCY
    port map (
      CI => Mcount_vPos_cy(21),
      LI => Mcount_vPos_cy_22_rt_1553,
      O => Result_22_1
    );
  Mcount_vPos_cy_23_Q : MUXCY
    port map (
      CI => Mcount_vPos_cy(22),
      DI => N0,
      S => Mcount_vPos_cy_23_rt_1555,
      O => Mcount_vPos_cy(23)
    );
  Mcount_vPos_xor_23_Q : XORCY
    port map (
      CI => Mcount_vPos_cy(22),
      LI => Mcount_vPos_cy_23_rt_1555,
      O => Result_23_1
    );
  Mcount_vPos_cy_24_Q : MUXCY
    port map (
      CI => Mcount_vPos_cy(23),
      DI => N0,
      S => Mcount_vPos_cy_24_rt_1557,
      O => Mcount_vPos_cy(24)
    );
  Mcount_vPos_xor_24_Q : XORCY
    port map (
      CI => Mcount_vPos_cy(23),
      LI => Mcount_vPos_cy_24_rt_1557,
      O => Result_24_1
    );
  Mcount_vPos_cy_25_Q : MUXCY
    port map (
      CI => Mcount_vPos_cy(24),
      DI => N0,
      S => Mcount_vPos_cy_25_rt_1559,
      O => Mcount_vPos_cy(25)
    );
  Mcount_vPos_xor_25_Q : XORCY
    port map (
      CI => Mcount_vPos_cy(24),
      LI => Mcount_vPos_cy_25_rt_1559,
      O => Result_25_1
    );
  Mcount_vPos_cy_26_Q : MUXCY
    port map (
      CI => Mcount_vPos_cy(25),
      DI => N0,
      S => Mcount_vPos_cy_26_rt_1561,
      O => Mcount_vPos_cy(26)
    );
  Mcount_vPos_xor_26_Q : XORCY
    port map (
      CI => Mcount_vPos_cy(25),
      LI => Mcount_vPos_cy_26_rt_1561,
      O => Result_26_1
    );
  Mcount_vPos_cy_27_Q : MUXCY
    port map (
      CI => Mcount_vPos_cy(26),
      DI => N0,
      S => Mcount_vPos_cy_27_rt_1563,
      O => Mcount_vPos_cy(27)
    );
  Mcount_vPos_xor_27_Q : XORCY
    port map (
      CI => Mcount_vPos_cy(26),
      LI => Mcount_vPos_cy_27_rt_1563,
      O => Result_27_1
    );
  Mcount_vPos_cy_28_Q : MUXCY
    port map (
      CI => Mcount_vPos_cy(27),
      DI => N0,
      S => Mcount_vPos_cy_28_rt_1565,
      O => Mcount_vPos_cy(28)
    );
  Mcount_vPos_xor_28_Q : XORCY
    port map (
      CI => Mcount_vPos_cy(27),
      LI => Mcount_vPos_cy_28_rt_1565,
      O => Result_28_1
    );
  Mcount_vPos_cy_29_Q : MUXCY
    port map (
      CI => Mcount_vPos_cy(28),
      DI => N0,
      S => Mcount_vPos_cy_29_rt_1567,
      O => Mcount_vPos_cy(29)
    );
  Mcount_vPos_xor_29_Q : XORCY
    port map (
      CI => Mcount_vPos_cy(28),
      LI => Mcount_vPos_cy_29_rt_1567,
      O => Result_29_1
    );
  Mcount_vPos_cy_30_Q : MUXCY
    port map (
      CI => Mcount_vPos_cy(29),
      DI => N0,
      S => Mcount_vPos_cy_30_rt_1571,
      O => Mcount_vPos_cy(30)
    );
  Mcount_vPos_xor_30_Q : XORCY
    port map (
      CI => Mcount_vPos_cy(29),
      LI => Mcount_vPos_cy_30_rt_1571,
      O => Result_30_1
    );
  Mcount_vPos_xor_31_Q : XORCY
    port map (
      CI => Mcount_vPos_cy(30),
      LI => Mcount_vPos_xor_31_rt_1619,
      O => Result_31_1
    );
  hPos_cmp_eq0000_wg_lut_0_Q : LUT4
    generic map(
      INIT => X"0008"
    )
    port map (
      I0 => hPos(8),
      I1 => hPos(9),
      I2 => hPos(7),
      I3 => hPos(10),
      O => hPos_cmp_eq0000_wg_lut(0)
    );
  hPos_cmp_eq0000_wg_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => hPos_cmp_eq0000_wg_lut(0),
      O => hPos_cmp_eq0000_wg_cy(0)
    );
  hPos_cmp_eq0000_wg_lut_1_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(11),
      I1 => hPos(12),
      I2 => hPos(6),
      I3 => hPos(13),
      O => hPos_cmp_eq0000_wg_lut(1)
    );
  hPos_cmp_eq0000_wg_cy_1_Q : MUXCY
    port map (
      CI => hPos_cmp_eq0000_wg_cy(0),
      DI => N0,
      S => hPos_cmp_eq0000_wg_lut(1),
      O => hPos_cmp_eq0000_wg_cy(1)
    );
  hPos_cmp_eq0000_wg_lut_2_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => hPos(14),
      I1 => hPos(15),
      I2 => hPos(5),
      I3 => hPos(16),
      O => hPos_cmp_eq0000_wg_lut(2)
    );
  hPos_cmp_eq0000_wg_cy_2_Q : MUXCY
    port map (
      CI => hPos_cmp_eq0000_wg_cy(1),
      DI => N0,
      S => hPos_cmp_eq0000_wg_lut(2),
      O => hPos_cmp_eq0000_wg_cy(2)
    );
  hPos_cmp_eq0000_wg_lut_3_Q : LUT4
    generic map(
      INIT => X"0010"
    )
    port map (
      I0 => hPos(17),
      I1 => hPos(18),
      I2 => hPos(4),
      I3 => hPos(19),
      O => hPos_cmp_eq0000_wg_lut(3)
    );
  hPos_cmp_eq0000_wg_cy_3_Q : MUXCY
    port map (
      CI => hPos_cmp_eq0000_wg_cy(2),
      DI => N0,
      S => hPos_cmp_eq0000_wg_lut(3),
      O => hPos_cmp_eq0000_wg_cy(3)
    );
  hPos_cmp_eq0000_wg_lut_4_Q : LUT4
    generic map(
      INIT => X"0010"
    )
    port map (
      I0 => hPos(20),
      I1 => hPos(21),
      I2 => hPos(3),
      I3 => hPos(22),
      O => hPos_cmp_eq0000_wg_lut(4)
    );
  hPos_cmp_eq0000_wg_cy_4_Q : MUXCY
    port map (
      CI => hPos_cmp_eq0000_wg_cy(3),
      DI => N0,
      S => hPos_cmp_eq0000_wg_lut(4),
      O => hPos_cmp_eq0000_wg_cy(4)
    );
  hPos_cmp_eq0000_wg_lut_5_Q : LUT4
    generic map(
      INIT => X"0010"
    )
    port map (
      I0 => hPos(23),
      I1 => hPos(24),
      I2 => hPos(2),
      I3 => hPos(25),
      O => hPos_cmp_eq0000_wg_lut(5)
    );
  hPos_cmp_eq0000_wg_cy_5_Q : MUXCY
    port map (
      CI => hPos_cmp_eq0000_wg_cy(4),
      DI => N0,
      S => hPos_cmp_eq0000_wg_lut(5),
      O => hPos_cmp_eq0000_wg_cy(5)
    );
  hPos_cmp_eq0000_wg_lut_6_Q : LUT4
    generic map(
      INIT => X"0010"
    )
    port map (
      I0 => hPos(26),
      I1 => hPos(27),
      I2 => hPos(1),
      I3 => hPos(28),
      O => hPos_cmp_eq0000_wg_lut(6)
    );
  hPos_cmp_eq0000_wg_cy_6_Q : MUXCY
    port map (
      CI => hPos_cmp_eq0000_wg_cy(5),
      DI => N0,
      S => hPos_cmp_eq0000_wg_lut(6),
      O => hPos_cmp_eq0000_wg_cy(6)
    );
  hPos_cmp_eq0000_wg_lut_7_Q : LUT4
    generic map(
      INIT => X"0010"
    )
    port map (
      I0 => hPos(29),
      I1 => hPos(30),
      I2 => hPos(0),
      I3 => hPos(31),
      O => hPos_cmp_eq0000_wg_lut(7)
    );
  hPos_cmp_eq0000_wg_cy_7_Q : MUXCY
    port map (
      CI => hPos_cmp_eq0000_wg_cy(6),
      DI => N0,
      S => hPos_cmp_eq0000_wg_lut(7),
      O => hPos_cmp_eq0000
    );
  vPos_cmp_eq0000_wg_lut_0_Q : LUT4
    generic map(
      INIT => X"0010"
    )
    port map (
      I0 => vPos(8),
      I1 => vPos(7),
      I2 => vPos(9),
      I3 => vPos(10),
      O => vPos_cmp_eq0000_wg_lut(0)
    );
  vPos_cmp_eq0000_wg_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => vPos_cmp_eq0000_wg_lut(0),
      O => vPos_cmp_eq0000_wg_cy(0)
    );
  vPos_cmp_eq0000_wg_lut_1_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => vPos(11),
      I1 => vPos(12),
      I2 => vPos(6),
      I3 => vPos(13),
      O => vPos_cmp_eq0000_wg_lut(1)
    );
  vPos_cmp_eq0000_wg_cy_1_Q : MUXCY
    port map (
      CI => vPos_cmp_eq0000_wg_cy(0),
      DI => N0,
      S => vPos_cmp_eq0000_wg_lut(1),
      O => vPos_cmp_eq0000_wg_cy(1)
    );
  vPos_cmp_eq0000_wg_lut_2_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => vPos(14),
      I1 => vPos(15),
      I2 => vPos(5),
      I3 => vPos(16),
      O => vPos_cmp_eq0000_wg_lut(2)
    );
  vPos_cmp_eq0000_wg_cy_2_Q : MUXCY
    port map (
      CI => vPos_cmp_eq0000_wg_cy(1),
      DI => N0,
      S => vPos_cmp_eq0000_wg_lut(2),
      O => vPos_cmp_eq0000_wg_cy(2)
    );
  vPos_cmp_eq0000_wg_lut_3_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => vPos(17),
      I1 => vPos(18),
      I2 => vPos(4),
      I3 => vPos(19),
      O => vPos_cmp_eq0000_wg_lut(3)
    );
  vPos_cmp_eq0000_wg_cy_3_Q : MUXCY
    port map (
      CI => vPos_cmp_eq0000_wg_cy(2),
      DI => N0,
      S => vPos_cmp_eq0000_wg_lut(3),
      O => vPos_cmp_eq0000_wg_cy(3)
    );
  vPos_cmp_eq0000_wg_lut_4_Q : LUT4
    generic map(
      INIT => X"0010"
    )
    port map (
      I0 => vPos(20),
      I1 => vPos(21),
      I2 => vPos(3),
      I3 => vPos(22),
      O => vPos_cmp_eq0000_wg_lut(4)
    );
  vPos_cmp_eq0000_wg_cy_4_Q : MUXCY
    port map (
      CI => vPos_cmp_eq0000_wg_cy(3),
      DI => N0,
      S => vPos_cmp_eq0000_wg_lut(4),
      O => vPos_cmp_eq0000_wg_cy(4)
    );
  vPos_cmp_eq0000_wg_lut_5_Q : LUT4
    generic map(
      INIT => X"0010"
    )
    port map (
      I0 => vPos(23),
      I1 => vPos(24),
      I2 => vPos(2),
      I3 => vPos(25),
      O => vPos_cmp_eq0000_wg_lut(5)
    );
  vPos_cmp_eq0000_wg_cy_5_Q : MUXCY
    port map (
      CI => vPos_cmp_eq0000_wg_cy(4),
      DI => N0,
      S => vPos_cmp_eq0000_wg_lut(5),
      O => vPos_cmp_eq0000_wg_cy(5)
    );
  vPos_cmp_eq0000_wg_lut_6_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => vPos(26),
      I1 => vPos(27),
      I2 => vPos(1),
      I3 => vPos(28),
      O => vPos_cmp_eq0000_wg_lut(6)
    );
  vPos_cmp_eq0000_wg_cy_6_Q : MUXCY
    port map (
      CI => vPos_cmp_eq0000_wg_cy(5),
      DI => N0,
      S => vPos_cmp_eq0000_wg_lut(6),
      O => vPos_cmp_eq0000_wg_cy(6)
    );
  vPos_cmp_eq0000_wg_lut_7_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => vPos(29),
      I1 => vPos(30),
      I2 => vPos(0),
      I3 => vPos(31),
      O => vPos_cmp_eq0000_wg_lut(7)
    );
  vPos_cmp_eq0000_wg_cy_7_Q : MUXCY
    port map (
      CI => vPos_cmp_eq0000_wg_cy(6),
      DI => N0,
      S => vPos_cmp_eq0000_wg_lut(7),
      O => vPos_cmp_eq0000
    );
  videoOn_and00001 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => videoOn_cmp_le0000,
      I1 => videoOn_cmp_le0001,
      O => videoOn_and0000
    );
  Mcount_vPos_eqn_91 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => vPos_cmp_eq0000,
      I1 => Result_9_1,
      O => Mcount_vPos_eqn_9
    );
  Mcount_vPos_eqn_81 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => vPos_cmp_eq0000,
      I1 => Result_8_1,
      O => Mcount_vPos_eqn_8
    );
  Mcount_vPos_eqn_71 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => vPos_cmp_eq0000,
      I1 => Result_7_1,
      O => Mcount_vPos_eqn_7
    );
  Mcount_vPos_eqn_61 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => vPos_cmp_eq0000,
      I1 => Result_6_1,
      O => Mcount_vPos_eqn_6
    );
  Mcount_vPos_eqn_51 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => vPos_cmp_eq0000,
      I1 => Result_5_1,
      O => Mcount_vPos_eqn_5
    );
  Mcount_vPos_eqn_41 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => vPos_cmp_eq0000,
      I1 => Result_4_1,
      O => Mcount_vPos_eqn_4
    );
  Mcount_vPos_eqn_32 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => vPos_cmp_eq0000,
      I1 => Result_3_1,
      O => Mcount_vPos_eqn_3
    );
  Mcount_vPos_eqn_210 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => vPos_cmp_eq0000,
      I1 => Result_2_1,
      O => Mcount_vPos_eqn_2
    );
  Mcount_vPos_eqn_110 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => vPos_cmp_eq0000,
      I1 => Result_1_1,
      O => Mcount_vPos_eqn_1
    );
  Mcount_vPos_eqn_01 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => vPos_cmp_eq0000,
      I1 => Result_0_1,
      O => Mcount_vPos_eqn_0
    );
  Mcount_hPos_eqn_91 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => hPos_cmp_eq0000,
      I1 => Result(9),
      O => Mcount_hPos_eqn_9
    );
  Mcount_hPos_eqn_81 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => hPos_cmp_eq0000,
      I1 => Result(8),
      O => Mcount_hPos_eqn_8
    );
  Mcount_hPos_eqn_71 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => hPos_cmp_eq0000,
      I1 => Result(7),
      O => Mcount_hPos_eqn_7
    );
  Mcount_hPos_eqn_61 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => hPos_cmp_eq0000,
      I1 => Result(6),
      O => Mcount_hPos_eqn_6
    );
  Mcount_hPos_eqn_51 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => hPos_cmp_eq0000,
      I1 => Result(5),
      O => Mcount_hPos_eqn_5
    );
  Mcount_hPos_eqn_41 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => hPos_cmp_eq0000,
      I1 => Result(4),
      O => Mcount_hPos_eqn_4
    );
  Mcount_hPos_eqn_32 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => hPos_cmp_eq0000,
      I1 => Result(3),
      O => Mcount_hPos_eqn_3
    );
  Mcount_hPos_eqn_210 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => hPos_cmp_eq0000,
      I1 => Result(2),
      O => Mcount_hPos_eqn_2
    );
  Mcount_hPos_eqn_110 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => hPos_cmp_eq0000,
      I1 => Result(1),
      O => Mcount_hPos_eqn_1
    );
  Mcount_hPos_eqn_01 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => hPos_cmp_eq0000,
      I1 => Result(0),
      O => Mcount_hPos_eqn_0
    );
  Mcount_vPos_eqn_101 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => vPos_cmp_eq0000,
      I1 => Result_10_1,
      O => Mcount_vPos_eqn_10
    );
  Mcount_hPos_eqn_101 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => hPos_cmp_eq0000,
      I1 => Result(10),
      O => Mcount_hPos_eqn_10
    );
  Mcount_vPos_eqn_111 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => vPos_cmp_eq0000,
      I1 => Result_11_1,
      O => Mcount_vPos_eqn_11
    );
  Mcount_hPos_eqn_111 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => hPos_cmp_eq0000,
      I1 => Result(11),
      O => Mcount_hPos_eqn_11
    );
  Mcount_vPos_eqn_121 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => vPos_cmp_eq0000,
      I1 => Result_12_1,
      O => Mcount_vPos_eqn_12
    );
  Mcount_hPos_eqn_121 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => hPos_cmp_eq0000,
      I1 => Result(12),
      O => Mcount_hPos_eqn_12
    );
  Mcount_vPos_eqn_131 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => vPos_cmp_eq0000,
      I1 => Result_13_1,
      O => Mcount_vPos_eqn_13
    );
  Mcount_hPos_eqn_131 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => hPos_cmp_eq0000,
      I1 => Result(13),
      O => Mcount_hPos_eqn_13
    );
  Mcount_vPos_eqn_141 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => vPos_cmp_eq0000,
      I1 => Result_14_1,
      O => Mcount_vPos_eqn_14
    );
  Mcount_hPos_eqn_141 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => hPos_cmp_eq0000,
      I1 => Result(14),
      O => Mcount_hPos_eqn_14
    );
  Mcount_vPos_eqn_151 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => vPos_cmp_eq0000,
      I1 => Result_15_1,
      O => Mcount_vPos_eqn_15
    );
  Mcount_hPos_eqn_151 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => hPos_cmp_eq0000,
      I1 => Result(15),
      O => Mcount_hPos_eqn_15
    );
  Mcount_vPos_eqn_161 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => vPos_cmp_eq0000,
      I1 => Result_16_1,
      O => Mcount_vPos_eqn_16
    );
  Mcount_hPos_eqn_161 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => hPos_cmp_eq0000,
      I1 => Result(16),
      O => Mcount_hPos_eqn_16
    );
  Mcount_vPos_eqn_171 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => vPos_cmp_eq0000,
      I1 => Result_17_1,
      O => Mcount_vPos_eqn_17
    );
  Mcount_hPos_eqn_171 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => hPos_cmp_eq0000,
      I1 => Result(17),
      O => Mcount_hPos_eqn_17
    );
  Mcount_vPos_eqn_181 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => vPos_cmp_eq0000,
      I1 => Result_18_1,
      O => Mcount_vPos_eqn_18
    );
  Mcount_hPos_eqn_181 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => hPos_cmp_eq0000,
      I1 => Result(18),
      O => Mcount_hPos_eqn_18
    );
  Mcount_vPos_eqn_191 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => vPos_cmp_eq0000,
      I1 => Result_19_1,
      O => Mcount_vPos_eqn_19
    );
  Mcount_hPos_eqn_191 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => hPos_cmp_eq0000,
      I1 => Result(19),
      O => Mcount_hPos_eqn_19
    );
  Mcount_vPos_eqn_201 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => vPos_cmp_eq0000,
      I1 => Result_20_1,
      O => Mcount_vPos_eqn_20
    );
  Mcount_hPos_eqn_201 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => hPos_cmp_eq0000,
      I1 => Result(20),
      O => Mcount_hPos_eqn_20
    );
  Mcount_vPos_eqn_211 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => vPos_cmp_eq0000,
      I1 => Result_21_1,
      O => Mcount_vPos_eqn_21
    );
  Mcount_hPos_eqn_211 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => hPos_cmp_eq0000,
      I1 => Result(21),
      O => Mcount_hPos_eqn_21
    );
  Mcount_vPos_eqn_221 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => vPos_cmp_eq0000,
      I1 => Result_22_1,
      O => Mcount_vPos_eqn_22
    );
  Mcount_hPos_eqn_221 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => hPos_cmp_eq0000,
      I1 => Result(22),
      O => Mcount_hPos_eqn_22
    );
  Mcount_vPos_eqn_231 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => vPos_cmp_eq0000,
      I1 => Result_23_1,
      O => Mcount_vPos_eqn_23
    );
  Mcount_hPos_eqn_231 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => hPos_cmp_eq0000,
      I1 => Result(23),
      O => Mcount_hPos_eqn_23
    );
  Mcount_vPos_eqn_241 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => vPos_cmp_eq0000,
      I1 => Result_24_1,
      O => Mcount_vPos_eqn_24
    );
  Mcount_hPos_eqn_241 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => hPos_cmp_eq0000,
      I1 => Result(24),
      O => Mcount_hPos_eqn_24
    );
  Mcount_vPos_eqn_251 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => vPos_cmp_eq0000,
      I1 => Result_25_1,
      O => Mcount_vPos_eqn_25
    );
  Mcount_hPos_eqn_251 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => hPos_cmp_eq0000,
      I1 => Result(25),
      O => Mcount_hPos_eqn_25
    );
  Mcount_vPos_eqn_261 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => vPos_cmp_eq0000,
      I1 => Result_26_1,
      O => Mcount_vPos_eqn_26
    );
  Mcount_hPos_eqn_261 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => hPos_cmp_eq0000,
      I1 => Result(26),
      O => Mcount_hPos_eqn_26
    );
  Mcount_vPos_eqn_271 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => vPos_cmp_eq0000,
      I1 => Result_27_1,
      O => Mcount_vPos_eqn_27
    );
  Mcount_hPos_eqn_271 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => hPos_cmp_eq0000,
      I1 => Result(27),
      O => Mcount_hPos_eqn_27
    );
  Mcount_vPos_eqn_281 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => vPos_cmp_eq0000,
      I1 => Result_28_1,
      O => Mcount_vPos_eqn_28
    );
  Mcount_hPos_eqn_281 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => hPos_cmp_eq0000,
      I1 => Result(28),
      O => Mcount_hPos_eqn_28
    );
  Mcount_vPos_eqn_291 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => vPos_cmp_eq0000,
      I1 => Result_29_1,
      O => Mcount_vPos_eqn_29
    );
  Mcount_hPos_eqn_291 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => hPos_cmp_eq0000,
      I1 => Result(29),
      O => Mcount_hPos_eqn_29
    );
  Mcount_vPos_eqn_301 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => vPos_cmp_eq0000,
      I1 => Result_30_1,
      O => Mcount_vPos_eqn_30
    );
  Mcount_hPos_eqn_301 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => hPos_cmp_eq0000,
      I1 => Result(30),
      O => Mcount_hPos_eqn_30
    );
  Mcount_vPos_eqn_311 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => vPos_cmp_eq0000,
      I1 => Result_31_1,
      O => Mcount_vPos_eqn_31
    );
  Mcount_hPos_eqn_311 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => hPos_cmp_eq0000,
      I1 => Result(31),
      O => Mcount_hPos_eqn_31
    );
  RGB_mux0007_0_312 : LUT4
    generic map(
      INIT => X"7FFF"
    )
    port map (
      I0 => RGB_cmp_le0027,
      I1 => RGB_cmp_ge0024,
      I2 => RGB_cmp_le0026,
      I3 => RGB_cmp_ge0023,
      O => RGB_mux0007_0_312_1734
    );
  RGB_mux0007_0_325 : LUT4
    generic map(
      INIT => X"7FFF"
    )
    port map (
      I0 => RGB_cmp_le0027,
      I1 => RGB_cmp_ge0024,
      I2 => RGB_cmp_le0028,
      I3 => RGB_cmp_ge0021,
      O => RGB_mux0007_0_325_1735
    );
  RGB_mux0007_0_54 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => RGB_cmp_ge0019,
      I1 => RGB_cmp_le0022,
      I2 => RGB_cmp_le0020,
      I3 => RGB_cmp_ge0017,
      O => RGB_mux0007_0_54_1739
    );
  RGB_mux0007_0_515 : LUT4
    generic map(
      INIT => X"ECA0"
    )
    port map (
      I0 => RGB_cmp_ge0020,
      I1 => RGB_cmp_ge0018,
      I2 => RGB_cmp_le0023,
      I3 => RGB_cmp_le0021,
      O => RGB_mux0007_0_515_1736
    );
  RGB_mux0007_0_525 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => RGB_cmp_le0001,
      I1 => RGB_cmp_ge0001,
      O => RGB_mux0007_0_525_1738
    );
  RGB_mux0007_0_541 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => RGB_cmp_ge0014,
      I1 => RGB_cmp_ge0015,
      I2 => RGB_cmp_le0017,
      I3 => RGB_cmp_le0018,
      O => RGB_mux0007_0_541_1740
    );
  RGB_mux0007_0_558 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => videoOn_1976,
      I1 => texto_0_IBUF_1922,
      I2 => texto_1_IBUF_1923,
      O => RGB_mux0007_0_558_1741
    );
  RGB_mux0007_0_561 : LUT4
    generic map(
      INIT => X"A8A0"
    )
    port map (
      I0 => RGB_mux0007_0_558_1741,
      I1 => RGB_mux0007_0_525_1738,
      I2 => RGB_mux0007_0_541_1740,
      I3 => RGB_mux0007_0_517_1737,
      O => N12
    );
  RGB_mux0007_7_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => RGB_cmp_ge0026,
      I1 => RGB_cmp_ge0025,
      O => RGB_mux0007_7_1_1742
    );
  RGB_not00017 : LUT3
    generic map(
      INIT => X"5D"
    )
    port map (
      I0 => videoOn_1976,
      I1 => texto_1_IBUF_1923,
      I2 => texto_0_IBUF_1922,
      O => RGB_not00017_1746
    );
  RGB_not000119 : LUT4
    generic map(
      INIT => X"FF1F"
    )
    port map (
      I0 => color_1_IBUF_1832,
      I1 => color_0_IBUF_1831,
      I2 => color_2_IBUF_1833,
      I3 => texto_0_IBUF_1922,
      O => RGB_not000119_1745
    );
  RGB_mux0007_1_SW0 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => color_2_IBUF_1833,
      I1 => color_1_IBUF_1832,
      I2 => color_0_IBUF_1831,
      O => N01
    );
  RGB_or00024 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => RGB_cmp_ge0006,
      I1 => RGB_cmp_le0007,
      I2 => RGB_cmp_ge0012,
      I3 => RGB_cmp_le0012,
      O => RGB_or00024_1751
    );
  RGB_or000229 : LUT4
    generic map(
      INIT => X"ECA0"
    )
    port map (
      I0 => RGB_cmp_ge0009,
      I1 => RGB_cmp_le0006,
      I2 => RGB_cmp_le0009,
      I3 => RGB_cmp_ge0005,
      O => RGB_or000229_1749
    );
  RGB_or000234 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => RGB_cmp_ge0004,
      I1 => RGB_cmp_le0005,
      I2 => RGB_cmp_ge0008,
      I3 => RGB_cmp_le0008,
      O => RGB_or000234_1750
    );
  RGB_or000266 : LUT4
    generic map(
      INIT => X"CCC8"
    )
    port map (
      I0 => RGB_or000229_1749,
      I1 => RGB_cmp_le0001,
      I2 => RGB_or000234_1750,
      I3 => RGB_or000250_1752,
      O => RGB_or000266_1753
    );
  RST_IBUF : IBUF
    port map (
      I => RST,
      O => RST_IBUF_1757
    );
  color_2_IBUF : IBUF
    port map (
      I => color(2),
      O => color_2_IBUF_1833
    );
  color_1_IBUF : IBUF
    port map (
      I => color(1),
      O => color_1_IBUF_1832
    );
  color_0_IBUF : IBUF
    port map (
      I => color(0),
      O => color_0_IBUF_1831
    );
  texto_1_IBUF : IBUF
    port map (
      I => texto(1),
      O => texto_1_IBUF_1923
    );
  texto_0_IBUF : IBUF
    port map (
      I => texto(0),
      O => texto_0_IBUF_1922
    );
  VSYNC_OBUF : OBUF
    port map (
      I => VSYNC_OBUF_1823,
      O => VSYNC
    );
  HSYNC_OBUF : OBUF
    port map (
      I => HSYNC_OBUF_3,
      O => HSYNC
    );
  RGB_7_OBUF : OBUF
    port map (
      I => RGB_7_1673,
      O => RGB(7)
    );
  RGB_6_OBUF : OBUF
    port map (
      I => RGB_1_1665,
      O => RGB(6)
    );
  RGB_5_OBUF : OBUF
    port map (
      I => RGB_2_1667,
      O => RGB(5)
    );
  RGB_4_OBUF : OBUF
    port map (
      I => RGB_4_1671,
      O => RGB(4)
    );
  RGB_3_OBUF : OBUF
    port map (
      I => RGB_3_1669,
      O => RGB(3)
    );
  RGB_2_OBUF : OBUF
    port map (
      I => RGB_2_1667,
      O => RGB(2)
    );
  RGB_1_OBUF : OBUF
    port map (
      I => RGB_1_1665,
      O => RGB(1)
    );
  RGB_0_OBUF : OBUF
    port map (
      I => RGB_0_1663,
      O => RGB(0)
    );
  clk25 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_1,
      D => N1,
      R => clk251,
      Q => clk251
    );
  Mcompar_videoOn_cmp_le0000_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos(9),
      O => Mcompar_videoOn_cmp_le0000_cy_1_rt_951
    );
  Mcompar_videoOn_cmp_le0000_cy_1_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos_3_2_1886,
      O => Mcompar_videoOn_cmp_le0000_cy_1_1_rt_942
    );
  Mcompar_videoOn_cmp_le0000_cy_3_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos_7_2_1898,
      O => Mcompar_videoOn_cmp_le0000_cy_3_2_rt_1013
    );
  Mcompar_videoOn_cmp_le0000_cy_1_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos_4_2_1889,
      O => Mcompar_videoOn_cmp_le0000_cy_1_3_rt_946
    );
  Mcompar_videoOn_cmp_le0000_cy_1_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos_3_2_1886,
      O => Mcompar_videoOn_cmp_le0000_cy_1_4_rt_947
    );
  Mcompar_videoOn_cmp_le0000_cy_3_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos_8_1_1900,
      O => Mcompar_videoOn_cmp_le0000_cy_3_4_rt_1014
    );
  Mcompar_videoOn_cmp_le0000_cy_3_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos_8_2_1901,
      O => Mcompar_videoOn_cmp_le0000_cy_3_5_rt_1015
    );
  Mcompar_videoOn_cmp_le0000_cy_1_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos_3_2_1886,
      O => Mcompar_videoOn_cmp_le0000_cy_1_6_rt_948
    );
  Mcompar_videoOn_cmp_le0000_cy_3_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos_5_2_1892,
      O => Mcompar_videoOn_cmp_le0000_cy_3_6_rt_1016
    );
  Mcompar_videoOn_cmp_le0000_cy_1_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos_4_1_1888,
      O => Mcompar_videoOn_cmp_le0000_cy_1_8_rt_949
    );
  Mcompar_videoOn_cmp_le0000_cy_3_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos_9_1_1903,
      O => Mcompar_videoOn_cmp_le0000_cy_3_8_rt_1017
    );
  Mcompar_videoOn_cmp_le0000_cy_1_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos_3_1_1885,
      O => Mcompar_videoOn_cmp_le0000_cy_1_9_rt_950
    );
  Mcompar_videoOn_cmp_le0000_cy_3_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos_6_1_1894,
      O => Mcompar_videoOn_cmp_le0000_cy_3_9_rt_1018
    );
  Mcompar_videoOn_cmp_le0000_cy_5_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos(9),
      O => Mcompar_videoOn_cmp_le0000_cy_5_9_rt_1074
    );
  Mcompar_videoOn_cmp_le0000_cy_3_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos(9),
      O => Mcompar_videoOn_cmp_le0000_cy_3_10_rt_1002
    );
  Mcompar_videoOn_cmp_le0000_cy_5_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos(9),
      O => Mcompar_videoOn_cmp_le0000_cy_5_11_rt_1070
    );
  Mcompar_videoOn_cmp_le0000_cy_1_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos(1),
      O => Mcompar_videoOn_cmp_le0000_cy_1_12_rt_936
    );
  Mcompar_videoOn_cmp_le0000_cy_3_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos(3),
      O => Mcompar_videoOn_cmp_le0000_cy_3_12_rt_1003
    );
  Mcompar_videoOn_cmp_le0000_cy_5_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos(6),
      O => Mcompar_videoOn_cmp_le0000_cy_5_12_rt_1071
    );
  Mcompar_videoOn_cmp_le0000_cy_7_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos(8),
      O => Mcompar_videoOn_cmp_le0000_cy_7_12_rt_1125
    );
  Mcompar_videoOn_cmp_le0000_cy_1_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos(1),
      O => Mcompar_videoOn_cmp_le0000_cy_1_13_rt_937
    );
  Mcompar_videoOn_cmp_le0000_cy_3_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos(3),
      O => Mcompar_videoOn_cmp_le0000_cy_3_13_rt_1004
    );
  Mcompar_videoOn_cmp_le0000_cy_1_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos(1),
      O => Mcompar_videoOn_cmp_le0000_cy_1_14_rt_938
    );
  Mcompar_videoOn_cmp_le0000_cy_3_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos(3),
      O => Mcompar_videoOn_cmp_le0000_cy_3_14_rt_1005
    );
  Mcompar_videoOn_cmp_le0000_cy_5_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos(5),
      O => Mcompar_videoOn_cmp_le0000_cy_5_14_rt_1072
    );
  Mcompar_videoOn_cmp_le0000_cy_7_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos(7),
      O => Mcompar_videoOn_cmp_le0000_cy_7_14_rt_1126
    );
  Mcompar_videoOn_cmp_le0000_cy_1_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos(1),
      O => Mcompar_videoOn_cmp_le0000_cy_1_15_rt_939
    );
  Mcompar_videoOn_cmp_le0000_cy_1_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos(2),
      O => Mcompar_videoOn_cmp_le0000_cy_1_16_rt_940
    );
  Mcompar_videoOn_cmp_le0000_cy_3_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos(4),
      O => Mcompar_videoOn_cmp_le0000_cy_3_16_rt_1006
    );
  Mcompar_videoOn_cmp_le0000_cy_5_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos(6),
      O => Mcompar_videoOn_cmp_le0000_cy_5_16_rt_1073
    );
  Mcompar_videoOn_cmp_le0000_cy_1_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos(2),
      O => Mcompar_videoOn_cmp_le0000_cy_1_17_rt_941
    );
  Mcompar_videoOn_cmp_le0000_cy_3_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos(5),
      O => Mcompar_videoOn_cmp_le0000_cy_3_17_rt_1007
    );
  Mcompar_videoOn_cmp_le0000_cy_3_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos_8_2_1901,
      O => Mcompar_videoOn_cmp_le0000_cy_3_18_rt_1008
    );
  Mcompar_videoOn_cmp_le0000_cy_3_19_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos_4_2_1889,
      O => Mcompar_videoOn_cmp_le0000_cy_3_19_rt_1009
    );
  Mcompar_videoOn_cmp_le0000_cy_1_20_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos(4),
      O => Mcompar_videoOn_cmp_le0000_cy_1_20_rt_943
    );
  Mcompar_videoOn_cmp_le0000_cy_3_20_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos(7),
      O => Mcompar_videoOn_cmp_le0000_cy_3_20_rt_1010
    );
  Mcompar_videoOn_cmp_le0000_cy_1_21_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos(3),
      O => Mcompar_videoOn_cmp_le0000_cy_1_21_rt_944
    );
  Mcompar_videoOn_cmp_le0000_cy_4_21_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos(9),
      O => Mcompar_videoOn_cmp_le0000_cy_4_21_rt_1044
    );
  Mcompar_videoOn_cmp_le0000_cy_1_22_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos(7),
      O => Mcompar_videoOn_cmp_le0000_cy_1_22_rt_945
    );
  Mcompar_videoOn_cmp_le0000_cy_3_22_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos(9),
      O => Mcompar_videoOn_cmp_le0000_cy_3_22_rt_1011
    );
  Mcompar_videoOn_cmp_le0000_cy_3_23_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos(9),
      O => Mcompar_videoOn_cmp_le0000_cy_3_23_rt_1012
    );
  Mcompar_VSYNC_cmp_le0000_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vPos(3),
      O => Mcompar_VSYNC_cmp_le0000_cy_1_rt_658
    );
  Mcompar_VSYNC_cmp_le0000_cy_1_0_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vPos(3),
      O => Mcompar_VSYNC_cmp_le0000_cy_1_0_rt_653
    );
  Mcompar_VSYNC_cmp_le0000_cy_3_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vPos(4),
      O => Mcompar_VSYNC_cmp_le0000_cy_3_2_rt_681
    );
  Mcompar_VSYNC_cmp_le0000_cy_1_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vPos(2),
      O => Mcompar_VSYNC_cmp_le0000_cy_1_3_rt_654
    );
  Mcompar_VSYNC_cmp_le0000_cy_4_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vPos_8_1_1958,
      O => Mcompar_VSYNC_cmp_le0000_cy_4_3_rt_695
    );
  Mcompar_VSYNC_cmp_le0000_cy_1_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vPos(1),
      O => Mcompar_VSYNC_cmp_le0000_cy_1_5_rt_655
    );
  Mcompar_VSYNC_cmp_le0000_cy_4_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vPos(7),
      O => Mcompar_VSYNC_cmp_le0000_cy_4_5_rt_696
    );
  Mcompar_VSYNC_cmp_le0000_cy_1_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vPos(3),
      O => Mcompar_VSYNC_cmp_le0000_cy_1_8_rt_656
    );
  Mcompar_VSYNC_cmp_le0000_cy_3_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vPos(8),
      O => Mcompar_VSYNC_cmp_le0000_cy_3_8_rt_682
    );
  Mcompar_VSYNC_cmp_le0000_cy_1_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vPos(2),
      O => Mcompar_VSYNC_cmp_le0000_cy_1_9_rt_657
    );
  Mcompar_VSYNC_cmp_le0000_cy_3_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vPos(4),
      O => Mcompar_VSYNC_cmp_le0000_cy_3_9_rt_683
    );
  Mcompar_VSYNC_cmp_le0000_cy_5_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vPos(6),
      O => Mcompar_VSYNC_cmp_le0000_cy_5_9_rt_708
    );
  Mcompar_VSYNC_cmp_le0000_cy_7_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vPos(8),
      O => Mcompar_VSYNC_cmp_le0000_cy_7_9_rt_731
    );
  Mcompar_RGB_cmp_ge0000_cy_0_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos_0_1_1835,
      O => Mcompar_RGB_cmp_ge0000_cy_0_rt_36
    );
  Mcompar_RGB_cmp_ge0000_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos_2_1_1879,
      O => Mcompar_RGB_cmp_ge0000_cy_2_rt_115
    );
  Mcompar_RGB_cmp_ge0000_cy_0_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos_0_2_1836,
      O => Mcompar_RGB_cmp_ge0000_cy_0_1_rt_30
    );
  Mcompar_RGB_cmp_ge0000_cy_2_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos_3_2_1886,
      O => Mcompar_RGB_cmp_ge0000_cy_2_1_rt_107
    );
  Mcompar_RGB_cmp_ge0000_cy_0_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos_0_2_1836,
      O => Mcompar_RGB_cmp_ge0000_cy_0_2_rt_31
    );
  Mcompar_RGB_cmp_ge0000_cy_2_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos_2_2_1880,
      O => Mcompar_RGB_cmp_ge0000_cy_2_2_rt_108
    );
  Mcompar_RGB_cmp_ge0000_cy_4_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos_5_2_1892,
      O => Mcompar_RGB_cmp_ge0000_cy_4_2_rt_163
    );
  Mcompar_RGB_cmp_ge0000_cy_6_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos_7_2_1898,
      O => Mcompar_RGB_cmp_ge0000_cy_6_2_rt_212
    );
  Mcompar_RGB_cmp_ge0000_cy_2_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos_4_1_1888,
      O => Mcompar_RGB_cmp_ge0000_cy_2_3_rt_109
    );
  Mcompar_RGB_cmp_ge0000_cy_0_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos_0_2_1836,
      O => Mcompar_RGB_cmp_ge0000_cy_0_4_rt_32
    );
  Mcompar_RGB_cmp_ge0000_cy_2_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos_3_2_1886,
      O => Mcompar_RGB_cmp_ge0000_cy_2_4_rt_110
    );
  Mcompar_RGB_cmp_ge0000_cy_4_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos_8_2_1901,
      O => Mcompar_RGB_cmp_ge0000_cy_4_4_rt_164
    );
  Mcompar_RGB_cmp_ge0000_cy_4_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos_8_2_1901,
      O => Mcompar_RGB_cmp_ge0000_cy_4_5_rt_165
    );
  Mcompar_RGB_cmp_ge0000_cy_0_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos(0),
      O => Mcompar_RGB_cmp_ge0000_cy_0_6_rt_33
    );
  Mcompar_RGB_cmp_ge0000_cy_2_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos(2),
      O => Mcompar_RGB_cmp_ge0000_cy_2_6_rt_111
    );
  Mcompar_RGB_cmp_ge0000_cy_4_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos(6),
      O => Mcompar_RGB_cmp_ge0000_cy_4_6_rt_166
    );
  Mcompar_RGB_cmp_ge0000_cy_6_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos(8),
      O => Mcompar_RGB_cmp_ge0000_cy_6_6_rt_213
    );
  Mcompar_RGB_cmp_ge0000_cy_2_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos_4_1_1888,
      O => Mcompar_RGB_cmp_ge0000_cy_2_7_rt_112
    );
  Mcompar_RGB_cmp_ge0000_cy_4_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos(9),
      O => Mcompar_RGB_cmp_ge0000_cy_4_7_rt_167
    );
  Mcompar_RGB_cmp_ge0000_cy_0_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos_0_1_1835,
      O => Mcompar_RGB_cmp_ge0000_cy_0_8_rt_34
    );
  Mcompar_RGB_cmp_ge0000_cy_2_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos_2_1_1879,
      O => Mcompar_RGB_cmp_ge0000_cy_2_8_rt_113
    );
  Mcompar_RGB_cmp_ge0000_cy_0_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos_0_2_1836,
      O => Mcompar_RGB_cmp_ge0000_cy_0_9_rt_35
    );
  Mcompar_RGB_cmp_ge0000_cy_2_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos_3_2_1886,
      O => Mcompar_RGB_cmp_ge0000_cy_2_9_rt_114
    );
  Mcompar_RGB_cmp_ge0000_cy_4_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos_6_2_1895,
      O => Mcompar_RGB_cmp_ge0000_cy_4_9_rt_168
    );
  Mcompar_RGB_cmp_ge0000_cy_6_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos(9),
      O => Mcompar_RGB_cmp_ge0000_cy_6_9_rt_214
    );
  Mcompar_RGB_cmp_ge0000_cy_0_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos(1),
      O => Mcompar_RGB_cmp_ge0000_cy_0_10_rt_27
    );
  Mcompar_RGB_cmp_ge0000_cy_2_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos(3),
      O => Mcompar_RGB_cmp_ge0000_cy_2_10_rt_102
    );
  Mcompar_RGB_cmp_ge0000_cy_4_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos(8),
      O => Mcompar_RGB_cmp_ge0000_cy_4_11_rt_158
    );
  Mcompar_RGB_cmp_ge0000_cy_2_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos(4),
      O => Mcompar_RGB_cmp_ge0000_cy_2_12_rt_103
    );
  Mcompar_RGB_cmp_ge0000_cy_2_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos(4),
      O => Mcompar_RGB_cmp_ge0000_cy_2_14_rt_104
    );
  Mcompar_RGB_cmp_ge0000_cy_4_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos(7),
      O => Mcompar_RGB_cmp_ge0000_cy_4_14_rt_159
    );
  Mcompar_RGB_cmp_ge0000_cy_2_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos(3),
      O => Mcompar_RGB_cmp_ge0000_cy_2_15_rt_105
    );
  Mcompar_RGB_cmp_ge0000_cy_4_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos(6),
      O => Mcompar_RGB_cmp_ge0000_cy_4_15_rt_160
    );
  Mcompar_RGB_cmp_ge0000_cy_0_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos_1_2_1859,
      O => Mcompar_RGB_cmp_ge0000_cy_0_16_rt_28
    );
  Mcompar_RGB_cmp_ge0000_cy_4_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos_8_2_1901,
      O => Mcompar_RGB_cmp_ge0000_cy_4_16_rt_161
    );
  Mcompar_RGB_cmp_ge0000_cy_0_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos_1_2_1859,
      O => Mcompar_RGB_cmp_ge0000_cy_0_17_rt_29
    );
  Mcompar_RGB_cmp_ge0000_cy_2_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos_3_2_1886,
      O => Mcompar_RGB_cmp_ge0000_cy_2_17_rt_106
    );
  Mcompar_RGB_cmp_ge0000_cy_4_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos_5_2_1892,
      O => Mcompar_RGB_cmp_ge0000_cy_4_17_rt_162
    );
  Mcompar_RGB_cmp_ge0000_cy_6_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos_7_2_1898,
      O => Mcompar_RGB_cmp_ge0000_cy_6_17_rt_211
    );
  Mcompar_RGB_cmp_ge0001_cy_0_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vPos(1),
      O => Mcompar_RGB_cmp_ge0001_cy_0_rt_492
    );
  Mcompar_RGB_cmp_ge0001_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vPos(3),
      O => Mcompar_RGB_cmp_ge0001_cy_2_rt_512
    );
  Mcompar_RGB_cmp_ge0001_cy_0_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vPos(2),
      O => Mcompar_RGB_cmp_ge0001_cy_0_1_rt_490
    );
  Mcompar_RGB_cmp_ge0001_cy_2_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vPos(5),
      O => Mcompar_RGB_cmp_ge0001_cy_2_1_rt_509
    );
  Mcompar_RGB_cmp_ge0001_cy_2_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vPos(7),
      O => Mcompar_RGB_cmp_ge0001_cy_2_3_rt_510
    );
  Mcompar_RGB_cmp_ge0001_cy_0_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vPos(1),
      O => Mcompar_RGB_cmp_ge0001_cy_0_4_rt_491
    );
  Mcompar_RGB_cmp_ge0001_cy_2_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vPos_5_1_1952,
      O => Mcompar_RGB_cmp_ge0001_cy_2_4_rt_511
    );
  Mcompar_RGB_cmp_ge0001_cy_4_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vPos_8_1_1958,
      O => Mcompar_RGB_cmp_ge0001_cy_4_4_rt_527
    );
  Mcount_hPos_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos(1),
      O => Mcount_hPos_cy_1_rt_1452
    );
  Mcount_hPos_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos(2),
      O => Mcount_hPos_cy_2_rt_1474
    );
  Mcount_hPos_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos(3),
      O => Mcount_hPos_cy_3_rt_1478
    );
  Mcount_hPos_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos(4),
      O => Mcount_hPos_cy_4_rt_1480
    );
  Mcount_hPos_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos(5),
      O => Mcount_hPos_cy_5_rt_1482
    );
  Mcount_hPos_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos(6),
      O => Mcount_hPos_cy_6_rt_1484
    );
  Mcount_hPos_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos(7),
      O => Mcount_hPos_cy_7_rt_1486
    );
  Mcount_hPos_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos(8),
      O => Mcount_hPos_cy_8_rt_1488
    );
  Mcount_hPos_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos(9),
      O => Mcount_hPos_cy_9_rt_1490
    );
  Mcount_hPos_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos(10),
      O => Mcount_hPos_cy_10_rt_1432
    );
  Mcount_hPos_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos(11),
      O => Mcount_hPos_cy_11_rt_1434
    );
  Mcount_hPos_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos(12),
      O => Mcount_hPos_cy_12_rt_1436
    );
  Mcount_hPos_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos(13),
      O => Mcount_hPos_cy_13_rt_1438
    );
  Mcount_hPos_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos(14),
      O => Mcount_hPos_cy_14_rt_1440
    );
  Mcount_hPos_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos(15),
      O => Mcount_hPos_cy_15_rt_1442
    );
  Mcount_hPos_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos(16),
      O => Mcount_hPos_cy_16_rt_1444
    );
  Mcount_hPos_cy_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos(17),
      O => Mcount_hPos_cy_17_rt_1446
    );
  Mcount_hPos_cy_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos(18),
      O => Mcount_hPos_cy_18_rt_1448
    );
  Mcount_hPos_cy_19_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos(19),
      O => Mcount_hPos_cy_19_rt_1450
    );
  Mcount_hPos_cy_20_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos(20),
      O => Mcount_hPos_cy_20_rt_1454
    );
  Mcount_hPos_cy_21_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos(21),
      O => Mcount_hPos_cy_21_rt_1456
    );
  Mcount_hPos_cy_22_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos(22),
      O => Mcount_hPos_cy_22_rt_1458
    );
  Mcount_hPos_cy_23_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos(23),
      O => Mcount_hPos_cy_23_rt_1460
    );
  Mcount_hPos_cy_24_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos(24),
      O => Mcount_hPos_cy_24_rt_1462
    );
  Mcount_hPos_cy_25_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos(25),
      O => Mcount_hPos_cy_25_rt_1464
    );
  Mcount_hPos_cy_26_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos(26),
      O => Mcount_hPos_cy_26_rt_1466
    );
  Mcount_hPos_cy_27_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos(27),
      O => Mcount_hPos_cy_27_rt_1468
    );
  Mcount_hPos_cy_28_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos(28),
      O => Mcount_hPos_cy_28_rt_1470
    );
  Mcount_hPos_cy_29_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos(29),
      O => Mcount_hPos_cy_29_rt_1472
    );
  Mcount_hPos_cy_30_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos(30),
      O => Mcount_hPos_cy_30_rt_1476
    );
  Mcount_vPos_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vPos(1),
      O => Mcount_vPos_cy_1_rt_1547
    );
  Mcount_vPos_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vPos(2),
      O => Mcount_vPos_cy_2_rt_1569
    );
  Mcount_vPos_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vPos(3),
      O => Mcount_vPos_cy_3_rt_1573
    );
  Mcount_vPos_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vPos(4),
      O => Mcount_vPos_cy_4_rt_1575
    );
  Mcount_vPos_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vPos(5),
      O => Mcount_vPos_cy_5_rt_1577
    );
  Mcount_vPos_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vPos(6),
      O => Mcount_vPos_cy_6_rt_1579
    );
  Mcount_vPos_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vPos(7),
      O => Mcount_vPos_cy_7_rt_1581
    );
  Mcount_vPos_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vPos(8),
      O => Mcount_vPos_cy_8_rt_1583
    );
  Mcount_vPos_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vPos(9),
      O => Mcount_vPos_cy_9_rt_1585
    );
  Mcount_vPos_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vPos(10),
      O => Mcount_vPos_cy_10_rt_1527
    );
  Mcount_vPos_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vPos(11),
      O => Mcount_vPos_cy_11_rt_1529
    );
  Mcount_vPos_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vPos(12),
      O => Mcount_vPos_cy_12_rt_1531
    );
  Mcount_vPos_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vPos(13),
      O => Mcount_vPos_cy_13_rt_1533
    );
  Mcount_vPos_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vPos(14),
      O => Mcount_vPos_cy_14_rt_1535
    );
  Mcount_vPos_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vPos(15),
      O => Mcount_vPos_cy_15_rt_1537
    );
  Mcount_vPos_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vPos(16),
      O => Mcount_vPos_cy_16_rt_1539
    );
  Mcount_vPos_cy_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vPos(17),
      O => Mcount_vPos_cy_17_rt_1541
    );
  Mcount_vPos_cy_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vPos(18),
      O => Mcount_vPos_cy_18_rt_1543
    );
  Mcount_vPos_cy_19_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vPos(19),
      O => Mcount_vPos_cy_19_rt_1545
    );
  Mcount_vPos_cy_20_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vPos(20),
      O => Mcount_vPos_cy_20_rt_1549
    );
  Mcount_vPos_cy_21_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vPos(21),
      O => Mcount_vPos_cy_21_rt_1551
    );
  Mcount_vPos_cy_22_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vPos(22),
      O => Mcount_vPos_cy_22_rt_1553
    );
  Mcount_vPos_cy_23_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vPos(23),
      O => Mcount_vPos_cy_23_rt_1555
    );
  Mcount_vPos_cy_24_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vPos(24),
      O => Mcount_vPos_cy_24_rt_1557
    );
  Mcount_vPos_cy_25_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vPos(25),
      O => Mcount_vPos_cy_25_rt_1559
    );
  Mcount_vPos_cy_26_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vPos(26),
      O => Mcount_vPos_cy_26_rt_1561
    );
  Mcount_vPos_cy_27_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vPos(27),
      O => Mcount_vPos_cy_27_rt_1563
    );
  Mcount_vPos_cy_28_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vPos(28),
      O => Mcount_vPos_cy_28_rt_1565
    );
  Mcount_vPos_cy_29_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vPos(29),
      O => Mcount_vPos_cy_29_rt_1567
    );
  Mcount_vPos_cy_30_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vPos(30),
      O => Mcount_vPos_cy_30_rt_1571
    );
  Mcount_hPos_xor_31_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => hPos(31),
      O => Mcount_hPos_xor_31_rt_1524
    );
  Mcount_vPos_xor_31_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => vPos(31),
      O => Mcount_vPos_xor_31_rt_1619
    );
  RGB_or000287 : LUT4
    generic map(
      INIT => X"AA80"
    )
    port map (
      I0 => RGB_cmp_le0004,
      I1 => RGB_cmp_le0010,
      I2 => RGB_cmp_ge0010,
      I3 => RGB_or000279_1754,
      O => RGB_or000287_1755
    );
  RGB_or000217 : LUT4
    generic map(
      INIT => X"F8F0"
    )
    port map (
      I0 => RGB_cmp_ge0007,
      I1 => RGB_cmp_le0001,
      I2 => RGB_or000215_1747,
      I3 => RGB_or00024_1751,
      O => RGB_or000217_1748
    );
  RGB_or000250_SW0 : LUT4
    generic map(
      INIT => X"EAC0"
    )
    port map (
      I0 => RGB_cmp_ge0011,
      I1 => RGB_cmp_le0000,
      I2 => RGB_cmp_ge0000,
      I3 => RGB_cmp_le0011,
      O => N2
    );
  RGB_mux0007_2_1_SW0 : LUT3
    generic map(
      INIT => X"40"
    )
    port map (
      I0 => RGB_and0025,
      I1 => RGB_mux0007_7_8_1743,
      I2 => N5,
      O => N41
    );
  RGB_mux0007_2_1_SW1 : LUT3
    generic map(
      INIT => X"DC"
    )
    port map (
      I0 => RGB_and0025,
      I1 => N4,
      I2 => N5,
      O => N61
    );
  RGB_mux0007_1_SW1 : LUT4
    generic map(
      INIT => X"FEFA"
    )
    port map (
      I0 => N6,
      I1 => N55,
      I2 => N4,
      I3 => N5,
      O => N8
    );
  RGB_not000142 : LUT4
    generic map(
      INIT => X"FE10"
    )
    port map (
      I0 => RGB_or000287_1755,
      I1 => RGB_or000266_1753,
      I2 => N14,
      I3 => N15,
      O => RGB_not0001
    );
  RGB_2 : FDC
    port map (
      C => clk25_1826,
      CLR => RST_IBUF_1757,
      D => RGB_2_rstpot_1668,
      Q => RGB_2_1667
    );
  RGB_3 : FDC
    port map (
      C => clk25_1826,
      CLR => RST_IBUF_1757,
      D => RGB_3_rstpot_1670,
      Q => RGB_3_1669
    );
  RGB_0 : FDC
    port map (
      C => clk25_1826,
      CLR => RST_IBUF_1757,
      D => RGB_0_rstpot_1664,
      Q => RGB_0_1663
    );
  RGB_1 : FDC
    port map (
      C => clk25_1826,
      CLR => RST_IBUF_1757,
      D => RGB_1_rstpot_1666,
      Q => RGB_1_1665
    );
  RGB_4 : FDC
    port map (
      C => clk25_1826,
      CLR => RST_IBUF_1757,
      D => RGB_4_rstpot_1672,
      Q => RGB_4_1671
    );
  RGB_7 : FDC
    port map (
      C => clk25_1826,
      CLR => RST_IBUF_1757,
      D => RGB_7_rstpot_1674,
      Q => RGB_7_1673
    );
  RGB_3_rstpot : LUT4
    generic map(
      INIT => X"FCAA"
    )
    port map (
      I0 => RGB_3_1669,
      I1 => N6,
      I2 => N4,
      I3 => RGB_not0001,
      O => RGB_3_rstpot_1670
    );
  RGB_mux0007_0_335 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => texto_1_IBUF_1923,
      I1 => videoOn_1976,
      I2 => RGB_mux0007_0_325_1735,
      I3 => RGB_mux0007_0_312_1734,
      O => N5
    );
  RGB_mux0007_7_8_SW0 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => RGB_cmp_le0025,
      I1 => RGB_cmp_ge0022,
      I2 => RGB_cmp_ge0027,
      I3 => RGB_cmp_le0024,
      O => N23
    );
  RGB_4_rstpot : LUT4
    generic map(
      INIT => X"FCAA"
    )
    port map (
      I0 => RGB_4_1671,
      I1 => N12,
      I2 => N25,
      I3 => RGB_not0001,
      O => RGB_4_rstpot_1672
    );
  RGB_7_rstpot : LUT4
    generic map(
      INIT => X"FACA"
    )
    port map (
      I0 => RGB_7_1673,
      I1 => N12,
      I2 => RGB_not0001,
      I3 => N27,
      O => RGB_7_rstpot_1674
    );
  RGB_2_rstpot : LUT4
    generic map(
      INIT => X"FCAA"
    )
    port map (
      I0 => RGB_2_1667,
      I1 => N4,
      I2 => N29,
      I3 => RGB_not0001,
      O => RGB_2_rstpot_1668
    );
  RGB_or0002116_SW0 : LUT4
    generic map(
      INIT => X"FFD5"
    )
    port map (
      I0 => N54,
      I1 => RGB_cmp_ge0001,
      I2 => RGB_or000287_1755,
      I3 => RGB_or000217_1748,
      O => N33
    );
  RGB_or0002116_SW1 : LUT3
    generic map(
      INIT => X"FB"
    )
    port map (
      I0 => RGB_cmp_ge0001,
      I1 => N6,
      I2 => RGB_or000217_1748,
      O => N34
    );
  RGB_mux0007_0_21 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => RGB_cmp_le0024,
      I1 => RGB_cmp_ge0021,
      I2 => RGB_cmp_ge0022,
      I3 => N36,
      O => N4
    );
  RGB_0_rstpot : LUT4
    generic map(
      INIT => X"FCAA"
    )
    port map (
      I0 => RGB_0_1663,
      I1 => N41,
      I2 => N38,
      I3 => RGB_not0001,
      O => RGB_0_rstpot_1664
    );
  RGB_1_rstpot : LUT4
    generic map(
      INIT => X"FCAA"
    )
    port map (
      I0 => RGB_1_1665,
      I1 => N4,
      I2 => N40,
      I3 => RGB_not0001,
      O => RGB_1_rstpot_1666
    );
  RGB_mux0007_7_25_SW0_SW0 : LUT3
    generic map(
      INIT => X"CE"
    )
    port map (
      I0 => N6,
      I1 => N4,
      I2 => RGB_or000217_1748,
      O => N42
    );
  RGB_mux0007_7_25_SW0_SW1 : LUT4
    generic map(
      INIT => X"F0F2"
    )
    port map (
      I0 => N6,
      I1 => RGB_cmp_ge0001,
      I2 => N4,
      I3 => RGB_or000217_1748,
      O => N43
    );
  RGB_mux0007_1_SW3_SW0 : LUT3
    generic map(
      INIT => X"8C"
    )
    port map (
      I0 => N01,
      I1 => N6,
      I2 => RGB_or000217_1748,
      O => N45
    );
  RGB_mux0007_1_SW3_SW1 : LUT4
    generic map(
      INIT => X"888C"
    )
    port map (
      I0 => N01,
      I1 => N6,
      I2 => RGB_cmp_ge0001,
      I3 => RGB_or000217_1748,
      O => N46
    );
  RGB_mux0007_2_1_SW2_SW0 : LUT4
    generic map(
      INIT => X"FFEF"
    )
    port map (
      I0 => texto_0_IBUF_1922,
      I1 => texto_1_IBUF_1923,
      I2 => videoOn_1976,
      I3 => RGB_or000217_1748,
      O => N31
    );
  RGB_or0002116_SW4 : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => RGB_cmp_ge0001,
      I1 => RGB_or000287_1755,
      I2 => RGB_or000266_1753,
      O => N48
    );
  RGB_mux0007_1_SW2 : MUXF5
    port map (
      I0 => N50,
      I1 => N51,
      S => N5,
      O => N9
    );
  RGB_mux0007_1_SW2_F : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => N01,
      I1 => N6,
      I2 => N4,
      O => N50
    );
  RGB_mux0007_1_SW2_G : LUT4
    generic map(
      INIT => X"FFF8"
    )
    port map (
      I0 => N01,
      I1 => N6,
      I2 => RGB_and0025,
      I3 => N4,
      O => N51
    );
  RGB_or0002116_SW3 : MUXF5
    port map (
      I0 => N52,
      I1 => N53,
      S => RGB_or000217_1748,
      O => N15
    );
  RGB_or0002116_SW3_F : LUT4
    generic map(
      INIT => X"FF23"
    )
    port map (
      I0 => RGB_not000119_1745,
      I1 => texto_1_IBUF_1923,
      I2 => RGB_cmp_ge0001,
      I3 => RGB_not00017_1746,
      O => N52
    );
  VSYNC_or00001 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => Mcompar_VSYNC_cmp_le0000_cy(10),
      I1 => VSYNC_cmp_le0000,
      O => VSYNC_or0000
    );
  HSYNC_or00001 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => Mcompar_videoOn_cmp_le0000_cy_10_11_888,
      I1 => HSYNC_cmp_le0000,
      O => HSYNC_or0000
    );
  RGB_or0002116_SW3_G : LUT4
    generic map(
      INIT => X"7F5D"
    )
    port map (
      I0 => videoOn_1976,
      I1 => texto_1_IBUF_1923,
      I2 => texto_0_IBUF_1922,
      I3 => RGB_not000119_1745,
      O => N53
    );
  hPos_9_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_1826,
      CLR => RST_IBUF_1757,
      D => Mcount_hPos_eqn_9,
      Q => hPos_9_1_1903
    );
  hPos_13_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_1826,
      CLR => RST_IBUF_1757,
      D => Mcount_hPos_eqn_13,
      Q => hPos_13_1_1845
    );
  hPos_17_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_1826,
      CLR => RST_IBUF_1757,
      D => Mcount_hPos_eqn_17,
      Q => hPos_17_1_1853
    );
  hPos_21_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_1826,
      CLR => RST_IBUF_1757,
      D => Mcount_hPos_eqn_21,
      Q => hPos_21_1_1864
    );
  hPos_25_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_1826,
      CLR => RST_IBUF_1757,
      D => Mcount_hPos_eqn_25,
      Q => hPos_25_1_1872
    );
  hPos_29_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_1826,
      CLR => RST_IBUF_1757,
      D => Mcount_hPos_eqn_29,
      Q => hPos_29_1_1878
    );
  hPos_23_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_1826,
      CLR => RST_IBUF_1757,
      D => Mcount_hPos_eqn_23,
      Q => hPos_23_1_1868
    );
  hPos_2_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_1826,
      CLR => RST_IBUF_1757,
      D => Mcount_hPos_eqn_2,
      Q => hPos_2_1_1879
    );
  hPos_1_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_1826,
      CLR => RST_IBUF_1757,
      D => Mcount_hPos_eqn_1,
      Q => hPos_1_1_1858
    );
  hPos_0_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_1826,
      CLR => RST_IBUF_1757,
      D => Mcount_hPos_eqn_0,
      Q => hPos_0_1_1835
    );
  hPos_5_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_1826,
      CLR => RST_IBUF_1757,
      D => Mcount_hPos_eqn_5,
      Q => hPos_5_1_1891
    );
  hPos_6_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_1826,
      CLR => RST_IBUF_1757,
      D => Mcount_hPos_eqn_6,
      Q => hPos_6_1_1894
    );
  hPos_7_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_1826,
      CLR => RST_IBUF_1757,
      D => Mcount_hPos_eqn_7,
      Q => hPos_7_1_1897
    );
  hPos_10_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_1826,
      CLR => RST_IBUF_1757,
      D => Mcount_hPos_eqn_10,
      Q => hPos_10_1_1839
    );
  hPos_11_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_1826,
      CLR => RST_IBUF_1757,
      D => Mcount_hPos_eqn_11,
      Q => hPos_11_1_1841
    );
  hPos_14_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_1826,
      CLR => RST_IBUF_1757,
      D => Mcount_hPos_eqn_14,
      Q => hPos_14_1_1847
    );
  hPos_12_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_1826,
      CLR => RST_IBUF_1757,
      D => Mcount_hPos_eqn_12,
      Q => hPos_12_1_1843
    );
  hPos_15_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_1826,
      CLR => RST_IBUF_1757,
      D => Mcount_hPos_eqn_15,
      Q => hPos_15_1_1849
    );
  hPos_18_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_1826,
      CLR => RST_IBUF_1757,
      D => Mcount_hPos_eqn_18,
      Q => hPos_18_1_1855
    );
  hPos_16_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_1826,
      CLR => RST_IBUF_1757,
      D => Mcount_hPos_eqn_16,
      Q => hPos_16_1_1851
    );
  hPos_19_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_1826,
      CLR => RST_IBUF_1757,
      D => Mcount_hPos_eqn_19,
      Q => hPos_19_1_1857
    );
  hPos_22_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_1826,
      CLR => RST_IBUF_1757,
      D => Mcount_hPos_eqn_22,
      Q => hPos_22_1_1866
    );
  hPos_20_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_1826,
      CLR => RST_IBUF_1757,
      D => Mcount_hPos_eqn_20,
      Q => hPos_20_1_1862
    );
  hPos_26_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_1826,
      CLR => RST_IBUF_1757,
      D => Mcount_hPos_eqn_26,
      Q => hPos_26_1_1874
    );
  hPos_24_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_1826,
      CLR => RST_IBUF_1757,
      D => Mcount_hPos_eqn_24,
      Q => hPos_24_1_1870
    );
  hPos_4_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_1826,
      CLR => RST_IBUF_1757,
      D => Mcount_hPos_eqn_4,
      Q => hPos_4_1_1888
    );
  hPos_8_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_1826,
      CLR => RST_IBUF_1757,
      D => Mcount_hPos_eqn_8,
      Q => hPos_8_1_1900
    );
  hPos_3_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_1826,
      CLR => RST_IBUF_1757,
      D => Mcount_hPos_eqn_3,
      Q => hPos_3_1_1885
    );
  hPos_31_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_1826,
      CLR => RST_IBUF_1757,
      D => Mcount_hPos_eqn_31,
      Q => hPos_31_1_1884
    );
  vPos_5_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_1826,
      CE => hPos_cmp_eq0000,
      CLR => RST_IBUF_1757,
      D => Mcount_vPos_eqn_5,
      Q => vPos_5_1_1952
    );
  vPos_6_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_1826,
      CE => hPos_cmp_eq0000,
      CLR => RST_IBUF_1757,
      D => Mcount_vPos_eqn_6,
      Q => vPos_6_1_1954
    );
  vPos_7_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_1826,
      CE => hPos_cmp_eq0000,
      CLR => RST_IBUF_1757,
      D => Mcount_vPos_eqn_7,
      Q => vPos_7_1_1956
    );
  vPos_8_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_1826,
      CE => hPos_cmp_eq0000,
      CLR => RST_IBUF_1757,
      D => Mcount_vPos_eqn_8,
      Q => vPos_8_1_1958
    );
  hPos_6_2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_1826,
      CLR => RST_IBUF_1757,
      D => Mcount_hPos_eqn_6,
      Q => hPos_6_2_1895
    );
  hPos_3_2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_1826,
      CLR => RST_IBUF_1757,
      D => Mcount_hPos_eqn_3,
      Q => hPos_3_2_1886
    );
  hPos_1_2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_1826,
      CLR => RST_IBUF_1757,
      D => Mcount_hPos_eqn_1,
      Q => hPos_1_2_1859
    );
  hPos_0_2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_1826,
      CLR => RST_IBUF_1757,
      D => Mcount_hPos_eqn_0,
      Q => hPos_0_2_1836
    );
  hPos_5_2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_1826,
      CLR => RST_IBUF_1757,
      D => Mcount_hPos_eqn_5,
      Q => hPos_5_2_1892
    );
  hPos_7_2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_1826,
      CLR => RST_IBUF_1757,
      D => Mcount_hPos_eqn_7,
      Q => hPos_7_2_1898
    );
  hPos_4_2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_1826,
      CLR => RST_IBUF_1757,
      D => Mcount_hPos_eqn_4,
      Q => hPos_4_2_1889
    );
  hPos_8_2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_1826,
      CLR => RST_IBUF_1757,
      D => Mcount_hPos_eqn_8,
      Q => hPos_8_2_1901
    );
  hPos_2_2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk25_1826,
      CLR => RST_IBUF_1757,
      D => Mcount_hPos_eqn_2,
      Q => hPos_2_2_1880
    );
  clk25_BUFG : BUFG
    port map (
      I => clk251,
      O => clk25_1826
    );
  CLK_BUFGP : BUFGP
    port map (
      I => CLK,
      O => CLK_BUFGP_1
    );
  Mcompar_videoOn_cmp_le0000_lut_7_INV_0 : INV
    port map (
      I => hPos(30),
      O => Mcompar_videoOn_cmp_le0000_lut(7)
    );
  Mcompar_videoOn_cmp_le0000_lut_0_1_INV_0 : INV
    port map (
      I => hPos_3_1_1885,
      O => Mcompar_videoOn_cmp_le0000_lut_0_1
    );
  Mcompar_videoOn_cmp_le0000_lut_8_1_INV_0 : INV
    port map (
      I => hPos(30),
      O => Mcompar_videoOn_cmp_le0000_lut_8_1
    );
  Mcompar_videoOn_cmp_le0000_lut_2_2_INV_0 : INV
    port map (
      I => hPos_4_2_1889,
      O => Mcompar_videoOn_cmp_le0000_lut_2_2
    );
  Mcompar_videoOn_cmp_le0000_lut_0_3_INV_0 : INV
    port map (
      I => hPos_2_2_1880,
      O => Mcompar_videoOn_cmp_le0000_lut_0_3
    );
  Mcompar_videoOn_cmp_le0000_lut_0_4_INV_0 : INV
    port map (
      I => hPos_3_2_1886,
      O => Mcompar_videoOn_cmp_le0000_lut_0_4
    );
  Mcompar_videoOn_cmp_le0000_lut_2_4_INV_0 : INV
    port map (
      I => hPos_5_2_1892,
      O => Mcompar_videoOn_cmp_le0000_lut_2_4
    );
  Mcompar_videoOn_cmp_le0000_lut_0_6_INV_0 : INV
    port map (
      I => hPos_2_2_1880,
      O => Mcompar_videoOn_cmp_le0000_lut_0_6
    );
  Mcompar_videoOn_cmp_le0000_lut_2_7_INV_0 : INV
    port map (
      I => hPos_4_2_1889,
      O => Mcompar_videoOn_cmp_le0000_lut_2_7
    );
  Mcompar_videoOn_cmp_le0000_lut_4_7_INV_0 : INV
    port map (
      I => hPos_6_2_1895,
      O => Mcompar_videoOn_cmp_le0000_lut_4_7
    );
  Mcompar_videoOn_cmp_le0000_lut_0_8_INV_0 : INV
    port map (
      I => hPos(2),
      O => Mcompar_videoOn_cmp_le0000_lut_0_8
    );
  Mcompar_videoOn_cmp_le0000_lut_2_8_INV_0 : INV
    port map (
      I => hPos(5),
      O => Mcompar_videoOn_cmp_le0000_lut_2_8
    );
  Mcompar_videoOn_cmp_le0000_lut_0_9_INV_0 : INV
    port map (
      I => hPos_3_1_1885,
      O => Mcompar_videoOn_cmp_le0000_lut_0_9
    );
  Mcompar_videoOn_cmp_le0000_lut_9_8_INV_0 : INV
    port map (
      I => hPos(30),
      O => Mcompar_videoOn_cmp_le0000_lut_9_8
    );
  Mcompar_videoOn_cmp_le0000_lut_11_1_INV_0 : INV
    port map (
      I => hPos(30),
      O => Mcompar_videoOn_cmp_le0000_lut_11_1
    );
  Mcompar_videoOn_cmp_le0000_lut_0_11_INV_0 : INV
    port map (
      I => hPos_2_2_1880,
      O => Mcompar_videoOn_cmp_le0000_lut_0_11
    );
  Mcompar_videoOn_cmp_le0000_lut_9_10_INV_0 : INV
    port map (
      I => hPos(30),
      O => Mcompar_videoOn_cmp_le0000_lut_9_10
    );
  Mcompar_videoOn_cmp_le0000_lut_0_12_INV_0 : INV
    port map (
      I => hPos(0),
      O => Mcompar_videoOn_cmp_le0000_lut_0_12
    );
  Mcompar_videoOn_cmp_le0000_lut_2_12_INV_0 : INV
    port map (
      I => hPos(3),
      O => Mcompar_videoOn_cmp_le0000_lut_2_12
    );
  Mcompar_videoOn_cmp_le0000_lut_11_2_INV_0 : INV
    port map (
      I => hPos(30),
      O => Mcompar_videoOn_cmp_le0000_lut_11_2
    );
  Mcompar_videoOn_cmp_le0000_lut_0_13_INV_0 : INV
    port map (
      I => hPos(0),
      O => Mcompar_videoOn_cmp_le0000_lut_0_13
    );
  Mcompar_videoOn_cmp_le0000_lut_2_13_INV_0 : INV
    port map (
      I => hPos(2),
      O => Mcompar_videoOn_cmp_le0000_lut_2_13
    );
  Mcompar_videoOn_cmp_le0000_lut_6_13_INV_0 : INV
    port map (
      I => hPos(7),
      O => Mcompar_videoOn_cmp_le0000_lut_6_13
    );
  Mcompar_videoOn_cmp_le0000_lut_0_14_INV_0 : INV
    port map (
      I => hPos(0),
      O => Mcompar_videoOn_cmp_le0000_lut_0_14
    );
  Mcompar_videoOn_cmp_le0000_lut_2_14_INV_0 : INV
    port map (
      I => hPos(2),
      O => Mcompar_videoOn_cmp_le0000_lut_2_14
    );
  Mcompar_videoOn_cmp_le0000_lut_4_14_INV_0 : INV
    port map (
      I => hPos(4),
      O => Mcompar_videoOn_cmp_le0000_lut_4_14
    );
  Mcompar_videoOn_cmp_le0000_lut_0_15_INV_0 : INV
    port map (
      I => hPos(0),
      O => Mcompar_videoOn_cmp_le0000_lut_0_15
    );
  Mcompar_videoOn_cmp_le0000_lut_2_15_INV_0 : INV
    port map (
      I => hPos(2),
      O => Mcompar_videoOn_cmp_le0000_lut_2_15
    );
  Mcompar_videoOn_cmp_le0000_lut_4_15_INV_0 : INV
    port map (
      I => hPos(4),
      O => Mcompar_videoOn_cmp_le0000_lut_4_15
    );
  Mcompar_videoOn_cmp_le0000_lut_6_15_INV_0 : INV
    port map (
      I => hPos(6),
      O => Mcompar_videoOn_cmp_le0000_lut_6_15
    );
  Mcompar_videoOn_cmp_le0000_lut_0_16_INV_0 : INV
    port map (
      I => hPos(0),
      O => Mcompar_videoOn_cmp_le0000_lut_0_16
    );
  Mcompar_videoOn_cmp_le0000_lut_2_16_INV_0 : INV
    port map (
      I => hPos(2),
      O => Mcompar_videoOn_cmp_le0000_lut_2_16
    );
  Mcompar_videoOn_cmp_le0000_lut_0_17_INV_0 : INV
    port map (
      I => hPos(1),
      O => Mcompar_videoOn_cmp_le0000_lut_0_17
    );
  Mcompar_videoOn_cmp_le0000_lut_2_17_INV_0 : INV
    port map (
      I => hPos(3),
      O => Mcompar_videoOn_cmp_le0000_lut_2_17
    );
  Mcompar_videoOn_cmp_le0000_lut_4_17_INV_0 : INV
    port map (
      I => hPos(5),
      O => Mcompar_videoOn_cmp_le0000_lut_4_17
    );
  Mcompar_videoOn_cmp_le0000_lut_4_18_INV_0 : INV
    port map (
      I => hPos(6),
      O => Mcompar_videoOn_cmp_le0000_lut_4_18
    );
  Mcompar_videoOn_cmp_le0000_lut_0_19_INV_0 : INV
    port map (
      I => hPos(0),
      O => Mcompar_videoOn_cmp_le0000_lut_0_19
    );
  Mcompar_videoOn_cmp_le0000_lut_0_20_INV_0 : INV
    port map (
      I => hPos_0_2_1836,
      O => Mcompar_videoOn_cmp_le0000_lut_0_20
    );
  Mcompar_videoOn_cmp_le0000_lut_2_20_INV_0 : INV
    port map (
      I => hPos_3_2_1886,
      O => Mcompar_videoOn_cmp_le0000_lut_2_20
    );
  Mcompar_videoOn_cmp_le0000_lut_4_20_INV_0 : INV
    port map (
      I => hPos_5_2_1892,
      O => Mcompar_videoOn_cmp_le0000_lut_4_20
    );
  Mcompar_videoOn_cmp_le0000_lut_3_7_INV_0 : INV
    port map (
      I => hPos(8),
      O => Mcompar_videoOn_cmp_le0000_lut_3_7
    );
  Mcompar_videoOn_cmp_le0000_lut_10_20_INV_0 : INV
    port map (
      I => hPos(30),
      O => Mcompar_videoOn_cmp_le0000_lut_10_20
    );
  Mcompar_videoOn_cmp_le0000_lut_2_23_INV_0 : INV
    port map (
      I => hPos(8),
      O => Mcompar_videoOn_cmp_le0000_lut_2_23
    );
  Mcompar_videoOn_cmp_le0000_lut_9_22_INV_0 : INV
    port map (
      I => hPos(30),
      O => Mcompar_videoOn_cmp_le0000_lut_9_22
    );
  Mcompar_videoOn_cmp_le0000_lut_0_24_INV_0 : INV
    port map (
      I => hPos(4),
      O => Mcompar_videoOn_cmp_le0000_lut_0_24
    );
  Mcompar_videoOn_cmp_le0000_lut_2_24_INV_0 : INV
    port map (
      I => hPos(8),
      O => Mcompar_videoOn_cmp_le0000_lut_2_24
    );
  Mcompar_videoOn_cmp_le0000_lut_9_23_INV_0 : INV
    port map (
      I => hPos(30),
      O => Mcompar_videoOn_cmp_le0000_lut_9_23
    );
  Mcompar_VSYNC_cmp_le0000_lut_2_INV_0 : INV
    port map (
      I => vPos(4),
      O => Mcompar_VSYNC_cmp_le0000_lut(2)
    );
  Mcompar_VSYNC_cmp_le0000_lut_0_1_INV_0 : INV
    port map (
      I => vPos(2),
      O => Mcompar_VSYNC_cmp_le0000_lut_0_1
    );
  Mcompar_VSYNC_cmp_le0000_lut_2_1_INV_0 : INV
    port map (
      I => vPos(4),
      O => Mcompar_VSYNC_cmp_le0000_lut_2_1
    );
  Mcompar_VSYNC_cmp_le0000_lut_0_2_INV_0 : INV
    port map (
      I => vPos(5),
      O => Mcompar_VSYNC_cmp_le0000_lut_0_2
    );
  Mcompar_VSYNC_cmp_le0000_lut_0_3_INV_0 : INV
    port map (
      I => vPos(0),
      O => Mcompar_VSYNC_cmp_le0000_lut_0_3
    );
  Mcompar_VSYNC_cmp_le0000_lut_2_3_INV_0 : INV
    port map (
      I => vPos(3),
      O => Mcompar_VSYNC_cmp_le0000_lut_2_3
    );
  Mcompar_VSYNC_cmp_le0000_lut_4_3_INV_0 : INV
    port map (
      I => vPos(5),
      O => Mcompar_VSYNC_cmp_le0000_lut_4_3
    );
  Mcompar_VSYNC_cmp_le0000_lut_3_3_INV_0 : INV
    port map (
      I => vPos_7_1_1956,
      O => Mcompar_VSYNC_cmp_le0000_lut_3_3
    );
  Mcompar_VSYNC_cmp_le0000_lut_8_5_INV_0 : INV
    port map (
      I => vPos(30),
      O => Mcompar_VSYNC_cmp_le0000_lut_8_5
    );
  Mcompar_VSYNC_cmp_le0000_lut_0_6_INV_0 : INV
    port map (
      I => vPos(0),
      O => Mcompar_VSYNC_cmp_le0000_lut_0_6
    );
  Mcompar_VSYNC_cmp_le0000_lut_2_6_INV_0 : INV
    port map (
      I => vPos(2),
      O => Mcompar_VSYNC_cmp_le0000_lut_2_6
    );
  Mcompar_VSYNC_cmp_le0000_lut_0_8_INV_0 : INV
    port map (
      I => vPos(0),
      O => Mcompar_VSYNC_cmp_le0000_lut_0_8
    );
  Mcompar_VSYNC_cmp_le0000_lut_2_10_INV_0 : INV
    port map (
      I => vPos(3),
      O => Mcompar_VSYNC_cmp_le0000_lut_2_10
    );
  Mcompar_VSYNC_cmp_le0000_lut_4_8_INV_0 : INV
    port map (
      I => vPos(5),
      O => Mcompar_VSYNC_cmp_le0000_lut_4_8
    );
  Mcompar_VSYNC_cmp_le0000_lut_6_10_INV_0 : INV
    port map (
      I => vPos(7),
      O => Mcompar_VSYNC_cmp_le0000_lut_6_10
    );
  Mcompar_RGB_cmp_ge0000_lut_1_INV_0 : INV
    port map (
      I => hPos_1_1_1858,
      O => Mcompar_RGB_cmp_ge0000_lut(1)
    );
  Mcompar_RGB_cmp_ge0000_lut_1_1_INV_0 : INV
    port map (
      I => hPos_3_2_1886,
      O => Mcompar_RGB_cmp_ge0000_lut_1_1
    );
  Mcompar_RGB_cmp_ge0000_lut_9_1_INV_0 : INV
    port map (
      I => hPos(30),
      O => Mcompar_RGB_cmp_ge0000_lut_9_1
    );
  Mcompar_RGB_cmp_ge0000_lut_3_2_INV_0 : INV
    port map (
      I => hPos_4_2_1889,
      O => Mcompar_RGB_cmp_ge0000_lut_3_2
    );
  Mcompar_RGB_cmp_ge0000_lut_1_3_INV_0 : INV
    port map (
      I => hPos_1_2_1859,
      O => Mcompar_RGB_cmp_ge0000_lut_1_3
    );
  Mcompar_RGB_cmp_ge0000_lut_5_3_INV_0 : INV
    port map (
      I => hPos_6_2_1895,
      O => Mcompar_RGB_cmp_ge0000_lut_5_3
    );
  Mcompar_RGB_cmp_ge0000_lut_1_4_INV_0 : INV
    port map (
      I => hPos_3_1_1885,
      O => Mcompar_RGB_cmp_ge0000_lut_1_4
    );
  Mcompar_RGB_cmp_ge0000_lut_3_4_INV_0 : INV
    port map (
      I => hPos_5_1_1891,
      O => Mcompar_RGB_cmp_ge0000_lut_3_4
    );
  Mcompar_RGB_cmp_ge0000_lut_1_6_INV_0 : INV
    port map (
      I => hPos_3_2_1886,
      O => Mcompar_RGB_cmp_ge0000_lut_1_6
    );
  Mcompar_RGB_cmp_ge0000_lut_3_6_INV_0 : INV
    port map (
      I => hPos_7_2_1898,
      O => Mcompar_RGB_cmp_ge0000_lut_3_6
    );
  Mcompar_RGB_cmp_ge0000_lut_1_7_INV_0 : INV
    port map (
      I => hPos(1),
      O => Mcompar_RGB_cmp_ge0000_lut_1_7
    );
  Mcompar_RGB_cmp_ge0000_lut_5_7_INV_0 : INV
    port map (
      I => hPos(7),
      O => Mcompar_RGB_cmp_ge0000_lut_5_7
    );
  Mcompar_RGB_cmp_ge0000_lut_1_8_INV_0 : INV
    port map (
      I => hPos_3_1_1885,
      O => Mcompar_RGB_cmp_ge0000_lut_1_8
    );
  Mcompar_RGB_cmp_ge0000_lut_10_8_INV_0 : INV
    port map (
      I => hPos(30),
      O => Mcompar_RGB_cmp_ge0000_lut_10_8
    );
  Mcompar_RGB_cmp_ge0000_lut_1_9_INV_0 : INV
    port map (
      I => hPos_1_1_1858,
      O => Mcompar_RGB_cmp_ge0000_lut_1_9
    );
  Mcompar_RGB_cmp_ge0000_lut_12_2_INV_0 : INV
    port map (
      I => hPos(30),
      O => Mcompar_RGB_cmp_ge0000_lut_12_2
    );
  Mcompar_RGB_cmp_ge0000_lut_1_11_INV_0 : INV
    port map (
      I => hPos(2),
      O => Mcompar_RGB_cmp_ge0000_lut_1_11
    );
  Mcompar_RGB_cmp_ge0000_lut_1_12_INV_0 : INV
    port map (
      I => hPos(3),
      O => Mcompar_RGB_cmp_ge0000_lut_1_12
    );
  Mcompar_RGB_cmp_ge0000_lut_1_13_INV_0 : INV
    port map (
      I => hPos(3),
      O => Mcompar_RGB_cmp_ge0000_lut_1_13
    );
  Mcompar_RGB_cmp_ge0000_lut_3_13_INV_0 : INV
    port map (
      I => hPos(5),
      O => Mcompar_RGB_cmp_ge0000_lut_3_13
    );
  Mcompar_RGB_cmp_ge0000_lut_1_15_INV_0 : INV
    port map (
      I => hPos(3),
      O => Mcompar_RGB_cmp_ge0000_lut_1_15
    );
  Mcompar_RGB_cmp_ge0000_lut_1_16_INV_0 : INV
    port map (
      I => hPos(2),
      O => Mcompar_RGB_cmp_ge0000_lut_1_16
    );
  Mcompar_RGB_cmp_ge0000_lut_3_17_INV_0 : INV
    port map (
      I => hPos_7_2_1898,
      O => Mcompar_RGB_cmp_ge0000_lut_3_17
    );
  Mcompar_RGB_cmp_ge0000_lut_1_18_INV_0 : INV
    port map (
      I => hPos_2_2_1880,
      O => Mcompar_RGB_cmp_ge0000_lut_1_18
    );
  Mcompar_RGB_cmp_ge0000_lut_3_18_INV_0 : INV
    port map (
      I => hPos_4_2_1889,
      O => Mcompar_RGB_cmp_ge0000_lut_3_18
    );
  Mcompar_RGB_cmp_ge0000_lut_5_18_INV_0 : INV
    port map (
      I => hPos_6_2_1895,
      O => Mcompar_RGB_cmp_ge0000_lut_5_18
    );
  Mcompar_RGB_cmp_ge0000_lut_1_20_INV_0 : INV
    port map (
      I => hPos(5),
      O => Mcompar_RGB_cmp_ge0000_lut_1_20
    );
  Mcompar_RGB_cmp_ge0001_lut_1_INV_0 : INV
    port map (
      I => vPos(2),
      O => Mcompar_RGB_cmp_ge0001_lut(1)
    );
  Mcompar_RGB_cmp_ge0001_lut_1_1_INV_0 : INV
    port map (
      I => vPos_5_1_1952,
      O => Mcompar_RGB_cmp_ge0001_lut_1_1
    );
  Mcompar_RGB_cmp_ge0001_lut_3_2_INV_0 : INV
    port map (
      I => vPos(6),
      O => Mcompar_RGB_cmp_ge0001_lut_3_2
    );
  Mcount_hPos_lut_0_INV_0 : INV
    port map (
      I => hPos(0),
      O => Mcount_hPos_lut(0)
    );
  Mcount_vPos_lut_0_INV_0 : INV
    port map (
      I => vPos(0),
      O => Mcount_vPos_lut(0)
    );
  Mcompar_RGB_cmp_ge0000_lut_10_18_INV_0 : INV
    port map (
      I => hPos_31_1_1884,
      O => Mcompar_RGB_cmp_ge0000_lut(10)
    );
  Mcompar_RGB_cmp_ge0000_lut_10_19_INV_0 : INV
    port map (
      I => hPos(31),
      O => Mcompar_RGB_cmp_ge0000_lut_10_1
    );
  Mcompar_RGB_cmp_ge0000_lut_10_111_INV_0 : INV
    port map (
      I => hPos(31),
      O => Mcompar_RGB_cmp_ge0000_lut_10_11
    );
  Mcompar_RGB_cmp_ge0000_lut_11_15_INV_0 : INV
    port map (
      I => hPos(31),
      O => Mcompar_RGB_cmp_ge0000_lut(11)
    );
  Mcompar_RGB_cmp_ge0000_lut_11_101_INV_0 : INV
    port map (
      I => hPos(31),
      O => Mcompar_RGB_cmp_ge0000_lut_11_10
    );
  Mcompar_RGB_cmp_ge0000_lut_11_111_INV_0 : INV
    port map (
      I => hPos(31),
      O => Mcompar_RGB_cmp_ge0000_lut_11_11
    );
  Mcompar_RGB_cmp_ge0000_lut_11_121_INV_0 : INV
    port map (
      I => hPos(31),
      O => Mcompar_RGB_cmp_ge0000_lut_11_12
    );
  Mcompar_RGB_cmp_ge0000_lut_11_131_INV_0 : INV
    port map (
      I => hPos(31),
      O => Mcompar_RGB_cmp_ge0000_lut_11_13
    );
  Mcompar_RGB_cmp_ge0000_lut_11_21_INV_0 : INV
    port map (
      I => hPos(31),
      O => Mcompar_RGB_cmp_ge0000_lut_11_2
    );
  Mcompar_RGB_cmp_ge0000_lut_11_31_INV_0 : INV
    port map (
      I => hPos(31),
      O => Mcompar_RGB_cmp_ge0000_lut_11_3
    );
  Mcompar_RGB_cmp_ge0000_lut_11_41_INV_0 : INV
    port map (
      I => hPos(31),
      O => Mcompar_RGB_cmp_ge0000_lut_11_4
    );
  Mcompar_RGB_cmp_ge0000_lut_11_61_INV_0 : INV
    port map (
      I => hPos(31),
      O => Mcompar_RGB_cmp_ge0000_lut_11_6
    );
  Mcompar_RGB_cmp_ge0000_lut_11_71_INV_0 : INV
    port map (
      I => hPos_31_1_1884,
      O => Mcompar_RGB_cmp_ge0000_lut_11_7
    );
  Mcompar_RGB_cmp_ge0000_lut_11_91_INV_0 : INV
    port map (
      I => hPos(31),
      O => Mcompar_RGB_cmp_ge0000_lut_11_9
    );
  Mcompar_RGB_cmp_ge0000_lut_13_4_INV_0 : INV
    port map (
      I => hPos(31),
      O => Mcompar_RGB_cmp_ge0000_lut(13)
    );
  Mcompar_RGB_cmp_ge0000_lut_13_11_INV_0 : INV
    port map (
      I => hPos(31),
      O => Mcompar_RGB_cmp_ge0000_lut_13_1
    );
  Mcompar_RGB_cmp_ge0000_lut_13_21_INV_0 : INV
    port map (
      I => hPos(31),
      O => Mcompar_RGB_cmp_ge0000_lut_13_2
    );
  Mcompar_RGB_cmp_ge0000_lut_13_31_INV_0 : INV
    port map (
      I => hPos(31),
      O => Mcompar_RGB_cmp_ge0000_lut_13_3
    );
  Mcompar_RGB_cmp_ge0000_lut_7_191_INV_0 : INV
    port map (
      I => hPos(31),
      O => Mcompar_RGB_cmp_ge0000_lut_7_19
    );
  Mcompar_RGB_cmp_ge0000_lut_9_141_INV_0 : INV
    port map (
      I => hPos(31),
      O => Mcompar_RGB_cmp_ge0000_lut_9_14
    );
  Mcompar_RGB_cmp_ge0000_lut_9_191_INV_0 : INV
    port map (
      I => hPos(31),
      O => Mcompar_RGB_cmp_ge0000_lut_9_19
    );
  Mcompar_RGB_cmp_ge0001_lut_10_3_INV_0 : INV
    port map (
      I => vPos(31),
      O => Mcompar_RGB_cmp_ge0001_lut(10)
    );
  Mcompar_RGB_cmp_ge0001_lut_11_2_INV_0 : INV
    port map (
      I => vPos(31),
      O => Mcompar_RGB_cmp_ge0001_lut(11)
    );
  Mcompar_RGB_cmp_ge0001_lut_11_11_INV_0 : INV
    port map (
      I => vPos(31),
      O => Mcompar_RGB_cmp_ge0001_lut_11_1
    );
  Mcompar_RGB_cmp_ge0001_lut_7_61_INV_0 : INV
    port map (
      I => vPos(31),
      O => Mcompar_RGB_cmp_ge0001_lut_7_6
    );
  Mcompar_RGB_cmp_ge0001_lut_9_11_INV_0 : INV
    port map (
      I => vPos(31),
      O => Mcompar_RGB_cmp_ge0001_lut_9_1
    );
  Mcompar_RGB_cmp_ge0001_lut_9_31_INV_0 : INV
    port map (
      I => vPos(31),
      O => Mcompar_RGB_cmp_ge0001_lut_9_3
    );
  Mcompar_RGB_cmp_ge0001_lut_9_41_INV_0 : INV
    port map (
      I => vPos(31),
      O => Mcompar_RGB_cmp_ge0001_lut_9_4
    );
  Mcompar_videoOn_cmp_le0000_lut_10_23_INV_0 : INV
    port map (
      I => hPos_31_1_1884,
      O => Mcompar_videoOn_cmp_le0000_lut(10)
    );
  Mcompar_videoOn_cmp_le0000_lut_10_110_INV_0 : INV
    port map (
      I => hPos_31_1_1884,
      O => Mcompar_videoOn_cmp_le0000_lut_10_1
    );
  Mcompar_videoOn_cmp_le0000_lut_10_171_INV_0 : INV
    port map (
      I => hPos_31_1_1884,
      O => Mcompar_videoOn_cmp_le0000_lut_10_17
    );
  Mcompar_videoOn_cmp_le0000_lut_10_191_INV_0 : INV
    port map (
      I => hPos_31_1_1884,
      O => Mcompar_videoOn_cmp_le0000_lut_10_19
    );
  Mcompar_videoOn_cmp_le0000_lut_10_24_INV_0 : INV
    port map (
      I => hPos_31_1_1884,
      O => Mcompar_videoOn_cmp_le0000_lut_10_2
    );
  Mcompar_videoOn_cmp_le0000_lut_10_211_INV_0 : INV
    port map (
      I => hPos_31_1_1884,
      O => Mcompar_videoOn_cmp_le0000_lut_10_21
    );
  Mcompar_videoOn_cmp_le0000_lut_10_221_INV_0 : INV
    port map (
      I => hPos_31_1_1884,
      O => Mcompar_videoOn_cmp_le0000_lut_10_22
    );
  Mcompar_videoOn_cmp_le0000_lut_10_31_INV_0 : INV
    port map (
      I => hPos_31_1_1884,
      O => Mcompar_videoOn_cmp_le0000_lut_10_3
    );
  Mcompar_videoOn_cmp_le0000_lut_10_41_INV_0 : INV
    port map (
      I => hPos_31_1_1884,
      O => Mcompar_videoOn_cmp_le0000_lut_10_4
    );
  Mcompar_videoOn_cmp_le0000_lut_10_61_INV_0 : INV
    port map (
      I => hPos_31_1_1884,
      O => Mcompar_videoOn_cmp_le0000_lut_10_6
    );
  Mcompar_videoOn_cmp_le0000_lut_10_71_INV_0 : INV
    port map (
      I => hPos_31_1_1884,
      O => Mcompar_videoOn_cmp_le0000_lut_10_7
    );
  Mcompar_videoOn_cmp_le0000_lut_10_91_INV_0 : INV
    port map (
      I => hPos_31_1_1884,
      O => Mcompar_videoOn_cmp_le0000_lut_10_9
    );
  Mcompar_videoOn_cmp_le0000_lut_11_101_INV_0 : INV
    port map (
      I => hPos_31_1_1884,
      O => Mcompar_videoOn_cmp_le0000_lut_11_10
    );
  Mcompar_videoOn_cmp_le0000_lut_12_10_INV_0 : INV
    port map (
      I => hPos_31_1_1884,
      O => Mcompar_videoOn_cmp_le0000_lut(12)
    );
  Mcompar_videoOn_cmp_le0000_lut_12_11_INV_0 : INV
    port map (
      I => hPos_31_1_1884,
      O => Mcompar_videoOn_cmp_le0000_lut_12_1
    );
  Mcompar_videoOn_cmp_le0000_lut_12_21_INV_0 : INV
    port map (
      I => hPos_31_1_1884,
      O => Mcompar_videoOn_cmp_le0000_lut_12_2
    );
  Mcompar_videoOn_cmp_le0000_lut_12_41_INV_0 : INV
    port map (
      I => hPos_31_1_1884,
      O => Mcompar_videoOn_cmp_le0000_lut_12_4
    );
  Mcompar_videoOn_cmp_le0000_lut_12_61_INV_0 : INV
    port map (
      I => hPos_31_1_1884,
      O => Mcompar_videoOn_cmp_le0000_lut_12_6
    );
  Mcompar_videoOn_cmp_le0000_lut_12_71_INV_0 : INV
    port map (
      I => hPos_31_1_1884,
      O => Mcompar_videoOn_cmp_le0000_lut_12_7
    );
  Mcompar_videoOn_cmp_le0000_lut_12_81_INV_0 : INV
    port map (
      I => hPos_31_1_1884,
      O => Mcompar_videoOn_cmp_le0000_lut_12_8
    );
  Mcompar_videoOn_cmp_le0000_lut_12_91_INV_0 : INV
    port map (
      I => hPos_31_1_1884,
      O => Mcompar_videoOn_cmp_le0000_lut_12_9
    );
  Mcompar_videoOn_cmp_le0000_lut_14_2_INV_0 : INV
    port map (
      I => hPos_31_1_1884,
      O => Mcompar_videoOn_cmp_le0000_lut(14)
    );
  Mcompar_videoOn_cmp_le0000_lut_14_11_INV_0 : INV
    port map (
      I => hPos_31_1_1884,
      O => Mcompar_videoOn_cmp_le0000_lut_14_1
    );
  Mcompar_videoOn_cmp_le0000_lut_8_25_INV_0 : INV
    port map (
      I => hPos_31_1_1884,
      O => Mcompar_videoOn_cmp_le0000_lut(8)
    );
  Mcompar_videoOn_cmp_le0000_lut_9_24_INV_0 : INV
    port map (
      I => hPos_31_1_1884,
      O => Mcompar_videoOn_cmp_le0000_lut(9)
    );
  Mcompar_VSYNC_cmp_le0000_lut_10_8_INV_0 : INV
    port map (
      I => vPos(31),
      O => Mcompar_VSYNC_cmp_le0000_lut(10)
    );
  Mcompar_VSYNC_cmp_le0000_lut_10_11_INV_0 : INV
    port map (
      I => vPos(31),
      O => Mcompar_VSYNC_cmp_le0000_lut_10_1
    );
  Mcompar_VSYNC_cmp_le0000_lut_10_51_INV_0 : INV
    port map (
      I => vPos(31),
      O => Mcompar_VSYNC_cmp_le0000_lut_10_5
    );
  Mcompar_VSYNC_cmp_le0000_lut_10_61_INV_0 : INV
    port map (
      I => vPos(31),
      O => Mcompar_VSYNC_cmp_le0000_lut_10_6
    );
  Mcompar_VSYNC_cmp_le0000_lut_11_11_INV_0 : INV
    port map (
      I => vPos(31),
      O => Mcompar_VSYNC_cmp_le0000_lut_11_1
    );
  Mcompar_VSYNC_cmp_le0000_lut_11_21_INV_0 : INV
    port map (
      I => vPos(31),
      O => Mcompar_VSYNC_cmp_le0000_lut_11_2
    );
  Mcompar_VSYNC_cmp_le0000_lut_12_2_INV_0 : INV
    port map (
      I => vPos(31),
      O => Mcompar_VSYNC_cmp_le0000_lut(12)
    );
  Mcompar_VSYNC_cmp_le0000_lut_14_1_INV_0 : INV
    port map (
      I => vPos(31),
      O => Mcompar_VSYNC_cmp_le0000_lut(14)
    );
  Mcompar_VSYNC_cmp_le0000_lut_8_21_INV_0 : INV
    port map (
      I => vPos(31),
      O => Mcompar_VSYNC_cmp_le0000_lut_8_2
    );
  Mcompar_VSYNC_cmp_le0000_lut_8_71_INV_0 : INV
    port map (
      I => vPos(31),
      O => Mcompar_VSYNC_cmp_le0000_lut_8_7
    );
  Mcompar_VSYNC_cmp_le0000_lut_9_41_INV_0 : INV
    port map (
      I => vPos(31),
      O => Mcompar_VSYNC_cmp_le0000_lut_9_4
    );
  RGB_mux0007_0_41 : LUT3_D
    generic map(
      INIT => X"10"
    )
    port map (
      I0 => texto_0_IBUF_1922,
      I1 => texto_1_IBUF_1923,
      I2 => videoOn_1976,
      LO => N54,
      O => N6
    );
  RGB_and00251 : LUT4_D
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => RGB_cmp_ge0026,
      I1 => RGB_cmp_le0030,
      I2 => RGB_cmp_ge0025,
      I3 => RGB_cmp_le0029,
      LO => N55,
      O => RGB_and0025
    );
  RGB_or000215 : LUT4_L
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => RGB_cmp_ge0003,
      I1 => RGB_cmp_le0003,
      I2 => RGB_cmp_ge0002,
      I3 => RGB_cmp_le0002,
      LO => RGB_or000215_1747
    );
  RGB_or000279 : LUT4_L
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => RGB_cmp_ge0002,
      I1 => RGB_cmp_le0002,
      I2 => RGB_cmp_ge0012,
      I3 => RGB_cmp_le0012,
      LO => RGB_or000279_1754
    );
  RGB_or000250 : LUT3_L
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => RGB_cmp_le0013,
      I1 => RGB_cmp_ge0013,
      I2 => N2,
      LO => RGB_or000250_1752
    );
  RGB_or0002116_SW2 : LUT4_L
    generic map(
      INIT => X"F4F5"
    )
    port map (
      I0 => texto_1_IBUF_1923,
      I1 => RGB_not000119_1745,
      I2 => RGB_not00017_1746,
      I3 => RGB_or000217_1748,
      LO => N14
    );
  RGB_mux0007_0_517 : LUT4_L
    generic map(
      INIT => X"FFF8"
    )
    port map (
      I0 => RGB_cmp_ge0016,
      I1 => RGB_cmp_le0019,
      I2 => RGB_mux0007_0_54_1739,
      I3 => RGB_mux0007_0_515_1736,
      LO => RGB_mux0007_0_517_1737
    );
  RGB_mux0007_7_8 : LUT4_L
    generic map(
      INIT => X"FF80"
    )
    port map (
      I0 => RGB_mux0007_7_1_1742,
      I1 => RGB_cmp_le0032,
      I2 => RGB_cmp_le0031,
      I3 => N23,
      LO => RGB_mux0007_7_8_1743
    );
  RGB_mux0007_2_1_SW2 : LUT4_L
    generic map(
      INIT => X"0057"
    )
    port map (
      I0 => RGB_cmp_ge0001,
      I1 => RGB_or000287_1755,
      I2 => RGB_or000266_1753,
      I3 => N31,
      LO => N29
    );
  RGB_mux0007_3_1_SW0 : LUT4_L
    generic map(
      INIT => X"CDEF"
    )
    port map (
      I0 => RGB_or000266_1753,
      I1 => N61,
      I2 => N33,
      I3 => N34,
      LO => N25
    );
  RGB_and002211_SW0 : LUT3_L
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => texto_1_IBUF_1923,
      I1 => videoOn_1976,
      I2 => RGB_cmp_le0025,
      LO => N36
    );
  RGB_mux0007_7_25_SW0 : LUT4_L
    generic map(
      INIT => X"F1E0"
    )
    port map (
      I0 => RGB_or000287_1755,
      I1 => RGB_or000266_1753,
      I2 => N43,
      I3 => N42,
      LO => N38
    );
  RGB_mux0007_1_SW3 : LUT4_L
    generic map(
      INIT => X"F1E0"
    )
    port map (
      I0 => RGB_or000287_1755,
      I1 => RGB_or000266_1753,
      I2 => N46,
      I3 => N45,
      LO => N40
    );
  RGB_mux0007_0_1_SW0 : LUT4_L
    generic map(
      INIT => X"F0E4"
    )
    port map (
      I0 => RGB_or000217_1748,
      I1 => N8,
      I2 => N9,
      I3 => N48,
      LO => N27
    );

end Structure;

