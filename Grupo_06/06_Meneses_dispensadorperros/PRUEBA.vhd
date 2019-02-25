library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity PRUEBA is  
port (
echo_count : in STD_LOGIC_VECTOR (19 downto 0);
distance : out  STD_LOGIC_VECTOR (3 downto 0);
anodo : out STD_LOGIC_VECTOR (3 downto 0)
);
end PRUEBA;

architecture Behavioral of PRUEBA is

begin

   if (echo_count< '2900') then
      distance => "0000";
		anodo => "0001";
   elsif <condition> then
      <statement>
   else
      <statement>
   end if;

end Behavioral;

