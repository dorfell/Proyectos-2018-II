----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:36:52 02/06/2019 
-- Design Name: 
-- Module Name:    Registro - Behavioral 
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
use IEEE.std_logic_unsigned.all; 

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Registro is
	Port ( clk : in  STD_LOGIC;
          reset : in  STD_LOGIC;
			 enp: in  STD_LOGIC;
			 enable :  in  STD_LOGIC;
			 dis: in STD_LOGIC_VECTOR (3 downto 0);
			 leds: out STD_LOGIC_VECTOR (3 downto 0);
          sald : out  STD_LOGIC_VECTOR (3 downto 0)
			 );
end Registro;

architecture Behavioral of Registro is

signal qq : std_logic_vector (3 downto 0);

begin


	process(clk, reset)
    begin
        if reset = '1' then
            sald <= "1111";
				 qq  <= "1111";
        elsif (clk'event and clk = '1') then
            if ((enable = '1') and (enp = '1')) then
				      qq <= dis;
                sald <= qq;
            end if;
        end if;
    end process;
	 
	leds <= qq;

--	process(clk, reset)
--    begin
--        if reset = '1' then
--            sald <= "1111";
--        elsif (clk'event and clk = '1') then
--            if ((enable = '1') and (enp = '1')) then
--                sald <= dis;
--            end if;
--        end if;
--    end process;

end Behavioral;

