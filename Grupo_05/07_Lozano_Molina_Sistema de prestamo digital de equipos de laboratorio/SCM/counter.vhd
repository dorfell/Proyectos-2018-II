library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

entity counter is

port( 
	clk : in std_logic;
	rst: in std_logic;
	vrst: in std_logic; 
	SCM_rst : in std_logic;
	enable : in std_logic;
	c_out: out std_logic_vector (8 downto 0)
);

end counter;

architecture Behavioral of counter is

signal r_out, r_in : std_logic_vector(8 downto 0):=( others =>'0');

begin

r_in<= (others=>'0')when r_out = x"12C" else r_out+1; --hasta 300
c_out <= r_out; 

process (clk,rst,vrst,SCM_rst)
begin  
   if rst = '1' or vrst = '1' or SCM_rst = '1' then
      r_out<=(others=>'0');
   elsif (clk'event and clk = '1') then
      if (enable = '1') then
         r_out<=r_in;
      end if;
   end if;
end process;


end Behavioral;

