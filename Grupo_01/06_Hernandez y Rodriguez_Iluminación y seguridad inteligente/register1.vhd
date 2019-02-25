----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:22:09 09/05/2018 
-- Design Name: 
-- Module Name:    register1 - Behavioral 
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

entity register1 is

port(
  
    rst, veri : IN STD_LOGIC; 
    clk : IN STD_LOGIC; 
	 sensor : IN STD_LOGIC; 
	 ledsito : OUT std_logic;
	 pwm_out1 : OUT STD_LOGIC;
    pwm_out2 : OUT STD_LOGIC
);
end register1;


 architecture Behavioral of register1 is

signal dd, qq : std_logic_vector(26 downto 0);
signal cc, hh : std_logic_vector(26 downto 0);
signal frec1 : std_logic_vector(19 downto 0);
signal senal, enable : std_logic;
shared VARIABLE c : integer := 0;

  signal clk_state: STD_LOGIC := '0';

constant max_count: INTEGER := 2000000000; -- 50000000/2
signal count: INTEGER range 0 to max_count;
type states is (s0,s1);
signal present_state, next_state: states;

begin

process
begin

 frec1 <= x"061A8";
      			 
end process;
 
 
dd <= (others=>'0') when qq=x"0C350" else qq+1;

senal <= '1' when qq < frec1 else
	'0';
pwm_out1<= senal;
process (clk, rst)
begin
   if (rst ='1') then
	qq <= (others => '0');
	elsif (clk'event and clk ='1') then
	qq<=dd;
	end if;
end process;


Process(clk)
	begin
		if (rising_edge (clk)) then
			c:= c + 1;
				if(c< 500000000 and c>0) then 
					 enable <= '0';
					else enable <= '1';
					c:=0;
				end if;
				
			
			end if;
	end process;

process
begin	
		
		
		if present_state = s1 then
		pwm_out2 <= senal; 
		ledsito <= '1';
		else
		pwm_out2 <= '0';
		ledsito <= '0';
		
		end if;
		
end process;

--===================
-- Present State
--===================
process(clk, rst)
begin
if rst = '1' then
present_state <= s0;
elsif (clk'event and clk='1') then
present_state <= next_state;
end if;

end process;

--===================
-- Next state logic
--===================
process(present_state)
begin
if veri = '0' then
case present_state is
when s0 =>
if (sensor = '1') then
next_state <= s1;
else
next_state <= s0;
end if;


when s1 =>
if (enable = '1') then 
next_state <= s0;
end if;

end case;
end if;
end process;
	end Behavioral;
