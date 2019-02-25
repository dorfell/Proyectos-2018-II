library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity display is
    Port ( distance_in : in  STD_LOGIC_VECTOR (3 downto 0);
           display_out : out  STD_LOGIC_VECTOR (6 downto 0));
end display;

architecture Behavioral of display is

begin

display_out <="0000000" when distance_in = "0000" else 
  "1111001" when distance_in = "0001" else
  "0100100" when distance_in = "0010" else
  "0110000" when distance_in = "0011" else
  "0011001" when distance_in = "0100" else
  "0010010" when distance_in = "0101" else
  "0000010" when distance_in = "0110" else
  "0111000" when distance_in = "0111" else
  "0000000" when distance_in = "1000" else
  "0011000" when distance_in = "1001" else
  "1000000";

end Behavioral;
