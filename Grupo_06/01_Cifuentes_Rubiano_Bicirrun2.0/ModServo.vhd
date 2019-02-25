----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:51:28 02/16/2019 
-- Design Name: 
-- Module Name:    ModServo - Behavioral 
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

entity ModServo is
	generic (Max : natural := 1000000);
	
	Port( clk 		: in std_logic;
			activar	: in std_logic;
			PWM		: out std_logic;
			salida	: out std_logic_vector (1 downto 0)
	);
	
end ModServo;


architecture Behavioral of ModServo is
	
	signal PWM_count  : integer range 1 to Max;
--	signal outtemp		: std_logic_vector (2 downto 0);
	
begin

	process(clk, activar, PWM_count)
		constant pos1 : integer :=  100000;
		constant pos2 : integer :=  400000;
	begin
		if rising_edge(clk) then 
			PWM_Count <= PWM_Count +1;
		end if;
			case (activar) is
				when '0' =>
					if PWM_Count <= pos1 then PWM <= '1';
					salida <= "00";
					else PWM <= '0';
					salida <= "01";
					end if;
				when '1' =>
					if PWM_Count <= pos2 then PWM <= '1';
					salida <= "10";
					else PWM <= '0';
					salida <= "00";
					end if; 
				when others => null;
			end case;
	end process;

	--salida <= outtemp;
			
end Behavioral;

