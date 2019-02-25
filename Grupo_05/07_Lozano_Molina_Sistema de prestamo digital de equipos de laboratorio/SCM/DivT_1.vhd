

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

entity DivT_1 is
port(
	rst : in std_logic;
	clk : in std_logic;
	clk1 : out std_logic
);
end DivT_1;

architecture Behavioral of DivT_1 is

signal r_out, r_in : std_logic_vector(19 downto 0):=( others =>'0');

begin

r_in <= (others=>'0') when r_out = x"F4240" else r_out+1; --cuenta hasta un millon
clk1 <= '1' when r_out >= x"7A120" else '0'; --cuenta hasta medio millon

process (clk,rst)
begin  
   if rst = '1' then
      r_out<=(others=>'0');
   elsif (clk'event and clk = '1') then
      r_out<=r_in;
   end if;
end process;

end Behavioral;