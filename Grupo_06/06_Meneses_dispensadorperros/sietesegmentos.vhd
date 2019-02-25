----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:15:46 02/21/2018 
-- Design Name: 
-- Module Name:    sietesegmentos - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity sietesegmentos is

port(--filas: in std_logic_vector(3 downto 0); --Puertos de entrada
     --columnas: in std_logic_vector(2 downto 0);
	 keyboard: in std_logic_vector(7 downto 0);
     comun :     out std_logic_vector (3 downto 0);            --Puertos de salida
      disp :     out std_logic_vector (6 downto 0)); 
end sietesegmentos;

architecture Behavioral of sietesegmentos is



begin

			 
process (keyboard)    --Asignar proceso entrada-salida
begin
   case keyboard is             -- abcdefg
      when "10001000" => disp <= "1001111"; --1
      when "01001000" => disp <= "0010010"; --2
      when "00101000" => disp <= "0000110"; --3
      when "10000100" => disp <= "1001100"; --4
      when "01000100" => disp <= "0100100"; --5
      when "00100100" => disp <= "0100000"; --6
      when "10000010" => disp <= "0001111"; --7
      when "01000010" => disp <= "0000000";--8
		when "00100010" => disp <= "0000100";--9
      when "10000001" => disp <= "1111110"; --raya
      when "01000001" => disp <= "0000001";--0
      when "00100001" => disp <= "0111111";--raya arriba
		when "00011000" => disp <= "0001000";--a
      when "00010100" => disp <= "0000000"; --b
      when "00010010" => disp <= "0110001";--c
      when "00010001" => disp <= "1000010";--d
      when others => disp    <= "1111111";
   end case;
end process;

comun <= "1110";--Activa solo 1 display

end Behavioral;

