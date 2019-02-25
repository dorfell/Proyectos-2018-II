library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity Contador_seg is
		--generic(
			--enable: STD_LOGIC := '1'
			--);
			
		port(
			clk, reset: in STD_LOGIC;
			enable: in STD_LOGIC;
			seg_output: out STD_LOGIC_VECTOR(3 DOWNTO 0)
		);
		 
end Contador_seg;
architecture Behavioral of Contador_seg is
signal x1: STD_LOGIC; 
signal clk2, clk3: STD_LOGIC; 
signal output: STD_LOGIC_VECTOR(3 DOWNTO 0);
signal max_tick: STD_LOGIC;

begin


--process(clk)
--begin
--	if (rising_edge(clk)) then
--		if reset = '1' then
--			clk2 <= '0';
--		else
--			clk2<='1';
--		end if;
--	else
--		clk2 <= '0';
--	end if;
--end process;

clk2 <= not(not(clk));
d1: entity work.mod12bit(Behavioral)
	port map (
		enable => enable,
		clk => clk2, 
		reset => reset,
		max_tick => x1
	);	
	
clk3 <= not(not(x1));

d3: entity work.GeneralCounter(Behavioral)
	port map (
		enable => enable,
		clk => clk3,
		reset => reset,
		q => output
	);	
	
seg_output <=	output;
end Behavioral;

