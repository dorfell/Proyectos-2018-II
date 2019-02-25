library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Keyboard is

port (
    clk     : in std_logic;
    rst   : in std_logic;
	 clk1 : in std_logic;
    columns     : in std_logic_vector(3 downto 0);
	 rows    : out std_logic_vector(3 downto 0);
	 code : out std_logic_vector (4 downto 0)
);

end Keyboard;

architecture Behavioral of Keyboard is

type states is (s0,s1,s2,s3); 
signal present_state, next_state: states;
signal i : std_logic_vector (0 downto 0) := (others => '0');

begin

--===================
-- Present State
--===================

process(clk,rst)
begin
if (rst = '1') then
	present_state <= s0;
	i <= (others =>'0');
elsif(clk'event and clk='1')then
	if(clk1='1' and i=0)then
			if(columns/="0000")then
				present_state<=present_state;
			elsif(columns="0000")then
				present_state<=next_state;
			end if;
		i <= (others =>'1');
	elsif(clk1 = '0')then
		i <= (others =>'0');
	end if;
end if;
end process;  

--===================
-- Next state logic
--===================

process(present_state,columns)
begin

case present_state is

when s0 => next_state <= s1;
when s1 => next_state <= s2;
when s2 => next_state <= s3;
when s3 => next_state <= s0;

	
end case;
end process;

--===================
-- Output logic
--===================

process(present_state,columns)
begin

case present_state is

when s0 => rows <= "1000";
	case columns is
			when "1000" => code <="00010"; --1
			when "0100" => code <="00011"; --2
			when "0010" => code <="00100"; --3
			when "0001" => code <="01011"; --A
			when "0000" => code <="00000";
			when others => code <="00000";
	end case;
	
when s1 => rows <= "0100";
	case columns is
			when "1000" => code <="00101"; --4
			when "0100" => code <="00110"; --5
			when "0010" => code <="00111"; --6
			when "0001" => code <="01100"; --B
			when "0000" => code <="00000";
			when others => code <="00000";
	end case;

when s2 => rows <= "0010";
		case columns is
			when "1000" => code <="01000"; --7
			when "0100" => code <="01001"; --8
			when "0010" => code <="01010"; --9
			when "0001" => code <="01101"; --C
			when "0000" => code <="00000";
			when others => code <="00000";
	end case;

when s3 => rows <= "0001";
		case columns is
			when "1000" => code <="01111"; --*
			when "0100" => code <="00001"; --0
			when "0010" => code <="10000"; --#
			when "0001" => code <="01110"; --D
			when "0000" => code <="00000";
			when others => code <="00000";
	end case;
	
end case;
end process;

end Behavioral;