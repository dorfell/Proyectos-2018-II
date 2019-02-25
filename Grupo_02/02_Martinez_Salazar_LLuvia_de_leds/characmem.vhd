----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:00:27 02/18/2019 
-- Design Name: 
-- Module Name:    characmem - Behavioral 
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
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

-- how the different characters are reproduce in the matrix

entity characmem is
Port(charselect: in std_logic_vector(4 downto 0);
     adress: in std_logic_vector(7 downto 0);
	  charac: out std_logic_vector(7 downto 0));
end characmem;

--how are the characters

architecture Behavioral of characmem is
begin
process(charselect,adress)
begin
if charselect="00000" then
case adress is --0
when "01111111" => charac <= "00000000";
when "10111111" => charac <= "01111110";
when "11011111" => charac <= "01000010";
when "11101111" => charac <= "01000010";
when "11110111" => charac <= "01000010";
when "11111011" => charac <= "01000010";
when "11111101" => charac <= "01111110";
when "11111110" => charac <= "00000000";
when others => charac <= "00000000";
end case;
elsif charselect="00001" then
case adress is --1
when "01111111" => charac <= "00000000";
when "10111111" => charac <= "00011000";
when "11011111" => charac <= "00101000";
when "11101111" => charac <= "00001000";
when "11110111" => charac <= "00001000";
when "11111011" => charac <= "00001000";
when "11111101" => charac <= "00111110";
when "11111110" => charac <= "00000000";
when others => charac <= "00000000";
end case;
elsif charselect="00010" then
case adress is --2
when "01111111" => charac <= "00000000";
when "10111111" => charac <= "00000000";
when "11011111" => charac <= "01001110";
when "11101111" => charac <= "01001010";
when "11110111" => charac <= "01001010";
when "11111011" => charac <= "01111010";
when "11111101" => charac <= "00000000";
when "11111110" => charac <= "00000000";
when others => charac <= "00000000";
end case;
elsif charselect="00011" then
case adress is --3
when "01111111" => charac <= "00000000";
when "10111111" => charac <= "00000000";
when "11011111" => charac <= "01001010";
when "11101111" => charac <= "01001010";
when "11110111" => charac <= "01001010";
when "11111011" => charac <= "01111110";
when "11111101" => charac <= "00000000";
when "11111110" => charac <= "00000000";
when others => charac <= "00000000";
end case;
elsif charselect="00100" then
case adress is --4
when "01111111" => charac <= "00000000";
when "10111111" => charac <= "00000000";
when "11011111" => charac <= "01111000";
when "11101111" => charac <= "00001000";
when "11110111" => charac <= "00001000";
when "11111011" => charac <= "01111110";
when "11111101" => charac <= "00000000";
when "11111110" => charac <= "00000000";
when others => charac <= "00000000";
end case;
elsif charselect="00101" then
case adress is --5
when "01111111" => charac <= "00000000";
when "10111111" => charac <= "00000000";
when "11011111" => charac <= "01110010";
when "11101111" => charac <= "01010010";
when "11110111" => charac <= "01010010";
when "11111011" => charac <= "01011110";
when "11111101" => charac <= "00000000";
when "11111110" => charac <= "00000000";
when others => charac <= "00000000";
end case;
elsif charselect="00110" then
case adress is --6
when "01111111" => charac <= "00000000";
when "10111111" => charac <= "00000000";
when "11011111" => charac <= "01111110";
when "11101111" => charac <= "01010010";
when "11110111" => charac <= "01010010";
when "11111011" => charac <= "01011110";
when "11111101" => charac <= "00000000";
when "11111110" => charac <= "00000000";
when others => charac <= "00000000";
end case;
elsif charselect="00111" then
case adress is --7
when "01111111" => charac <= "00000000";
when "10111111" => charac <= "00000000";
when "11011111" => charac <= "01000000";
when "11101111" => charac <= "01000000";
when "11110111" => charac <= "01000000";
when "11111011" => charac <= "01111110";
when "11111101" => charac <= "00000000";
when "11111110" => charac <= "00000000";
when others => charac <= "00000000";
end case;
elsif charselect="01000" then
case adress is --8
when "01111111" => charac <= "00000000";
when "10111111" => charac <= "00000000";
when "11011111" => charac <= "01111110";
when "11101111" => charac <= "01010010";
when "11110111" => charac <= "01010010";
when "11111011" => charac <= "01111110";
when "11111101" => charac <= "00000000";
when "11111110" => charac <= "00000000";
when others => charac <= "00000000";
end case;
elsif charselect="01001" then
case adress is --9
when "01111111" => charac <= "00000000";
when "10111111" => charac <= "00000000";
when "11011111" => charac <= "01110010";
when "11101111" => charac <= "01010010";
when "11110111" => charac <= "01010010";
when "11111011" => charac <= "01111110";
when "11111101" => charac <= "00000000";
when "11111110" => charac <= "00000000";
when others => charac <= "00000000";
end case;
elsif charselect="01010" then
case adress is --A
when "01111111" => charac <= "00000000";
when "10111111" => charac <= "00111110";
when "11011111" => charac <= "01001000";
when "11101111" => charac <= "01001000";
when "11110111" => charac <= "01001000";
when "11111011" => charac <= "01001000";
when "11111101" => charac <= "00111110";
when "11111110" => charac <= "00000000";
when others => charac <= "00000000";
end case;
elsif charselect="01011" then
case adress is --B
when "01111111" => charac <= "00000000";
when "10111111" => charac <= "01111110";
when "11011111" => charac <= "01010010";
when "11101111" => charac <= "01010010";
when "11110111" => charac <= "01010010";
when "11111011" => charac <= "01010010";
when "11111101" => charac <= "00101100";
when "11111110" => charac <= "00000000";
when others => charac <= "00000000";
end case;
elsif charselect="01100" then
case adress is --C
when "01111111" => charac <= "00000000";
when "10111111" => charac <= "01111110";
when "11011111" => charac <= "01000000";
when "11101111" => charac <= "01000000";
when "11110111" => charac <= "01000000";
when "11111011" => charac <= "01000000";
when "11111101" => charac <= "01111110";
when "11111110" => charac <= "00000000";
when others => charac <= "00000000";
end case;
elsif charselect="01101" then
case adress is --D
when "01111111" => charac <= "00000000";
when "10111111" => charac <= "01111110";
when "11011111" => charac <= "01000010";
when "11101111" => charac <= "01000010";
when "11110111" => charac <= "01000010";
when "11111011" => charac <= "01000010";
when "11111101" => charac <= "00111100";
when "11111110" => charac <= "00000000";
when others => charac <= "00000000";
end case;
elsif charselect="01110" then
case adress is --#------------1
when "01111111" => charac <= "01000001";
when "10111111" => charac <= "10000001";
when "11011111" => charac <= "01000001";
when "11101111" => charac <= "10000001";
when "11110111" => charac <= "01000001";
when "11111011" => charac <= "10000001";
when "11111101" => charac <= "01000001";
when "11111110" => charac <= "10000001";
when others => charac <= "00000000";
end case;
elsif charselect="01111" then
case adress is --X
when "01111111" => charac <= "00000000";
when "10111111" => charac <= "01000010";
when "11011111" => charac <= "00100100";
when "11101111" => charac <= "00011000";
when "11110111" => charac <= "00011000";
when "11111011" => charac <= "00100100";
when "11111101" => charac <= "01000010";
when "11111110" => charac <= "00000000";
when others => charac <= "00000000";
end case;
elsif charselect="10000" then
case adress is 
when "01111111" => charac <= "10000000";
when "10111111" => charac <= "00000000";
when "11011111" => charac <= "00000000";
when "11101111" => charac <= "00000000";
when "11110111" => charac <= "00000000";
when "11111011" => charac <= "00000000";
when "11111101" => charac <= "00000000";
when "11111110" => charac <= "00000001";
when others => charac <= "00000000";
end case;
elsif charselect="10001" then
case adress is 
when "01111111" => charac <= "11000000";
when "10111111" => charac <= "00000000";
when "11011111" => charac <= "00000000";
when "11101111" => charac <= "00000000";
when "11110111" => charac <= "00000000";
when "11111011" => charac <= "00000000";
when "11111101" => charac <= "00000000";
when "11111110" => charac <= "00000011";
when others => charac <= "00000000";
end case;
elsif charselect="10010" then
case adress is 
when "01111111" => charac <= "11100000";
when "10111111" => charac <= "00000000";
when "11011111" => charac <= "00000000";
when "11101111" => charac <= "00000000";
when "11110111" => charac <= "00000000";
when "11111011" => charac <= "00000000";
when "11111101" => charac <= "00000000";
when "11111110" => charac <= "00000111";
when others => charac <= "00000000";
end case;
elsif charselect="10011" then
case adress is 
when "01111111" => charac <= "11110000";
when "10111111" => charac <= "00000000";
when "11011111" => charac <= "00000000";
when "11101111" => charac <= "00000000";
when "11110111" => charac <= "00000000";
when "11111011" => charac <= "00000000";
when "11111101" => charac <= "00000000";
when "11111110" => charac <= "00001111";
when others => charac <= "00000000";
end case;
elsif charselect="10100" then
case adress is 
when "01111111" => charac <= "11111000";
when "10111111" => charac <= "00000000";
when "11011111" => charac <= "00000000";
when "11101111" => charac <= "00000000";
when "11110111" => charac <= "00000000";
when "11111011" => charac <= "00000000";
when "11111101" => charac <= "00000000";
when "11111110" => charac <= "00011111";
when others => charac <= "00000000";
end case;
elsif charselect="10101" then
case adress is 
when "01111111" => charac <= "11111100";
when "10111111" => charac <= "00000000";
when "11011111" => charac <= "00000000";
when "11101111" => charac <= "00000000";
when "11110111" => charac <= "00000000";
when "11111011" => charac <= "00000000";
when "11111101" => charac <= "00000000";
when "11111110" => charac <= "00111111";
when others => charac <= "00000000";
end case;
elsif charselect="10110" then
case adress is 
when "01111111" => charac <= "11111110";
when "10111111" => charac <= "00000000";
when "11011111" => charac <= "00000000";
when "11101111" => charac <= "00000000";
when "11110111" => charac <= "00000000";
when "11111011" => charac <= "00000000";
when "11111101" => charac <= "00000000";
when "11111110" => charac <= "01111111";
when others => charac <= "00000000";
end case;
elsif charselect="10111" then
case adress is 
when "01111111" => charac <= "11111111";
when "10111111" => charac <= "00000000";
when "11011111" => charac <= "00000000";
when "11101111" => charac <= "00000000";
when "11110111" => charac <= "00000000";
when "11111011" => charac <= "00000000";
when "11111101" => charac <= "00000000";
when "11111110" => charac <= "11111111";
when others => charac <= "00000000";
end case;
elsif charselect="11000" then
case adress is 
when "01111111" => charac <= "11111111";
when "10111111" => charac <= "00000001";
when "11011111" => charac <= "00000000";
when "11101111" => charac <= "00000000";
when "11110111" => charac <= "00000000";
when "11111011" => charac <= "00000000";
when "11111101" => charac <= "10000000";
when "11111110" => charac <= "11111111";
when others => charac <= "00000000";
end case;
--end process
else
case adress is --blackout
when "01111111" => charac <= "00000000";
when "10111111" => charac <= "00000000";
when "11011111" => charac <= "00000000";
when "11101111" => charac <= "00000000";
when "11110111" => charac <= "00000000";
when "11111011" => charac <= "00000000";
when "11111101" => charac <= "00000000";
when "11111110" => charac <= "00000000";
when others => charac <= "00000000";
end case;
end if;
end process;

end Behavioral;

