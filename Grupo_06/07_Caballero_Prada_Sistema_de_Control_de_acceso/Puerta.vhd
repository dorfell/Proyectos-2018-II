
library IEEE;

use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY Puerta is

    generic( Max: natural := 500000); --reloj de 100MHz
    Port (   clk :  in  STD_LOGIC;
             selector :  in  STD_LOGIC;
             PWM :  out  STD_LOGIC);--terminal donde sale la señal de PWM

end Puerta;

ARCHITECTURE Behavioral of Puerta is

   signal PWM_Count: integer range 1 to Max;--500000;

begin
generacion_PWM:
   process( clk, selector,PWM_Count)
                     constant pos2: integer := 120000;  
                     constant pos1: integer := 200000; 
          begin
             if rising_edge(clk)then PWM_Count <= PWM_Count + 1;
             end if;
                     case (selector) is
                                 when '0' =>
                                             if PWM_Count <= pos1 then PWM <= '1';
                                             else  PWM <= '0';
                                             end if;                                 
                                 when '1' =>
                                             if PWM_Count <= pos2 then PWM <= '1';
                                             else PWM <= '0';
                                             end if;
                                 when others => null;
                     end case;
          end process generacion_PWM;
end Behavioral;
