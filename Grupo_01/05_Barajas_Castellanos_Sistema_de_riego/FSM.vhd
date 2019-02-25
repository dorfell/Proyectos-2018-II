----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:43:10 10/24/2018 
-- Design Name: 
-- Module Name:    FSM - Behavioral 
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

entity FSM is
    Port (  clock : in STD_LOGIC;
				reset  : in  STD_LOGIC;
				enable1 : in STD_LOGIC;
            start : in  STD_LOGIC;
				cs: out STD_LOGIC
				);
end FSM;

architecture Behavioral of FSM is

type estados is (s0,s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16,s17);
signal estado_presente, estado_futuro : estados;
--signal Datos     :STD_LOGIC_VECTOR(15 downto 0):="0000000000000000";
begin





	process(clock, reset)
   begin
		if reset = '1' then
			estado_presente <= s0;
		elsif (clock'event and clock='1') then
			if enable1='1' then
		    	estado_presente <= estado_futuro;
			else
			  estado_presente <= estado_presente;
			end if;
		end if;
  end process;
	
	
	--===================
-- Next state logic
--===================
process(estado_presente, start)
 begin
 case estado_presente is
 when s0 =>
   if (start = '1') then
     estado_futuro <= s1;
   else
     estado_futuro <= s0;
   end if;
 when s1 =>
 estado_futuro <= s2;
 when s2 =>
 estado_futuro <= s3;
 when s3 =>
 -- if (count = 16) then
 estado_futuro <= s4;
 when s4 =>
 estado_futuro <= s5;
 when s5 =>
 estado_futuro <= s6;
 when s6 =>
 estado_futuro <= s7;
 when s7 =>
 estado_futuro <= s8;
 when s8 =>
 estado_futuro <= s9;
 when s9 =>
 estado_futuro <= s10;
 when s10 =>
 estado_futuro <= s11;
 when s11 =>
 estado_futuro <= s12;
 when s12 =>
 estado_futuro <= s13;
 when s13 =>
 estado_futuro <= s14;
 when s14 =>
 estado_futuro <= s15;
 when s15 =>
 estado_futuro <= s16;
 when s16 =>
 estado_futuro <= s17;
 when s17 =>
 estado_futuro <= s1;

 --end if;
 end case;
end process;
	
	
--===================
-- Output logic
--===================
process(estado_presente)
 begin
 case estado_presente is
 when s0 =>
 
   cs <= '1';
	
 when s1 =>
 
   cs <= '0';
	
 when s2 =>
 
	cs <= '0';

 when s3 =>
 
	cs <= '0';
	 

 when s4 =>
 
   cs <= '0';
	
 when s5 =>
 
   cs <= '0';
	
 when s6 =>
 
   cs <= '0';
	
 when s7 =>
 
   cs <= '0';
	
 when s8 =>
 
   cs <= '0';
	
 when s9 =>
 
   cs <= '0';
	
 when s10 =>
 
   cs <= '0';
	
 when s11 =>
 
   cs <= '0';
	
 when s12 =>	
 
   cs <= '0';
	
 when s13 =>
 
   cs <= '0';
	
 when s14 =>
 
   cs <= '0';
	
 when s15 =>
 
   cs <= '0';
	
 when s16 =>
 
   cs <= '0';
	
 when s17 =>
   cs <= '1';

	
 
 end case;
end process;
 	
	
	


end Behavioral;



