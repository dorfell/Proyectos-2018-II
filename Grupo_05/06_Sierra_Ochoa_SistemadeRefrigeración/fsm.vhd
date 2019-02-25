library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity fsm is
    Port ( en : in  STD_LOGIC;
           clock : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           sal : out  STD_LOGIC_VECTOR (3 downto 0));
end fsm;

architecture Behavioral of fsm is

type states is (s0,s1,s2,s3);
signal present_state, next_state: states;

begin

--===================
-- Present State
--===================
process(clock, reset)
  begin
  if reset = '1' then
    present_state <= s0;
  elsif (clock'event and clock='1') then
    if en='1' then
	   present_state <= next_state;
    else		
	   present_state <= present_state;
	 end if;
  end if;
end process;

		
--===================
-- Next state logic
--===================
process(present_state)
  begin 
  case present_state is 
    when s0 =>
		   next_state <= s1;

    when s1 =>
	      next_state <= s2;

    when s2 =>
	      next_state <= s3;

    when s3 =>
	      next_state <= s0;
			
  end case;
end process;
	
--===================	
-- Output logic
--===================
process(present_state)
  begin
  case present_state is
    when s0 =>
	   sal <= "1110";
			
    when s1 =>
	   sal <= "1101";

    when s2 =>
	   sal <= "1011";

    when s3 =>
	   sal <= "0111";
		
  end case;
end process;

		  
end Behavioral;