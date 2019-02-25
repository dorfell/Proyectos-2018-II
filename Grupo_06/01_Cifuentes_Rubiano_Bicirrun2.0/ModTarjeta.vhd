----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:16:36 02/16/2019 
-- Design Name: 
-- Module Name:    ModTarjeta - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ModTarjeta is

	Port( tarjeta			: in std_logic_vector (2 downto 0);
			inicio			: out std_logic;
			--Salida para mux que contiene las contraseñas
			selector			: out std_logic_vector (2 downto 0)
	);
	
end ModTarjeta;

architecture Behavioral of ModTarjeta is

	signal temporal : std_logic;
	
begin
	
--	Para ver si el usuario está registrado
	process (tarjeta)
	begin
	case tarjeta is
	
		when "000" => temporal <= '0';
		when "001" => temporal <= '1'; --Usuario 1
		when "010" => temporal <= '1'; --.
		when "011" => temporal <= '1'; --.
		when "100" => temporal <= '1'; --.
		when "101" => temporal <= '1'; --.
		when "110" => temporal <= '1'; --Usuario 6
		when "111" => temporal <= '0';
		when others => null;
	end case;
	end process;

--Para ver si el usuario está registrado
--	process (tarjeta)
--	begin
--	case tarjeta is
--	
--		when '0' => temporal <= '0';
--		when '1' => temporal <= '1'; --Usuario 1
--		when others => temporal <= '0';
--	end case;
--	end process;
	
	--Para luego seleccionar la contraseña del usuario
	
	process (temporal, tarjeta)
	begin
	if (temporal = '1') then
		selector <= tarjeta;
	else 
		selector <= "000";
	end if;
	end process;
	
	inicio <= temporal;

end Behavioral;

