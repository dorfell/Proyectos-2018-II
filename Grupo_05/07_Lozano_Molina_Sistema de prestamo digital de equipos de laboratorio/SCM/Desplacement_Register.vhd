library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Desplacement_Register is
port(
	clk : in std_logic; 
	clk1 : in std_logic;
	clk2 : in std_logic;
	rst : in std_logic;
	data : in std_logic_vector(63 downto 0);
	din : out std_logic
);
end Desplacement_Register;

architecture Behavioral of Desplacement_Register is

constant size : integer := 64-1;
signal i : std_logic_vector(6 downto 0) := (others=>'0');
signal j : std_logic_vector (0 downto 0) := (others => '0');

begin

process(rst,clk,clk1,clk2,i)
begin
if(rst = '1')then
	din <= '0';
	i<=(others => '0');
	j<=(others => '0');
elsif (clk'event and clk = '1')then
	if(clk2 = '0')then
		if(clk1 = '0' and j =0)then
			j <= (others => '1');
			if(i>size)then
				i<=(others => '0');
			else
				din <= data(conv_integer(i));
				i<=i+1;
			end if;
		elsif(clk1= '1')then
			j<=(others=>'0');
		end if;
	elsif(clk2 = '1')then
		i<=(others => '0');
		j<=(others => '0');
		din <= '0';
	end if;
end if;

end process;

end Behavioral;

