----------------------------------------------------------------------------------

----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity alarma is
Port ( clk : in STD_LOGIC;
		 clk2 : in STD_LOGIC;
		 horad : in INTEGER;
	    horau : in INTEGER;
		 mind : in INTEGER;
	    minu : in INTEGER;
		 alarm : in std_logic;
		 boton1: in std_logic;
		 boton2 : in std_logic;
		 alhd : out INTEGER;
		 alhu : out INTEGER;
		 almd : out INTEGER;
		 almu : out INTEGER;	 		 
		 salida :out STD_LOGIC);
end alarma;

architecture Behavioral of alarma is

shared variable h_d, h_u, m_d, m_u : INTEGER range 0 to 10 := 0;

begin 
process (clk2)
  begin
	if clk2'event and clk2='1' then
		
		if boton1 = '1' then
		h_u := h_u + 1;
		if h_u = 10 then
			h_d := h_d + 1;
			h_u := 0;
		end if;
		end if;
				if h_u = 4 and h_d = 2 then
			h_d := 0;
			h_u := 0;
			end if;
			
		if boton2 = '1' then
		m_u := m_u + 1;
		if m_u = 10 then
			m_d := m_d + 1;
			m_u := 0;
		end if;
		end if;

			if m_u = 9 and m_d = 5 then
			m_d := 0;
			m_u := 0;
			end if;
		
		end if;
		end process;


process(clk, horad, horau, mind, minu)
begin
if clk'event and clk = '1' then
if (horad = h_d and horau= h_u and mind= m_d and minu= m_u) then 
salida <= '1';
else
salida <= '0';
end if;
end if;
end process;

alhd <= h_d;
alhu <= h_u;
almd <= m_d;
almu <= m_u;

end Behavioral;