----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:31:41 11/01/2018 
-- Design Name: 
-- Module Name:    decodificador - Behavioral 
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

entity decodificador is
    Port ( datos : in  STD_LOGIC_VECTOR (15 downto 0);
           display : out  STD_LOGIC_VECTOR (6 downto 0);
           anodo : out  STD_LOGIC_VECTOR (3 downto 0));
end decodificador;

architecture Behavioral of decodificador is

begin	     
		  
	case datos is			
			when "0000" => display <= x"C0"; -- 0
			when "0001" => display <= x"F9"; -- 1
			when "0010" => display <= x"A4"; -- 2
			when "0011" => display <= x"B0"; -- 3
			when "0100" => display <= x"99"; -- 4
			when "0101" => display <= x"92"; -- 5
			when "0110" => display <= x"82"; -- 6
			when "0111" => display <= x"F8"; -- 7
			when "1000" => display <= x"80"; -- 8
			when "1001" => display <= x"98"; -- 9
			when "1010" => display <= x"88"; -- A
			when "1011" => display <= x"83"; -- B
			when "1100" => display <= x"C6"; -- C
			when "1101" => display <= x"A1"; -- D
			when "1110" => display <= x"86"; -- E
		 --when others => salida <= x"8E"; -- F
			when others => display <= x"BF"; -- signo menos
		end case;
						
	anodo <= "1110";


end Behavioral;

