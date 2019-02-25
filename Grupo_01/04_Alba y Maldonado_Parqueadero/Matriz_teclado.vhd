library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity keypad is
 Port ( samp_ck : in STD_LOGIC; -- clock to strobe columns
 col : out STD_LOGIC_VECTOR (4 downto 1); -- output column lines
 row : in STD_LOGIC_VECTOR (4 downto 1); -- input row lines
 val : out STD_LOGIC_VECTOR (3 downto 0); -- hex value of key depressed
 ss : out STD_LOGIC_VECTOR (6 downto 0); -- hex value of key depressed
 hit : out STD_LOGIC); -- indicates when a key has been pressed
end keypad;
architecture Behavioral of keypad is
signal CV1, CV2, CV3, CV4, value: std_logic_vector (4 downto 1) := "1111"; -- column vector of each row
signal curr_col: std_logic_vector (4 downto 1) := "1110"; -- current column code
begin
strobe_proc: process
begin

val<=value;

wait until rising_edge(samp_ck);
case curr_col is
when "1110" =>
CV1 <= row; curr_col <= "1101";
when "1101" =>
CV2 <= row; curr_col <= "1011";
when "1011" =>
CV3 <= row; curr_col <= "0111";
when "0111" =>
CV4 <= row; curr_col <= "1110";
when others =>
curr_col <= "1110";
end case;
end process;
out_proc: process (CV1, CV2, CV3, CV4)
begin
hit <= '1';
if CV1(1) = '0' then value <= X"1";
elsif CV1(2) = '0' then value <= X"4";
elsif CV1(3) = '0' then value <= X"7";
elsif CV1(4) = '0' then value <= X"0";
elsif CV2(1) = '0' then value <= X"2";
elsif CV2(2) = '0' then value <= X"5";
elsif CV2(3) = '0' then value <= X"8";
elsif CV2(4) = '0' then value <= X"F";
elsif CV3(1) = '0' then value <= X"3";
elsif CV3(2) = '0' then value <= X"6";
elsif CV3(3) = '0' then value <= X"9";
elsif CV3(4) = '0' then value <= X"E";
elsif CV4(1) = '0' then value <= X"A";
elsif CV4(2) = '0' then value <= X"B";
elsif CV4(3) = '0' then value <= X"C";
elsif CV4(4) = '0' then value <= X"D";
else hit <= '0'; value <= X"0";
end if;
end process;
col <= curr_col;



process (value)
begin
   case value is              --abcdefg
      when "0000" => ss <= "0000001";
      when "0001" => ss <= "1001111";
      when "0010" => ss <= "0010010";
      when "0011" => ss <= "0000110";
      when "0100" => ss <= "1001100";
      when "0101" => ss <= "0100100";
      when "0110" => ss <= "0100000";
      when "0111" => ss <= "0001111";
      when "1000" => ss <= "0000000";
      when "1001" => ss <= "0000100";
           when "1010" => ss <= "0001000";
           when "1011" => ss <= "1100000";
           when "1100" => ss <= "0110001";
           when "1101" => ss <= "1000010";
           when "1110" => ss <= "0110000";
           when "1111" => ss <= "0111000";
           when others => ss <= "0111000";
          
   end case;
end process;




end Behavioral; 