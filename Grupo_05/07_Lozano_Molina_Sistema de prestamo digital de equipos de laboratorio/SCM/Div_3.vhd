library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Div_3 is

port (
	clk : in std_logic; 
	rst : in std_logic; 
	vrst : in std_logic;
	SCM_rst : in std_logic;
	clk_3 : out std_logic
);

end Div_3;

architecture Behavioral of Div_3 is

signal r_out, r_in : std_logic_vector(23 downto 0) := (others => '0');

begin

r_in <= (others=>'0') when r_out = x"B71B00" else r_out+1;
clk_3 <= '1' when r_out = x"B71B00" else '0';

process (clk,rst,vrst,SCM_rst) 
begin
	if rst = '1' OR vrst ='1' OR SCM_rst ='1' then
		r_out <= (others=>'0');
	elsif (clk'event and clk = '1') then
		r_out <= r_in;
	end if;
end process;

end Behavioral;