library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
--CONTADOR HASTA 10 (SEÑALES DE CLOCK)

-- Div_freq cuenta hasta M usando un número binario de N bits (N = sup (log2 M))
-- al llegar a M la salida max_tick indica que ya se llegó al máximo y 
-- luego reinicia el conteo

entity GeneralCounter is
	generic(
		N: integer := 4;
		M: integer := 10
	);
	
	port(
		--M: in STD_LOGIC_VECTOR(N-1 DOWNTO 0);
		enable: in STD_LOGIC;
		clk, reset: in STD_LOGIC; 
		q: out STD_LOGIC_VECTOR(N-1 DOWNTO 0) -- MSB--LSB
		--max_tick: out STD_LOGIC
	);
end GeneralCounter;



architecture Behavioral of GeneralCounter is

signal r_reg: unsigned(N-1	 DOWNTO 0);
signal r_next: unsigned(N-1 DOWNTO 0);
signal Mconv: integer;

begin
--register
	
	process(clk, reset, enable)
	begin
		if (enable = '0') then
			r_reg <= (others => '0');
		elsif (reset = '1') then
			r_reg <= (others => '0');
		elsif (rising_edge(clk)) then
			r_reg <= r_next; 
		end if;
	end process;
	
--Mconv <= to_integer(signed(M));
Mconv <= M;

r_next <= (others => '0') when r_reg = (Mconv-1) 
			else r_reg +1;
q <= STD_LOGIC_VECTOR(r_reg);
--max_tick <= '1' when r_reg = (Mconv-1) else '0';
end Behavioral;
