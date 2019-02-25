library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity cronometro is

port (clk_seg: 	in STD_LOGIC;
		clk_50: 	in STD_LOGIC;
		reset: in STD_LOGIC;
		boton1: in STD_LOGIC_vector(3 downto 0);
		crono : in std_logic;
		h1_c : out INTEGER;
		h2_c : out INTEGER;
		m1_c : out INTEGER;
		m2_c : out INTEGER;
		s1_c : out INTEGER;
		s2_c :out INTEGER);

end cronometro;

architecture Behavioral of cronometro is
	
   shared variable seg1, seg2, hora1, hora2, min1, min2: INTEGER range 0 to 10 := 0;
   shared variable segundos: INTEGER range 0 to 59 := 0;
signal iniciar : STD_LOGIC;
signal detener : STD_LOGIC;
signal rest : STD_LOGIC;

begin

  persecond: process (clk_seg, clk_50)
  begin
if clk_50'event and clk_50='1' then
 if boton1 = "1110" then
 iniciar <= '1';
 detener <= '0';
 rest <= '0';
 elsif boton1 = "1111" then
 detener <= '1';
 iniciar <= '0';
 rest <= '0';
 end if;
 	if reset = '1' then
rest <= '1';
iniciar <= '0';
detener <= '0';
	end if;
 end if;
	if clk_seg'event and clk_seg='1' then
 	if (rest = '1' or crono = '0') then
		seg1 := 0;
		seg2 := 0;
		min1 := 0;
		min2 := 0;
		hora1 := 0;
		hora2 := 0;
	end if;
		if iniciar = '1' then
		-- contador de segundos
		seg1 := seg1 + 1;
		
		if seg1 = 10 then
			seg2 := seg2 +1;
			seg1 :=0;
		end if;
		
		if seg2 = 6 then 
			min1 := min1 + 1;
			seg2 := 0;
		end if;
		
		-- contador de segundos
--		if segundos < 59 then
--			segundos := segundos + 1;
--		else 
--			segundos := 0;
--			min1 := min1 + 1; -- +1 minuto
--		end if;
--		
		-- segundo dígito minutero
		if min1 = 10 then
			min2 := min2 + 1;
			min1 := 0;
		end if;
		
		-- primer dígito hora
		if min2 = 6 then
			hora1 := hora1 + 1;
			min2 := 0;
		end if;
		
		-- segundo dígito hora
		if hora1 = 10 then
			hora2 := hora2 + 1;
			hora1 := 0;
		end if;
			
		if hora2=2 and hora1=4 then
			hora2 := 0;
			hora1 := 0;
		end if;
		
		elsif (detener = '1') then
		seg1 := seg1;
		seg2 := seg2;
		min1 := min1;
		min2 := min2;
		hora1 := hora1;
		hora2 := hora2;
		end if;
	end if;
  end process;
  
h1_c <= hora1;
h2_c <= hora2;
m1_c <= min1;
m2_c <= min2;  
s1_c <= seg1;
s2_c <= seg2;

  end Behavioral;