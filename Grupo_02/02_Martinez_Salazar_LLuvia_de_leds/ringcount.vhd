----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:23:14 02/18/2019 
-- Design Name: 
-- Module Name:    ringcount - Behavioral 
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

--declare how the counter will activate the colums

entity ringcount is
Port(input: in std_logic_vector(3 downto 0);
     output: out std_logic_vector(7 downto 0));
end ringcount;

--when each colum gets activate

architecture Behavioral of ringcount is
begin
process(input)
begin
case input is 
when "0000" => output <= "01111111";
when "0001" => output <= "10111111";
when "0010" => output <= "11011111";
when "0011" => output <= "11101111";
when "0100" => output <= "11110111";
when "0101" => output <= "11111011";
when "0110" => output <= "11111101";
when "0111" => output <= "11111110";
when others => output <= "11111111";
end case;
end process;

end Behavioral;

