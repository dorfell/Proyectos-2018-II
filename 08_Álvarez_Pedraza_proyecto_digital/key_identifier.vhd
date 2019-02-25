library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL; 
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity key_identifier is
 Port (  clk : in std_logic; -- RELOJ GLOBAL  
         reset : in std_logic;    -- RESET GLOBAL
			end_data : in std_logic;   -- CONTAR HASTA LOS NUEVE 
			data: in std_logic_vector (7 downto 0); -- OCHO BITS CON INFORMACIÓN    
			new_data : out std_logic;            
			new_key : out std_logic;        
			end_key : out std_logic;         
			pressed_key : out std_logic;            			
			released_key : out std_logic;           
			key : out std_logic_vector(7 downto 0)    
			);
end key_identifier;

architecture Behavioral of key_identifier is

		-- SEÑALES INTERNAS 
			signal end_data_s: std_logic; 
			signal end_data_t_1: std_logic; 
			signal new_data_aux, pressed_key_aux, released_key_aux: std_logic; 
			signal key_aux: std_logic_vector (7 downto 0); 
			
begin
		new_data <= new_data_aux;
		pressed_key <= pressed_key_aux; 
		released_key <= released_key_aux; 
		key <= key_aux; 
 
-- FLANCO DE SUBIDA DE LA SEÑAL "end_data", LA CUAL GENERA LA SALIDA the "new_data" 
 FLANCO_DETECTOR_END_DATA: process (reset,clk,end_data_s,end_data_t_1) -- identificar cuando hay un nuevo dato
 
 begin  
 if reset = '1' then    
     end_data_s <= '0';  
	  end_data_t_1 <= '0';  
	elsif clk = '1' and clk'event then     
	  end_data_t_1 <= end_data_s;   
	  end_data_s <= end_data; 	  
 end if; 
 
 new_data_aux <= not end_data_s and end_data_t_1; 
 
end process; 
 
-- IDENTIFICACIÓN DEL DATO 
--IDENTIFICACION: 
process (reset,clk,new_data_aux,data,pressed_key_aux,released_key_aux,key_aux) 
begin  -- inicializar las variables
  if reset = '1' then   
  new_key <= '0'; 
  pressed_key_aux <= '0';  
  released_key_aux <= '0';  
  end_key <= '0'; 
  key_aux <= "00000000"; 
 
 elsif clk = '1' and clk'event then  
    if new_data_aux = '1' then 
 
-- ALMACENA LA ACCIÓN DE TECLA PRESIONADA Y TECLA SOLTADA 
 if (data /= x"F0") and (pressed_key_aux = '0') and (released_key_aux ='0') then  
   pressed_key_aux <= '1'; 
elsif(data = x"F0") and (pressed_key_aux = '1') then   
  pressed_key_aux <= '0'; 
 else    
   pressed_key_aux <= pressed_key_aux; 
end if; 
 
-- ALMACENA EL CÓDIGO DE LA NUEVA TECLA PRESIONADA  
if (data /= x"F0") and (pressed_key_aux = '0') then   
key_aux <= data;  
else   
key_aux <= key_aux;  
end if; 
 
-- ALMACENA LA TECLA QUE SE SUELTA  
if (data = x"F0") and (released_key_aux = '0') and (pressed_key_aux = '1') then    
  released_key_aux <= '1';  
 elsif(data=key_aux) and (released_key_aux = '1') then     
   released_key_aux <= '0';  
	else    
released_key_aux <= released_key_aux;  
end if; 
 
end if; 
 
-- Esto activa  la salida "new_key", que indica que una nueva tecla ha sido pulsada

if (new_data_aux = '1') and (data /= x"F0") and (pressed_key_aux = '0') and (released_key_aux ='0') 
then   
new_key <= '1'; 
else   
new_key <= '0'; 
end if; 
 
--Esto activa  la salida "end_key", que indica que la tecla ha sido soltada (liberada)
  if (new_data_aux = '1') and (data=key_aux) and (released_key_aux = '1') then    
  end_key <= '1'; 
  else    
  end_key <= '0'; 
  end if;
  end if; 
end process;

end Behavioral;

