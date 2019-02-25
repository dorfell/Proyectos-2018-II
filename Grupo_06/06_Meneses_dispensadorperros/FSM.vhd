----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    05:13:53 05/02/2018 
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

port(
			clk, enable, rst :  in std_logic;
			start        :  in std_logic;
			leds         :  out std_logic_vector(3 downto 0));

end FSM;

architecture Behavioral of FSM is

type states is (s0,s1,s2,s3);
signal present_state, next_state: states;

begin

process(clk, rst)
  begin
  if rst = '1' then
    present_state <= s0;
  elsif (clk'event and clk='1') then
    if enable='1' then
	   present_state <= next_state;
    else		
	   present_state <= present_state;
	 end if;
  end if;
end process;


process(present_state, start)
  begin 
  case present_state is 
    when s0 =>
	   if (start = '1') then
		   next_state <= s1;
		else 
		   next_state <= s0;
		end if;

    when s1 =>
	      next_state <= s2;

    when s2 =>
	      next_state <= s3;
			
	 when s3 =>
	      next_state <= s0;
			
  end case;
end process;


process(present_state)
  begin
  case present_state is
    when s0 =>
	   leds <= "0001";

    when s1 =>
	   leds <= "0010";

    when s2 =>
	   leds <= "0100";
		
	when s3 =>
	   leds <= "1000";
						
  end case;
end process;


end Behavioral;

