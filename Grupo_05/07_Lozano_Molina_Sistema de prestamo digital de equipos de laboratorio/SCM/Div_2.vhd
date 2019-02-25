library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Div_2 is

port(
	rst: in std_logic; 
	clk: in std_logic; 
	clk1 : in std_logic;
	clk_2 : out std_logic
);

end Div_2;

architecture Behavioral of Div_2 is

signal r_out, r_in : std_logic_vector(6 downto 0) := (others=>'0'); 
signal i : std_logic_vector (0 downto 0) := (others => '0');

begin

r_in <= (others => '0') when r_out >= x"40" else r_out+1; --64
clk_2 <= '0' when r_out >= x"1" else '1'; -- 1

process (clk,rst,clk1)
begin
	if rst = '1' then
      r_out<=(others=>'0');
   elsif(clk'event and clk = '1')then
		if ( clk1 = '0' and i = 0) then
				r_out<=r_in;
				i <= (others => '1');
		elsif(clk1 = '1')then
				i <= (others => '0');
		end if;	
   end if;
end process;
 
end Behavioral;
