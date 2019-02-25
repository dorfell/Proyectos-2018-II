library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use work.movement.ALL;

entity Machine_States is
port(
	clk2 : in std_logic;
	rst : in std_logic;
	clk : in std_logic;
	count : in std_logic_vector (8 downto 0);
	vsw : in std_logic;
	--vsw : in std_logic_vector (0 downto 0);
	c_msm : in std_logic_vector (2 downto 0);
	user : in std_logic_vector (1 downto 0);
	vrst : out std_logic;
	load : out std_logic;
	data : out std_logic_vector(63 downto 0)
);

end Machine_States;

architecture Behavioral of Machine_States is

type states is (s0,s1,s2,s3,s4,d0,d1,d2,d3,d4,d5,d6,d7);
signal present_state, next_state : states;
signal i : std_logic_vector (0 downto 0) := (others => '0');

begin

--===================
-- Present State
--===================

process(clk,rst)
begin
if(rst = '1')then
	present_state<=s0;
	i<=(others=>'0');
elsif(clk'event and clk = '1')then
	if(clk2 = '1')then
			if(i=0)then
				present_state<=next_state;
				i<=(others=>'1');
			end if;
				load<=clk2;
		elsif(clk2='0')then
			if(i=1)then
				i<=(others=>'0');
			end if;
				present_state<=present_state;
				load<=clk2;
		end if;
end if;
end process; 

--===================
-- Next state logic
--===================

process(present_state,vsw)
begin
case present_state is
	when s0 =>
		case vsw is
			when '0' => next_state <= s0;
			when '1' => next_state <= s1;
			when others => next_state <= s0;
		end case;
	when s1 =>
		next_state<=s2;
	when s2 =>
		next_state<=s3;
	when s3 =>
		next_state<=s4;
	when s4 =>
		next_state<=d0;
	when d0 =>
		next_state <= d1;
	when d1 =>
		next_state <= d2;
	when d2 =>
		next_state <= d3;
	when d3 =>
		next_state <= d4;
	when d4 =>
		next_state <= d5;
	when d5 =>
		next_state <= d6;
	when d6 =>
		next_state <= d7;
	when d7 =>
		case vsw is
			when '0' => next_state <= s0;
			when '1' => next_state <= d0;
			when others => next_state <= s0;
		end case; 
end case;
end process;

--===================
-- Output logic
--===================

process(present_state,count,c_msm,user)

variable q,j : integer := 0;

begin

j:=conv_integer(unsigned(count));

case present_state is
	when s0 =>
		vrst<='1';
		--data <= "0000000011110001"&"0000000011110001"&"0000000011110001"&"0000000011110001";--null
		data <= "0000000000110001"&"0000000000110001"&"0000000000110001"&"0000000000110001"; --shutdown mode (turn off operation)
	when s1 =>
		vrst<='0';
		data <= "1000000000110001"&"1000000000110001"&"1000000000110001"&"1000000000110001"; --shutdown mode (normal operation)
	when s2 =>
		vrst<='0';
		data <= "1110000011010001"&"1110000011010001"&"1110000011010001"&"1110000011010001"; --scan_limit (0x07 todas columnas encendidas)
	when s3 =>
		vrst<='0';
		data <= "1111000001010001"&"1111000001010001"&"1111000001010001"&"1111000001010001"; --intensity (19/32)
	when s4 =>
		vrst<='0';
		data <= "0000000010010001"&"0000000010010001"&"0000000010010001"&"0000000010010001"; --decode (no decode mode)
	when d0 =>
		q := type_msm(c_msm);

		if(j>q+31)then
			vrst<='0';
			data<="00000000"&"10000001"&"00000000"&"10000001"&"00000000"&"10000001"&"00000000"&"10000001";
		else
			data<=mod1(c_msm(2 downto 0), user(1 downto 0),j,0,q)&"10000001"&
					mod2(c_msm(2 downto 0), user(1 downto 0),j,0,q)&"10000001"&
					mod3(c_msm(2 downto 0), user(1 downto 0),j,0,q)&"10000001"&
					mod4(c_msm(2 downto 0), user(1 downto 0),j,0,q)&"10000001";
			vrst<='0'; 
		end if;
	
	when d1 =>
		q := type_msm(c_msm);
		
		if(j>q+31)then
			vrst<='0';
			data<="00000000"&"01000001"&"00000000"&"01000001"&"00000000"&"01000001"&"00000000"&"01000001";
		else
			data<=mod1(c_msm(2 downto 0), user(1 downto 0),j,1,q)&"01000001"&
					mod2(c_msm(2 downto 0), user(1 downto 0),j,1,q)&"01000001"&
					mod3(c_msm(2 downto 0), user(1 downto 0),j,1,q)&"01000001"&
					mod4(c_msm(2 downto 0), user(1 downto 0),j,1,q)&"01000001";
			vrst<='0'; 
		end if;
			
	when d2 =>
		q := type_msm(c_msm);

		if(j>q+31)then
			vrst<='0';
			data<="00000000"&"11000001"&"00000000"&"11000001"&"00000000"&"11000001"&"00000000"&"11000001";
		else
			data<=mod1(c_msm(2 downto 0), user(1 downto 0),j,2,q)&"11000001"&
					mod2(c_msm(2 downto 0), user(1 downto 0),j,2,q)&"11000001"&
					mod3(c_msm(2 downto 0), user(1 downto 0),j,2,q)&"11000001"&
					mod4(c_msm(2 downto 0), user(1 downto 0),j,2,q)&"11000001";
			vrst<='0'; 
		end if;
		
	when d3 =>
		q := type_msm(c_msm);

		if(j>q+31)then
			vrst<='0';
			data<="00000000"&"00100001"&"00000000"&"00100001"&"00000000"&"00100001"&"00000000"&"00100001";
		else
			data<=mod1(c_msm(2 downto 0), user(1 downto 0),j,3,q)&"00100001"&
					mod2(c_msm(2 downto 0), user(1 downto 0),j,3,q)&"00100001"&
					mod3(c_msm(2 downto 0), user(1 downto 0),j,3,q)&"00100001"&
					mod4(c_msm(2 downto 0), user(1 downto 0),j,3,q)&"00100001";
			vrst<='0'; 
		end if;
		
	when d4 =>
		q := type_msm(c_msm);

		if(j>q+31)then
			vrst<='0';
			data<="00000000"&"10100001"&"00000000"&"10100001"&"00000000"&"10100001"&"00000000"&"10100001";
		else
			data<=mod1(c_msm(2 downto 0), user(1 downto 0),j,4,q)&"10100001"&
					mod2(c_msm(2 downto 0), user(1 downto 0),j,4,q)&"10100001"&
					mod3(c_msm(2 downto 0), user(1 downto 0),j,4,q)&"10100001"&
					mod4(c_msm(2 downto 0), user(1 downto 0),j,4,q)&"10100001";
			vrst<='0'; 
		end if;
		
	when d5 =>
		q := type_msm(c_msm);
		
		if(j>q+31)then
			vrst<='0';
			data<="00000000"&"01100001"&"00000000"&"01100001"&"00000000"&"01100001"&"00000000"&"01100001";
		else
			data<=mod1(c_msm(2 downto 0), user(1 downto 0),j,5,q)&"01100001"&
					mod2(c_msm(2 downto 0), user(1 downto 0),j,5,q)&"01100001"&
					mod3(c_msm(2 downto 0), user(1 downto 0),j,5,q)&"01100001"&
					mod4(c_msm(2 downto 0), user(1 downto 0),j,5,q)&"01100001";
			vrst<='0'; 
		end if;
		
	when d6 =>
		q := type_msm(c_msm);
		
		if(j>q+31)then
			vrst<='0';
			data<="00000000"&"11100001"&"00000000"&"11100001"&"00000000"&"11100001"&"00000000"&"11100001";
		else
			data<=mod1(c_msm(2 downto 0), user(1 downto 0),j,6,q)&"11100001"&
					mod2(c_msm(2 downto 0), user(1 downto 0),j,6,q)&"11100001"&
					mod3(c_msm(2 downto 0), user(1 downto 0),j,6,q)&"11100001"&
					mod4(c_msm(2 downto 0), user(1 downto 0),j,6,q)&"11100001";
			vrst<='0'; 
		end if;
		
	when d7 =>
		q := type_msm(c_msm);
		if(j>q+31)then
			vrst<='1';
			data<="00000000"&"00010001"&"00000000"&"00010001"&"00000000"&"00010001"&"00000000"&"00010001";
		else
			data<=mod1(c_msm(2 downto 0), user(1 downto 0),j,7,q)&"00010001"&
					mod2(c_msm(2 downto 0), user(1 downto 0),j,7,q)&"00010001"&
					mod3(c_msm(2 downto 0), user(1 downto 0),j,7,q)&"00010001"&
					mod4(c_msm(2 downto 0), user(1 downto 0),j,7,q)&"00010001";
			vrst<='0'; 
		end if;
end case;

end process;	

end Behavioral;

