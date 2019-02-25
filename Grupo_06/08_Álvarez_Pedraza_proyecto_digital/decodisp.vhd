
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decodisp is
generic(Max: natural :=50000000);
	port(
		clk: in std_logic;
		show : in std_logic;
		sw : in std_logic_vector (7 downto 0);
		an	: out std_logic_vector (3 downto 0);
		seg : out std_logic_vector (0 to 6);
		buzz: out std_logic;
		ala1: out std_logic;
		ala2: out std_logic;
		ama1: out std_logic;
		ama2: out std_logic;
		ama3: out std_logic;
		bla1: out std_logic;
		bla2: out std_logic;
		bla3: out std_logic;
		azu1: out std_logic;
		azu2: out std_logic
		);
		
end decodisp;

architecture Behavioral of decodisp is
signal e_buzz: integer range 1 to Max;

begin
process(show)
begin
	if(show = '1') then
		an <= "1110";
	else
		an <= "1111";
	end if;
end process;

process (sw)
begin
case sw is
	when "00110000" =>
		seg <= "0000001";
	when "00110001" =>
		seg <= "1001111";
	when "00110010" =>
		seg <= "0010010";
	when "00110011" =>
		seg <= "0000110";
	when "00110100" =>
		seg <= "1001100";
	when "00110101" =>
		seg <= "0100100";
	when "00110110" =>
		seg <= "0100000";
	when "00110111" =>
		seg <= "0001111";
	when "00111000" =>
		seg <= "0000000";
	when "00111001" =>
		seg <= "0001100";
	when "01000001" =>
		seg <= "0001000";
	when "01000010" =>
		seg <= "1100000";
	when "01000011" =>
		seg <= "0110001";
	when "01000100" =>
		seg <= "1000010";
	when "01000101" =>
		seg <= "0110000";
	when "01000110" =>
		seg <= "0111000";
	when "01000111" =>
		seg <= "0001100";
	when "01001000" =>
		seg <= "1001000";
	when "01001001" =>
		seg <= "1111001";
	when "01001010" =>
		seg <= "1000011";
	when "01001011" =>
		seg <= "1010000";
	when "01001100" =>
		seg <= "1110001";
	when "01001101" =>
		seg <= "0001001";
	when "01001110" =>
		seg <= "1101010";
	when "01001111" =>
		seg <= "0000001";
	when "01010000" =>
		seg <= "0011000";
	when "01010001" =>
		seg <= "0001100";
	when "01010010" =>
		seg <= "0011001";
	when "01010011" =>
		seg <= "0100100";
	when "01010100" =>
		seg <= "1110000";
	when "01010101" =>
		seg <= "1100011";
	when "01010110" =>
		seg <= "1000001";
	when "01010111" =>
		seg <= "1111000";
	when "01011000" =>
		seg <= "1000100";
	when "01011001" =>
		seg <= "0110110";
	when others =>
		seg <= "1111111";
	end case;
end process;


process (clk,sw,e_buzz)
begin
if rising_edge (clk) then e_buzz<= e_buzz+1;
end if;

case sw is
-- alarma con 0
	when "00110000" =>
		if e_buzz < 25000000 then ala1<='0';
		else ala1<='1';
		end if;
		if e_buzz < 25000000 then buzz<='0';
		else buzz<='1';
		end if;
		if e_buzz < 25000000 then ala2<='0';
		else ala2<='1';
		end if;
		
		ama1 <= '0';
		ama2 <= '0';
		ama3 <= '0';
		bla1 <= '0';
		bla2 <= '0';
		bla3 <= '0';
		azu1 <= '0';
		azu2 <= '0';
-- social
	when "00111001" =>
		buzz <= '0';
		ala1 <= '0';
		ala2 <= '0';
		ama1 <= '1';
		ama2 <= '1';
		ama3 <= '1';
		bla1 <= '0';
		bla2 <= '0';
		bla3 <= '0';
		azu1 <= '0';
		azu2 <= '0';
-- vibrante
	when "01000011" =>
		ala1 <= '0';
		ala2 <= '0';
		buzz <= '0';
		ama1 <= '0';
		ama2 <= '0';
		ama3 <= '0';
		bla1 <= '1';
		bla2 <= '1';
		bla3 <= '1';
		azu1 <= '0';
		azu2 <= '0';
-- atención
		when "01000001" =>
		ala1 <= '0';
		ala2 <= '0';
		buzz <= '0';
		ama1 <= '0';
		ama2 <= '0';
		ama3 <= '0';
		bla1 <= '1';
		bla2 <= '1';
		bla3 <= '0';
		azu1 <= '1';
		azu2 <= '0';
-- animado
		when "00110101" =>
		ala1 <= '0';
		ala2 <= '0';
		buzz <= '0';
		ama1 <= '1';
		ama2 <= '1';
		ama3 <= '0';
		bla1 <= '0';
		bla2 <= '0';
		bla3 <= '0';
		azu1 <= '1';
		azu2 <= '1';
--otros 
		when others =>
		ala1 <= '0';
		ala2 <= '0';
		buzz <= '0';
		ama1 <= '0';
		ama2 <= '0';
		ama3 <= '0';
		bla1 <= '0';
		bla2 <= '0';
		bla3 <= '0';
		azu1 <= '0';
		azu2 <= '0';
	
	end case;
end process;

end Behavioral;

