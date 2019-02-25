----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:27:16 02/12/2019 
-- Design Name: 
-- Module Name:    registro - Behavioral 
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

----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:40:20 10/30/2018 
-- Design Name: 
-- Module Name:    registro - Behavioral 
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

entity registro is
	  Generic(
			NBITS : integer := 16;
			NSALIDA : integer := 20);

	  Port ( MISO : in  STD_LOGIC;
				start : in std_logic;
				reset: in std_logic;
	         enable1, enable2 : in std_logic;
            num_bin : inout  STD_LOGIC_VECTOR (NBITS-1 downto 0):="0000000000000000";
				num_bcd : inout STD_LOGIC_VECTOR(NSALIDA-1 downto 0):="00000000000000000000";
            clock : in  STD_LOGIC
			
				);
end registro;

architecture Behavioral of registro is
signal temp: std_logic_vector(15 downto 0):="0000000000000000";

begin 


process(num_bin)
begin
    if(clock'event and clock='1') then
	   if (enable1 = '1' and enable2 = '1') then 
		  
        temp(15)<= temp(14);
        temp(14)<= temp(13);
        temp(13)<= temp(12);
		  temp(12)<= temp(11);
		  temp(11)<= temp(10);
		  temp(10)<= temp(9);
		  temp(9)<= temp(8);
		  temp(8)<= temp(7);
		  temp(7)<= temp(6);
		  temp(6)<= temp(5);
		  temp(5)<= temp(4);
		  temp(4)<= temp(3);	
		  temp(3)<= temp(2);
		  temp(2)<= temp(1);
		  temp(1)<= temp(0);
        temp(0)<= MISO;
      --  num_bin <= temp;
		  end if;
    end if;
end process;


proceso_bcd: process(num_bin)
	variable z: STD_LOGIC_VECTOR(NBITS+NSALIDA-1 downto 0);
begin

	z:= (others => '0');
	
	z(NBITS+2 downto 3):= num_bin;
	
	for i in 0 to NBITS-4 loop
		
		if z(NBITS+3 downto NBITS) > 4 then
			z(NBITS+3 downto NBITS) := z(NBITS+3 downto NBITS)+3;
		end if;
		
		if z(NBITS+7 downto NBITS+4) > 4 then
			z(NBITS+7 downto  NBITS+4) := z(NBITS+7 downto NBITS+4)+3;
		end if;

		if z(NBITS+11 downto NBITS+8) > 4 then
			z(NBITS+11 downto NBITS+8) := z(NBITS+11 downto NBITS+8)+3;
		end if;
		
		if z(NBITS+14 downto NBITS+11) > 4 then
			z(NBITS+14 downto NBITS+11) := z(NBITS+14 downto NBITS+11)+3;
		end if;

		
		z(NBITS+NSALIDA-1 downto 1) := z(NBITS+NSALIDA-2 downto 0);
	end loop;
	
	num_bcd <= z(NBITS+NSALIDA-1 downto NBITS);
	end process;


end Behavioral;


