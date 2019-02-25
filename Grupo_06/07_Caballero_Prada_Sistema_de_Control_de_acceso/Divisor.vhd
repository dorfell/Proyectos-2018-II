library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity Divisor is
	Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
			  enable : out STD_LOGIC
			 );
end Divisor;

architecture Behavioral of Divisor is

signal dd, qq : STD_LOGIC_VECTOR(26 downto 0):=(others=>'0');

begin

dd <=(others=>'0') when qq=x"5F5E100" else qq+1;
enable <= '1' when qq=x"5F5E100" else '0';


process (clk,reset)
	begin
		if (reset='1') then 
			qq <= (others=>'0');
		elsif (clk'event and clk='1') then  
			qq <= dd;
		end if;
end process;

end Behavioral;

