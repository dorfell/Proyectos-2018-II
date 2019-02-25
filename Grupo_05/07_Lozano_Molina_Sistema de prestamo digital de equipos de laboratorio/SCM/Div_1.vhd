library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
	
entity Div_1 is

port( 
	rst : in std_logic;
	clk : in std_logic;
	clk_1 : out std_logic
);

end Div_1;

architecture Behavioral of Div_1 is

signal r_out, r_in : std_logic_vector(4 downto 0) := (others => '0');

begin

r_in <= (others=>'0') when r_out >= x"15" else r_out+1;
clk_1 <= '1' when r_out >= x"B" else '0';

process (clk,rst)
begin
	if rst = '1' then
		r_out <= (others=>'0');
	elsif (clk'event and clk = '1') then
		r_out <= r_in;
	end if;
end process;

end Behavioral;

