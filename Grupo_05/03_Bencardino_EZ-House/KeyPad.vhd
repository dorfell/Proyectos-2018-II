----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12.02.2019 21:33:18
-- Design Name: 
-- Module Name: KeyPad - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity KeyPad is
    Port (
		  clk,reset : in  STD_LOGIC;
          Row : in  STD_LOGIC_VECTOR (3 downto 0);
		  Col : out  STD_LOGIC_VECTOR (3 downto 0);
          DecodeOut : out  STD_LOGIC_VECTOR (7 downto 0));
end KeyPad;

architecture Behavioral of KeyPad is

signal sclk, sclk_next :STD_LOGIC_VECTOR(19 downto 0);
begin
	
	process(clk, reset)
		begin 
		if reset = '1' THEN
		    sclk <= (others => '0');
		elsif (clk'event AND clk = '1') then
			-- 1ms
			if sclk = "00011000011010100000" then 
				--C1
				Col<= "0111";
				sclk <= sclk+1;
			-- check row pins
			elsif sclk = "00011000011010101000" then	
				--R1
				if Row = "0111" then
					DecodeOut <= X"31";	--1
				--R2
				elsif Row = "1011" then
					DecodeOut <= X"34"; --4
				--R3
				elsif Row = "1101" then
					DecodeOut <= X"37"; --7
				--R4
				elsif Row = "1110" then
					DecodeOut <= X"46"; --F
				end if;
				sclk <= sclk+1;
			-- 2ms
			elsif sclk = "00110000110101000000" then	
				--C2
				Col<= "1011";
				sclk <= sclk+1;
			-- check row pins
			elsif sclk = "00110000110101001000" then	
				--R1
				if Row = "0111" then		
					DecodeOut <= X"32"; --2
				--R2
				elsif Row = "1011" then
					DecodeOut <= X"35"; --5
				--R3
				elsif Row = "1101" then
					DecodeOut <= X"38"; --8
				--R4
				elsif Row = "1110" then
					DecodeOut <= X"30"; --0
				end if;
				sclk <= sclk+1;	
			--3ms
			elsif sclk = "01001001001111100000" then 
				--C3
				Col<= "1101";
				sclk <= sclk+1;
			-- check row pins
			elsif sclk = "01001001001111101000" then 
				--R1
				if Row = "0111" then
					DecodeOut <= X"33"; --3	
				--R2
				elsif Row = "1011" then
					DecodeOut <= X"36"; --6
				--R3
				elsif Row = "1101" then
					DecodeOut <= X"39"; --9
				--R4
				elsif Row = "1110" then
					DecodeOut <= X"45"; --E
				end if;
				sclk <= sclk+1;
			--4ms
			elsif sclk = "01100001101010000000" then 			
				--C4
				Col<= "1110";
				sclk <= sclk+1;
			-- check row pins
			elsif sclk = "01100001101010001000" then 
				--R1
				if Row = "0111" then
					DecodeOut <= X"41"; --A
				--R2
				elsif Row = "1011" then
					DecodeOut <= X"42"; --B
				--R3
				elsif Row = "1101" then
					DecodeOut <= X"43"; --C
				--R4
				elsif Row = "1110" then
					DecodeOut <= X"44"; --D
				end if;
				sclk <= "00000000000000000000";	
			else
				sclk <= sclk+1;	
			end if;
		end if;
	end process;
		
		
						 
end Behavioral;

