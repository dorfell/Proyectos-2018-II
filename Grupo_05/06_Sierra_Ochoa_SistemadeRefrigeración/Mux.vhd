----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:16:41 02/11/2019 
-- Design Name: 
-- Module Name:    Mux - Behavioral 
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

entity Mux is
	Port (  cols : in STD_LOGIC_VECTOR (3 downto 0);
           sig_rows : in STD_LOGIC_VECTOR (3 downto 0);
           sig_dec : out STD_LOGIC_VECTOR (3 downto 0));
end Mux;

architecture Behavioral of Mux is

begin

process (cols,sig_rows)
	begin	
	if sig_rows ="1110" then
		case cols is
			when "1110" =>
				sig_dec <= "0001";				
			when "1101" =>
				sig_dec<="0010";				
			when "1011" =>
				sig_dec<="0011";
			when "0111" =>
				sig_dec<="1111";
			when others =>					
				sig_dec<="1111";
		end case;
	elsif sig_rows ="1101" then
		case cols is
			when "1110" =>
				sig_dec <= "0100";
			when "1101" =>
				sig_dec <= "0101";			
			when "1011" =>
				sig_dec <= "0110";
			when "0111" =>			
				sig_dec<="1111";
			when others =>				
				sig_dec<="1111";
		end case;
	elsif sig_rows ="1011" then
		case cols is
			when "1110" =>
				sig_dec <= "0111";
			when "1101" =>
				sig_dec <= "1000";
			when "1011" =>
				sig_dec <= "1001";
			when "0111" =>						
				sig_dec<="1111";
			when others =>									
				sig_dec<="1111";
		end case;
	elsif sig_rows ="0111" then
		case cols is
			when "1110" =>					
				sig_dec<="1111";
			when "1101" =>
				sig_dec <= "0000";
			when "1011" =>					
				sig_dec<="1111";
			when "0111" =>				
				sig_dec<="1100";
			when others =>									
				sig_dec<="1111";
		end case;
	else
		sig_dec<="1111";
	end if;
	
	end process;
	
	


end Behavioral;

