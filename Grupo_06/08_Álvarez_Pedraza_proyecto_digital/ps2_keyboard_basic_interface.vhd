-- El teclado con protocolo de comunicación AT-PS/2 utiliza un protocolo bidireccional serie síncrono de 11 bits. 
-- El teclado entrega dos señales: CLK para transmitir el reloj de sincronización ( entre 10 y 16,7 KHz)
-- En DAT transifere: 1 bit de start, 8 bits de datos, 1 bit de paridad impar. 1 bit de stop
-- ESTE BLOQUE RECIBE LOS 11 BITS DE ENTRADA 

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ps2_keyboard_basic_interface is
port ( 
      kbclk: in STD_LOGIC; -- RELOJ DEL TECLADO 
	   reset: in STD_LOGIC; -- RESET GLOBAL  
		kbdata: in STD_LOGIC; -- ENTRADA DE DATOS
		end_data: out STD_LOGIC; -- INDICA QUE HA LLEGADO UN NUEVO DATO DESDE EL TECLADO 
		parity_error: out STD_LOGIC; -- INDICA ERROR DE PARIDAD EN EL ULTIMO DATO DEL TECLADO 
		data: out STD_LOGIC_VECTOR (7 downto 0) -- DATO CORRESPONDIENTE A LA TECLA PRESIONADA 
		); 
end ps2_keyboard_basic_interface;

architecture Behavioral of ps2_keyboard_basic_interface is
-- SEÑALES INTERNAS------------------------------
signal SHIFT: STD_LOGIC_VECTOR (8 downto 0);
signal Q_BIT_CTR: integer range 0 to 9; 
signal GSHIFT: STD_LOGIC; 
signal RESETINT: STD_LOGIC; 
signal SHIFT_RESET: STD_LOGIC; 
signal SHIFT_CLK: STD_LOGIC; 
signal end_data_aux: std_logic; 
--  DECLARACION DEL COMPONENTE -- REGISTRO DE DESPLAZAMIENTO 9 BITS A LA DERECHA 
COMPONENT shift9
PORT( 
      ms_in : IN std_logic; 
		reset : IN std_logic; --reset
		ce : IN std_logic; 
		clk : IN std_logic; -- reloj
		q : OUT std_logic_vector(8 downto 0) 
		); 
	END COMPONENT; 
begin
end_data <= end_data_aux;


-- EMPEZAR DETECCIÓN------------------------------------- 
start: process (KBCLK, KBDATA, GSHIFT, RESET, RESETINT) 
begin
   if RESET='1' or RESETINT='1' then 
	GSHIFT<='0';
	elsif (KBCLK'event and KBCLK='0') then
	  if (GSHIFT='0' and KBDATA='0') then
	  GSHIFT <='1';   
	  end if; 
end if;
end process;  
-- CONTADOR DE BITS------------------------------------- 
CONTADOR: process (KBCLK, GSHIFT, RESET, RESETINT, Q_BIT_CTR) 
begin
  if RESET='1' or RESETINT='1' then -- Si activo el RESET el número de bits lo vuelvo cero
  Q_BIT_CTR <= 0; 
  end_data_aux <= '0'; -- Si reseteo el último dato que tengo es cero -- señal enable
 elsif (KBCLK'event and KBCLK='0') then 
 if (GSHIFT='1') then   
  -- INCREMENTA LA CUENTA DE BITS RECIBIDOS 
 Q_BIT_CTR <= Q_BIT_CTR + 1; 
 end if;
 end if; 
 -- DETECCIÓN DE FINAL DE DATOS------------------------------------- 
 if Q_BIT_CTR = 9 then 
   end_data_aux <= '1'; 
	else   
	end_data_aux <= '0'; 
	end if; 
end process;
	
-- ENTRADAS AL REGISTRO DE DESPLAZAMIENTO------------------------------------- 
SHIFT_CLK <= not KBCLK; 
SHIFT_RESET <= RESET or RESETINT; 

-- LLAMADA AL REGISTRO DE DESPLAZAMIENTO 
REGISTRO_DESPLAZA: shift9 PORT MAP( 
   ms_in => KBDATA, -- Guardo la información en ms_in
	reset => SHIFT_RESET, 
	ce => GSHIFT, 
	clk => SHIFT_CLK, 
	q => SHIFT 
	); 
	
-- DETECTOR DE ERROR DE PARIDAD ------------ 
ERROR_PARIDAD: process (KBCLK, RESET, end_data_aux) 
begin 
  if RESET='1' then 
     PARITY_ERROR<='0'; 
  elsif (KBCLK'event and KBCLK='1') then
     if (end_data_aux='1') then
	  PARITY_ERROR <= not(SHIFT(0) xor SHIFT(1) xor SHIFT(2) xor SHIFT(3) 
	  xor SHIFT(4) xor SHIFT(5) xor SHIFT(6) xor SHIFT(7) xor SHIFT(8)); 
	 end if; 
	end if; 
end process; 
 
-- RESET INTERNO AL FINAL DE CADA RECEPCIÓN 
FINAL: process (KBCLK,end_data_aux,RESETINT,RESET) 
begin
    if RESET='1' then
    DATA <= (OTHERS =>'0'); 	 
	 RESETINT <='0'; 
elsif (KBCLK'event and KBCLK='1') then 
    if end_data_aux='1' then  
	 -- ALMACENA EL DATO RECIBIDO 
	 DATA (7 downto 0) <= SHIFT (7 downto 0); 
	 -- INDICA EL FINAL DE LA RECEPCIÓN 
	 RESETINT <= '1'; 
else
    RESETINT <= '0'; 
	end if; 
end if; 
end process;

end Behavioral;

