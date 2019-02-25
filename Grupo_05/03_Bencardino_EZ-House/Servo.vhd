--Código para controlar 4 posiciones para un servomotor
--implementado en la basys3.
--Se considera una frec. de 50Hz (periodo de 20ms) del PWM.
library IEEE;

use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY Servo is

    generic( 
             key: STD_LOGIC_VECTOR := "01000001";
             Max: natural := 2000000;
             pos1: integer := 100000;--representa a 1.00ms = -90°
             pos2: integer := 200000 --representa a 2.00ms = 0° 
             );
    Port (   
             clk,reset :  in  STD_LOGIC;--reloj de 100MHz
             selector :  in  STD_LOGIC_VECTOR (7 DOWNTO 0);--selecciona las 2 posiciones
             enable : in STD_LOGIC;
             flush : out STD_LOGIC;
             palabra : out std_logic_vector (31 downto 0);
             PWM :  out  STD_LOGIC --terminal donde sale la señal de PWM
             );
end Servo;

ARCHITECTURE Behavioral of Servo is
    signal PWM_Count, PWM_next : integer range 1 to Max;--50Hz;
    type state is (abierto, cerrado);
    signal puerta_reg, puerta_next: state;
    signal pos_reg, pos_next: integer;
begin

    PROCESS(clk,reset)
	BEGIN
		IF reset = '1' THEN
			PWM_Count <= 1;
			puerta_reg <= cerrado;
			pos_reg <= pos1;
		ELSIF (clk'event AND clk = '1') THEN
			PWM_Count <= PWM_next;
			puerta_reg <= puerta_next;
			pos_reg <= pos_next;
		END IF;		
	END PROCESS;
	
	process(pos_reg, PWM_Count)
	begin
	   PWM_next <= PWM_Count + 1;
	   if PWM_Count <= pos_reg then
	       PWM <= '1';
       else
           PWM <= '0';
       end if;
    end process;
	
	process(selector, puerta_reg, pos_reg, enable)
	begin
	   puerta_next <= puerta_reg;
	   pos_next <= pos_reg;
	   
	   case puerta_reg is
	       when abierto =>
	           flush <= '0';
	           palabra <= (others => '0');
	           if selector = key then
	               pos_next <= pos1;
	               puerta_next <= cerrado;
	               flush <= '1';
	               Palabra <= X"4D314F50";
	           elsif enable = '0' then
                    puerta_next <= cerrado;
               end if;
           when cerrado =>
               flush <= '0';
	           palabra <= (others => '0');
               if selector = key and enable = '1' then
                   pos_next <= pos2;
                   puerta_next <= abierto;
                   flush <= '1';
	               Palabra <= X"4D31434C";
               end if;
       end case;
    end process;
end Behavioral;