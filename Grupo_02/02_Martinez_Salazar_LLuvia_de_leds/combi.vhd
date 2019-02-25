----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:53:35 09/05/2018 
-- Design Name: 
-- Module Name:    combi - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity combi is
port( clk : in std_logic;
      rst: in std_logic;
      dip: in std_logic_vector (2 downto 0);
		pwm_out1 : out std_logic;
      pwm_out2 : out std_logic);		
end combi;

architecture Behavioral of combi is
 
signal dd, qq : std_logic_vector (26 downto 0):= (others=>'1');
signal A, B, C, D, E : std_logic;
signal sig_pwm : std_logic;

begin

dd <= (others=>'0') when qq = x"BEBC200" else qq+1;
A <= '1' when qq< x"1312D00" else '0';
B <= '1' when qq< x"2625A00" else '0';
C <= '1' when qq< x"2FAF080" else '0';
D <= '1' when qq< x"3938700" else '0';
E <= '1' when qq< x"4C4B400" else '0';

process(A,B,C,D,E,dip)
begin
case dip is
when "000" => sig_pwm <= A;
when "001" => sig_pwm <= B;
when "010" => sig_pwm <= C;
when "011" => sig_pwm <= D;
when "100" => sig_pwm <= E;
when others => sig_pwm <= '0';

end case;
end process;

process(clk,rst)
begin
if (rst='1') then 
  qq <= (others=>'1');
elsif (clk'event  and clk='1') then 
  qq <= dd;
end if;
end process; 


pwm_out1 <= sig_pwm;
pwm_out2 <= sig_pwm;

end Behavioral;

