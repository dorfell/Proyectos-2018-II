library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity mod12bit is
	generic(
		N: integer := 12;
		M: integer := 786432
--		N: integer := 3;
--		M: integer := 5
	);
	
	port(
		--M: in STD_LOGIC_VECTOR(N-1 DOWNTO 0);
		enable: in STD_LOGIC;
		clk, reset: in STD_LOGIC; 
		q: out STD_LOGIC_VECTOR(N-1 DOWNTO 0); -- MSB--LSB
		max_tick: out STD_LOGIC
	); 
end mod12bit;



architecture Behavioral of mod12bit is

signal r_reg: unsigned(N-1 DOWNTO 0);
signal r_next: unsigned(N-1 DOWNTO 0);
signal Mconv: integer;

begin
--register
	
	process(clk, reset, enable)
	begin
		if (enable = '0') then  --enable cero entonces todo es cero
			r_reg <= (others => '0');
		elsif (reset = '1') then  --enable no cero  y resert 1 entonces todo es cero
			r_reg <= (others => '0');
		elsif (rising_edge(clk)) then -- enable no cero y reset 0 entonces cuenta
			r_reg <= r_next; 
		end if;
	end process;
	
--Mconv <= to_integer(signed(M));
Mconv <= M;

r_next <= (others => '0') when r_reg = (Mconv-1) 
			else r_reg +1; 
q <= STD_LOGIC_VECTOR(r_reg);
max_tick <= '1' when r_reg = (Mconv-1) else '0';
end Behavioral;