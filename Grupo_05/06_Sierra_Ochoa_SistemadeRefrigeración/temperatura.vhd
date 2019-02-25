----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:51:22 02/13/2019 
-- Design Name: 
-- Module Name:    temperatura - Behavioral 
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
use ieee.std_logic_unsigned.all; 

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity temperatura is
Port (clk : in  STD_LOGIC;
       reset : in  STD_LOGIC; 
		 dec: in  STD_LOGIC_VECTOR (3 downto 0);
		 uni: in  STD_LOGIC_VECTOR (3 downto 0);
       act : in  STD_LOGIC;
		 temp : out  STD_LOGIC_VECTOR (7 downto 0)
		);
end temperatura;

architecture Behavioral of temperatura is

begin

process(clk, reset,act,dec,uni)
    begin
        if reset = '1' then
            temp <= "00000000";
        elsif (clk'event and clk = '1') then
            if act = '1' then
				   temp <= (dec * "1010" +  uni);
            end if;
        end if;
    end process;


end Behavioral;

