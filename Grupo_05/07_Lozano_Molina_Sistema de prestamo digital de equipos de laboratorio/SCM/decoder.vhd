library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.movement.ALL;
use work.phrases.ALL;

entity decoder is
port(
	--clk : in std_logic;
	rst : in std_logic;
	code : in std_logic_vector (4 downto 0);
	data : out std_logic_vector (1 downto 0)
);
end decoder;

architecture Behavioral of decoder is

signal i : std_logic := '0';
shared variable w_concatenation:MRAM;
shared variable w_preconcatenation : user_in := (("00000000","00000000","00000000","00000000","00000000"),
																 ("00000000","00000000","00000000","00000000","00000000"),
                                                 ("00000000","00000000","00000000","00000000","00000000"),
												             ("00000000","00000000","00000000","00000000","00000000"));
---------------------------------------------------------------------
procedure concatenation(e : in std_logic)is
begin
	if(e='1')then
		for j in 0 to 3 loop
			for i in 0 to 23 loop
				if(j=0 and (i=0 or i=1 or i=2 or i=3 or i=4))then
					w_concatenation.print_msm(i) := w_preconcatenation(j)(i);		
				elsif(j=1 and (i=6 or i=7 or i=8 or i=9 or i=10))then
					w_concatenation.print_msm(i) := w_preconcatenation(j)(i-6);
				elsif(j=2 and (i=12 or i=13 or i=14 or i=15 or i=16))then
					w_concatenation.print_msm(i) := w_preconcatenation(j)(i-12);
				elsif(j=3 and (i=18 or i=19 or i=20 or i=21 or i=22))then
					w_concatenation.print_msm(i) := w_preconcatenation(j)(i-18);
				end if;
				if(i=5 or i=11 or i=17 or i=23)then
					w_concatenation.print_msm(i):="00000000";
				end if;
			end loop;
		end loop;
		
		for i in 0 to 210 loop
			w_concatenation.print_msm(i+24) := w_check(i);
		end loop;
	end if;
end procedure;
---------------------------------------------------------------------
begin

process(code,i,rst)
variable j : integer := 0;
begin

if(rst='1')then
	j := 0;
	i <= '0';
	data <= "00";
else
--elsif(clk'event and clk = '1')then
case code is
	when "00001" =>--------------------------------------------------0
		if(j<4 and i='0')then
			w_preconcatenation(j) := ("00111110","01000101","01001001","01010001","00111110");
			j:=j+1;
			i<='1';
		end if;
		data<="00";
	when "00010" =>--------------------------------------------------1
		if(j<4 and i='0')then
			w_preconcatenation(j) := ("00000001","00100001","01111111","00000001","00000001");
			j:=j+1;
			i<='1'; 
		end if;
		data<="00";
	when "00011" =>--------------------------------------------------2 
		if(j<4 and i='0')then
			w_preconcatenation(j) := ("00100001","01000011","01000101","01001001","00110001");
			j:=j+1;
			i<='1';
		end if;
		data<="00";
	when "00100" =>--------------------------------------------------3
		if(j<4 and i='0')then
			w_preconcatenation(j) := ("00100010","01000001","01001001","01001001","00110110");
			j:=j+1;
			i<='1';
		end if;
		data<="00";
	when "00101" =>--------------------------------------------------4
		if(j<4 and i='0')then
			w_preconcatenation(j) := ("00000100","00001100","00010100","00100100","01111111");
			j:=j+1;
			i<='1';
		end if;
		data<="00";
	when "00110" =>--------------------------------------------------5
		if(j<4 and i='0')then
			w_preconcatenation(j) := ("01111001","01001001","01001001","01001001","01000110");
			j:=j+1;
			i<='1';
		end if;
		data<="00";
	when "00111" =>--------------------------------------------------6
		if(j<4 and i='0')then
			w_preconcatenation(j) := ("00111110","01001001","01001001","01001001","00100110");
			j:=j+1;
			i<='1';
		end if;
		data<="00";
	when "01000" =>--------------------------------------------------7
		if(j<4 and i='0')then
			w_preconcatenation(j) := ("01000000","01000000","01000111","01001000","01110000");
			j:=j+1;
			i<='1';
		end if;
		data<="00";
	when "01001" =>--------------------------------------------------8
		if(j<4 and i='0')then
			w_preconcatenation(j) := ("00110110","01001001","01001001","01001001","00110110");
			j:=j+1;
			i<='1';
		end if;
		data<="00";
	when "01010" =>--------------------------------------------------9
		if(j<4 and i='0')then
			w_preconcatenation(j) := ("00110010","01001001","01001001","01001001","00111110");
			j:=j+1;
			i<='1';
		end if;
		data<="00";
	when "01011" =>--------------------------------------------------A
		if(i='0')then
			concatenation('1');
				data<="01";
				i<='1';
				j:=j+1;
		else
			data<="00";
			j:=0;
		end if;
	when "01100" =>--------------------------------------------------B
		if(i='0')then
				data<="11";
				i<='1';
				j:=j+1;
		else
			data<="00";
			j:=0;
		end if;
	when "00000" =>--------------------------------------------------nada
		data<="00";
		i<='0';
	when others => --------------------------------------------------nada
		data<="10";
		i<='0';
end case;
end if;
end process;

end Behavioral;
