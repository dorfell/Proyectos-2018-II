
library IEEE;

use IEEE.STD_LOGIC_1164.ALL;

use IEEE.STD_LOGIC_ARITH.ALL;

use IEEE.STD_LOGIC_UNSIGNED.ALL;

 

ENTITY Motor is

    generic( Max: natural := 250000);

    Port ( clk :  in  STD_LOGIC;--reloj de 50MHz

             sensormotor :  in  STD_LOGIC_VECTOR (1 downto 0);--selecciona las 4 posiciones
             PWM :  out  STD_LOGIC
				 
				 );--terminal donde sale la señal de Motor

end Motor;

 

ARCHITECTURE Motor of Motor is

   signal Motor_Count: integer range 1 to Max;--500000;

begin

 

generacion_Motor:

   process( clk, sensormotor,Motor_Count)

                     constant pos1: integer := 25000;  --representa a 1.00ms = 0°

                     constant pos2: integer := 31250;  --representa a 1.25ms = 45°

                     constant pos3: integer := 37500;  --representa a 1.50ms = 90°

                     constant pos4: integer := 50000; --representa a 2.00ms = 180°

          begin

             if rising_edge(clk)then Motor_Count <= Motor_Count + 1;

             end if;

                     case (sensormotor) is

                                 when "10" =>--con el sensormotor en 00 se posiciona en servo en 0°

                                             if Motor_Count <= pos1 then PWM <= '1';

                                             else                                        PWM <= '0';

                                             end if;

                                 when "11" =>-- con el sensormotor en 01 se posiciona en servo en 45°

                                             if Motor_Count <= pos2 then PWM <= '1';

                                             else                                        PWM <= '0';

                                             end if;

                                 when "01" =>-- con el sensormotor en 11 se posiciona en servo en 90°

                                             if Motor_Count <= pos3 then PWM <= '1';

                                             else                                        PWM <= '0';

                                             end if;

                                 when "00" =>-- con el sensormotor en 10 se posiciona en servo en 180°

                                             if Motor_Count <= pos4 then PWM <= '1';

                                             else                                        PWM <= '0';

                                             end if;

                                 when others => null;

                     end case;

          end process generacion_Motor;



end Motor;