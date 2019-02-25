----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:49:47 05/09/2018 
-- Design Name: 
-- Module Name:    Main - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Servo_controller is

    generic( Max: natural := 1000000);

    Port ( clk :  in  STD_LOGIC;--reloj de 50MHz

            selector :  in  STD_LOGIC_VECTOR (1 downto 0); --selecciona las 4 posiciones

            PWM :  out  STD_LOGIC);--terminal donde sale la señal de PWM
end Servo_controller;

architecture Behavioral of Servo_controller is

signal PWM_Count: integer range 1 to Max;--500000;

begin generacion_PWM:

   process( clk, selector,PWM_Count)

                     constant pos1: integer := 25000;  --representa a 1.00ms = 0°

                     constant pos2: integer := 50000;  --representa a 1.25ms = 45°

                     constant pos3: integer := 75000;  --representa a 1.50ms = 45°

                     constant pos4: integer := 100000; --representa a 2.00ms = 90°

          begin

             if rising_edge(clk)then PWM_Count <= PWM_Count + 1;

             end if;

                     case (selector) is

                                 when "00" =>--con el selector en 00 se posiciona en servo en 0°

                                             if PWM_Count <= pos1 then PWM <= '1';

                                             else                                        PWM <= '0';

                                             end if;

                                 when "01" =>-- con el selector en 01 se posiciona en servo en 45°

                                             if PWM_Count <= pos2 then PWM <= '1';

                                             else                                        PWM <= '0';

                                             end if;

                                 when "11" =>-- con el selector en 11 se posiciona en servo en 90°

                                             if PWM_Count <= pos3 then PWM <= '1';

                                             else                                        PWM <= '0';

                                             end if;

                                 when "10" =>-- con el selector en 10 se posiciona en servo en 180°

                                             if PWM_Count <= pos4 then PWM <= '1';

                                             else                                        PWM <= '0';

                                             end if;

                                 when others => null;

                     end case;

          end process generacion_PWM;


end Behavioral;

