-- Este archivo realiza la decodificación para el siete segmentos para displays de ánodo común. 
-- Este archivo también activa o desactiva las luces.

library IEEE; 
use IEEE.std_logic_1164.all;

 entity KEY2LED is
 generic(Max: natural :=50000000); -- Para definir el rango de la señal e_buzz

 port (key 				:in STD_LOGIC_VECTOR (7 downto 0); -- entra la señal del teclado
		 an 				:out STD_LOGIC_VECTOR (3 downto 0); -- ánodos 
       segments 		:out STD_LOGIC_VECTOR (7 downto 1);  -- la señal segments enciende el siete segmentos
		 sw 				:in std_logic_vector (7 downto 0); -- Es la señal que viene del Bluetooth. 8 bits
		 clk				:in std_logic;
		 line1_buffer  :in std_logic_vector (127 downto 0); --lcd línea de arriba
		 line2_buffer  :in std_logic_vector (127 downto 0); --lcd línea de abajo
		 rst    			:inout std_logic;                   -- reset de la lcd
		 buzz				:out std_logic;
		 ala1				:out std_logic;
		 ala2				:out std_logic;
		 ama1				:out std_logic;
		 ama2				:out std_logic;
		 ama3				:out std_logic;
		 bla1				:out std_logic;
		 bla2				:out std_logic;
		 bla3				:out std_logic;
		 azu1				:out std_logic;
		 azu2				:out std_logic;
		 clave			:out std_logic
 ); 
 end KEY2LED;
 
architecture hardware of KEY2LED is
signal e_buzz: integer range 1 to Max; -- señal para prender y apagar luces

begin

	process(key)
		begin
		if key="00010110" then
			clave<='1';
			else clave<='0';
		end if;
	end process;
	
	
	 with key select 
 --          gfedcba
 segments <= "0111111" when "01000101", --0    
				 "1111001" when "00010110", --1    
				 "0111111" when "00011110", --2    
				 "0111111" when "00100110", --3    
				 "0111111" when "00100101", --4    
     		    "0111111" when "00101110", --5    
				 "0111111" when "00110110", --6    
             "0111111" when "00111101", --7    
             "0111111" when "00111110", --8    
             "0111111" when "01000110", --9    
           	   
             "1111111" when others; 
				 
an<="0000"; --prender los ánodos que quiero

process (clk,sw,e_buzz,key)
	begin
	if rising_edge (clk) then e_buzz<= e_buzz+1;
end if;
end process;


process (sw ,key)
begin
if key="00010110" then
 case sw is
-- alarma con 0
	when "00110000"=>

		if e_buzz < 25000000 then ala1<='0';
		else ala1<='1';
		end if;
		if e_buzz < 25000000 then buzz<='0';
		else buzz<='1';
		end if;
		if e_buzz < 25000000 then ala2<='0';
		else ala2<='1';
		end if;
		ama1 <= '0';
		ama2 <= '0';
		ama3 <= '0';
		bla1 <= '0';
		bla2 <= '0';
		bla3 <= '0';
		azu1 <= '0';
		azu2 <= '0';

 --social
	when "00111001" =>
	 
		buzz <= '0';
		ala1 <= '0';
		ala2 <= '0';
		ama1 <= '1';
		ama2 <= '1';
		ama3 <= '1';
		bla1 <= '0';
		bla2 <= '0';
		bla3 <= '0';
		azu1 <= '0';
		azu2 <= '0';
 

-- vibrante
	when "01000011" =>
		ala1 <= '0';
		ala2 <= '0';
		buzz <= '0';
		ama1 <= '0';
		ama2 <= '0';
		ama3 <= '0';
		bla1 <= '1';
		bla2 <= '1';
		bla3 <= '1';
		azu1 <= '0';
		azu2 <= '0';
-- atención
		when "01000001" =>
		ala1 <= '0';
		ala2 <= '0';
		buzz <= '0';
		ama1 <= '0';
		ama2 <= '0';
		ama3 <= '0';
		bla1 <= '1';
		bla2 <= '1';
		bla3 <= '0';
		azu1 <= '1';
		azu2 <= '0';
-- animado
		when "00110101" =>
		ala1 <= '0';
		ala2 <= '0';
		buzz <= '0';
		ama1 <= '1';
		ama2 <= '1';
		ama3 <= '0';
		bla1 <= '0';
		bla2 <= '0';
		bla3 <= '0';
		azu1 <= '1';
		azu2 <= '1';

		when others =>
		ala1 <= '0';
		ala2 <= '0';
		buzz <= '0';
		ama1 <= '0';
		ama2 <= '0';
		ama3 <= '0';
		bla1 <= '0';
		bla2 <= '0';
		bla3 <= '0';
		azu1 <= '0';
		azu2 <= '0';
	
	end case;
 end if;  
end process;

 end hardware; 
 
