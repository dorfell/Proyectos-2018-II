----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:21:17 10/24/2018 
-- Design Name: 
-- Module Name:    divisor - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity divisor is

 Port ( reset : in  STD_LOGIC;
        clock : in  STD_LOGIC;
        enable1 : out  STD_LOGIC;
		  enable2 : out  STD_LOGIC
		  
		  );
end divisor;

architecture Behavioral of divisor is

signal qq,dd : std_logic_vector(27 downto 0);

begin

dd<= (others=>'0') when qq = x"32" else -- 1 [MHz], 1 [us]
       qq+1;

process (clock,reset)
begin  
   if reset = '1' then
      qq <= (others =>'0');
   elsif (clock'event and clock = '1') then
      qq <= dd;
   end if;
	
	
	

end process;

enable1 <=  '1' when qq <= x"19" else -- SPI clock signal 
            '0';	
				
--pmod1 <= '1' when qq <= x"2FAF080" else -- SPI clock signal 
--            '0';
					
enable2 <=  '1' when qq = x"0" else -- FSM and counter enable 
            '0';
				
--pmod2 <=  '1' when qq = x"7D" else -- FSM and counter enable 
--            '0';
--enable3 <=  '1' when qq = x"FA" else -- FSM and counter enable 
--            '0';				

end Behavioral;

