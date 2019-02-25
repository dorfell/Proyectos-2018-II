----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:00:53 11/08/2018 
-- Design Name: 
-- Module Name:    reloj - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity reloj is
port(

clk, segundo : in std_logic;
buzzer : out std_logic;
start: in std_logic;
rst :in std_logic;
hora : out std_logic_vector(127 downto 0);
hh : out std_logic_vector (4 downto 0));
end reloj;

architecture Behavioral of reloj is

type states is (s0,s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s20,s21,s22,s23,s24);
signal present_state, next_state: states;

begin
--===================
-- Present State
--===================
process(clk, rst, segundo)
begin
if rst = '1' then
present_state <= s0;
elsif (clk'event and clk='1') then
if segundo='1' then
present_state <= next_state;
else
present_state <= present_state;
end if;
end if;
end process;

--===================
-- Next state logic
--===================
process(present_state, start)
begin
case present_state is
when s0 =>
if (start = '1') then
next_state <= s1;
ELSE 
NEXT_STATE <=s0;
end if;

when s1 =>
next_state <= s2;
when s2 =>
next_state <= s3;
when s3 =>
next_state <= s4;
when s4 =>
next_state <= s5;
when s5 =>
next_state <= s6;
when s6 =>
next_state <= s7;
when s7 =>
next_state <= s8;
when s8 =>
next_state <= s9;
when s9 =>
next_state <= s10;
when s10 =>
next_state <= s11;
when s11 =>
next_state <= s12;
when s12 =>
next_state <= s13;
when s13 =>
next_state <= s14;
when s14 =>
next_state <= s15;
when s15 =>
next_state <= s16;
when s16 =>
next_state <= s17;
when s17 =>
next_state <= s18;
when s18 =>
next_state <= s19;
when s19 =>
next_state <= s20;
when s20 =>
next_state <= s21;
when s21 =>
next_state <= s22;
when s22 =>
next_state <= s23;
when s23 =>
next_state <= s24;
when s24 =>
next_state <= s1;
end case;
end process;
--===================
-- Output logic
--===================
process(present_state)
begin
case present_state is
when s0 =>
hora <= x"2020202020484F52413A2030303A3030";
hh<= "00000";
buzzer <= '0';
when s1 =>
hora <= x"2020202020484F52413A2030313A3030";
hh<= "00001";
buzzer <= '0';
when s2 =>
hora <= x"2020202020484F52413A2030323A3030";
hh<= "00010";
buzzer <= '0';
when s3 =>
hora <= x"2020202020484F52413A2030333A3030";
hh<= "00011";
buzzer <= '0';
when s4 =>
hora <= x"2020202020484F52413A2030343A3030";
hh<= "00100";
buzzer <= '0';
when s5 =>
hora <= x"2020202020484F52413A2030353A3030";
hh<= "00101";
buzzer <= '0';
when s6 =>
hora <= x"2020202020484F52413A2030363A3030";
buzzer <= '1';
hh<= "00110";
when s7 =>
hora <= x"2020202020484F52413A2030373A3030";
hh<= "00111";
buzzer <= '0';
when s8 =>
hora <= x"2020202020484F52413A2030383A3030";
hh<= "01000";
buzzer <= '0';
when s9 =>
hora <= x"2020202020484F52413A2030393A3030";
hh<= "01001";
buzzer <= '0';
when s10 =>
hora <= x"2020202020484F52413A2031303A3030";
hh<= "01010";
buzzer <= '0';
when s11 =>
hora <= x"2020202020484F52413A2031313A3030";
hh<= "01011";
buzzer <= '0';
when s12 =>
hora <= x"2020202020484F52413A2031323A3030";
hh<= "01100";
buzzer <= '0';
when s13 =>
hora <= x"2020202020484F52413A2031333A3030";
hh<= "01101";
buzzer <= '0';
when s14 =>
hora <= x"2020202020484F52413A2031343A3030";
hh<= "01110";
buzzer <= '0';
when s15 =>
hora <= x"2020202020484F52413A2031353A3030";
hh<= "01111";
buzzer <= '0';
when s16 =>
hora <= x"2020202020484F52413A2031363A3030";
hh<= "10000";
buzzer <= '0';
when s17=>
hora <= x"2020202020484F52413A2031373A3030";
hh<= "10001";
buzzer <= '0';
when s18 =>
hora <= x"2020202020484F52413A2031383A3030";
hh<= "10010";
buzzer <= '0';
when s19 =>
hora <= x"2020202020484F52413A2031393A3030";
hh<= "10011";
buzzer <= '0';
when s20 =>
hora <= x"2020202020484F52413A2032303A3030";
hh<= "10100";
buzzer <= '1';
when s21 =>
hora <= x"2020202020484F52413A2032313A3030";
hh<= "10101";
buzzer <= '0';
when s22 =>
hora <= x"2020202020484F52413A2032323A3030";
hh<= "10110";
buzzer <= '0';
when s23 =>
hora <= x"2020202020484F52413A2032333A3030";
hh<= "10111";
buzzer <= '0';
when s24 =>
hora <= x"2020202020484F52413A2030303A3030";
hh<= "00000";
buzzer <= '0';
end case;
end process;
end Behavioral;

