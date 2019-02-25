library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity motor is
	generic(Max: natural :=500000);
	
		Port  (clk: in STD_LOGIC; --reloj de 50 MHz
				clave: in std_logic;
				sw : in std_logic_vector (7 downto 0);
				pwm: out std_logic --terminal de donde sale la frecuencia
				)	;
end motor;

architecture Behavioral of motor is

	Signal PWM_Count: integer range 1 to Max;

begin
generacion_PWM:

   process(clk, sw,PWM_Count,clave)
	
                     constant pos1: integer := 50000;  --representa a 1.00ms = 0°
                     constant pos2: integer := 62500;  --representa a 1.25ms = 45°
                     constant pos3: integer := 75000;  --representa a 1.50ms = 90°
                     constant pos4: integer := 100000; --representa a 2.00ms = 180°

          begin
				if clave='1' then
             if rising_edge(clk)then PWM_Count <= PWM_Count + 1;
             end if;

                     case (sw) is
                                 when "00110010" =>
                                             if PWM_Count <= pos1 then PWM <= '1';
                                             else PWM <= '0';
                                             end if;

                                 when "00110100" =>-- con el selector en 01 se posiciona en servo en 45°
                                             if PWM_Count <= pos2 then PWM <= '1';
                                             else PWM <= '0';
                                             end if;

                                 when "00110111" =>-- con el selector en 11 se posiciona en servo en 90°
                                             if PWM_Count <= pos3 then PWM <= '1';
                                             else PWM <= '0';
                                             end if;

                                 when "01000010" =>-- con el selector en 10 se posiciona en servo en 180°
                                             if PWM_Count <= pos4 then PWM <= '1';
                                             else PWM <= '0';
                                             end if;

                                 when others => null;

                     end case;
							end if;
							end process generacion_PWM;

end Behavioral;

