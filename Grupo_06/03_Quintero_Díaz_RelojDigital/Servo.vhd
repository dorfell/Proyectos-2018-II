--Código para controlar 4 posiciones para un servomotor Futaba
--implementado en la nexys2.
--Se considera una frec. de 100Hz (periodo de 10ms) del PWM.
library IEEE;

use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY PWM is

    generic( Max: natural := 1000000);
    Port (   clk :  in  STD_LOGIC;--reloj de 100MHz
          --   selector :  in  STD_LOGIC;--selecciona las 4 posiciones
             PWM :  out  STD_LOGIC);--terminal donde sale la señal de PWM

end PWM;

ARCHITECTURE PWM of PWM is
constant max_count: INTEGER :=10000000;
signal count: INTEGER range 0 to max_count;
signal clk_state: STD_LOGIC := '0';
   signal PWM_Count: integer range 1 to Max;--500000;

begin
process(clk, clk_state, count)
    begin
		if clk'event and clk='1' then
		-- contador 1HZ
			if count < max_count then 
			count <= count + 1;
			else
			clk_state <= not clk_state;
			count <= 0;
			end if;
end if;
end process;
generacion_PWM:
   process(clk, clk_state, PWM_Count)
		    constant pos1: integer := 100000; --representa a 2.00ms = 90°
          constant pos4: integer := 900000; --representa a 2.00ms = 90°
          begin
             if rising_edge(clk)then PWM_Count <= PWM_Count + 1;
             end if;
                     case (clk_state) is
                                 when '0' =>--con el selector en 00 se posiciona en servo en 0°
                                             if PWM_Count <= pos1 then PWM <= '1';
                                             else
															PWM <= '0';
                                             end if;
                                 when '1' =>-- con el selector en 10 se posiciona en servo en 90°
                                             if PWM_Count <= pos4 then PWM <= '1';
                                             else
															PWM <= '0';
                                             end if;
                                 when others => null;
                     end case;
          end process generacion_PWM;
end PWM;