library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;

entity GUI is


   PORT(
		 clk        : IN    STD_LOGIC;
		 rst   : INOUT    STD_LOGIC;
		 top_line : out STD_LOGIC_VECTOR(127 downto 0);
		 --show        : out    STD_LOGIC;
		 bottom_line : out STD_LOGIC_VECTOR(127 downto 0);
		 --sensor : IN STD_LOGIC; 
		 ledsito : OUT std_logic;
		 --sensor : IN STD_LOGIC; 
		 pwm_out : OUT STD_LOGIC;
       paleta : OUT STD_LOGIC;
		 yellow : OUT STD_LOGIC;
		 blue : OUT STD_LOGIC;
		 red : OUT STD_LOGIC;
		 number : in std_logic_vector(3 downto 0);
		 buzzer 	:out std_logic);
		 --motor : buffer std_logic_vector(3 downto 0));
		
		 
		 
		 
	end GUI;

architecture Behavioral of GUI is

signal dd, qq : std_logic_vector(26 downto 0);
signal frec1 : std_logic_vector(19 downto 0);
signal senal : std_logic;
signal dev: std_logic_vector(1 downto 0);
--signal activo : std_logic;
SIGNAL selec: std_logic_vector(3 DOWNTO 0);
SIGNAL motor: std_logic_vector(3 DOWNTO 0);
shared VARIABLE n : integer := 0;
shared VARIABLE p : integer := 0;
shared VARIABLE c : integer := 0;--contador para primera parte de la gui
shared VARIABLE a : integer := 0;-- variable centinela para evitar multiloop REEMPLAZAR POR BITS


begin

PROCESS 
	begin
 frec1 <= x"01B58"; -- esta es la señal del pwm que generamos
end process;	 



dd <= (others=>'0') when qq=x"02710" else qq+1;

senal <= '1' when qq < frec1 else
	'0';
pwm_out<= senal;
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

			if ((a=0)) then
			
			buzzer<= '0';
			c:= c + 1;
			
				if(c< 100000000 and c>0) then 
				top_line <= x"4861726f6c6420616e6420416c656a61";
				bottom_line <= x"20202020202020202020202020202020";
				rst <= '1';
				--show<='0';
				
				elsif(c< 200000000 and c>100000000) then
				top_line <= x"4861726f6c6420616e6420416c656a61";--harold and aleja present
				bottom_line <= x"202050726573656e742e2e2e20202020";
				rst <= '1';
				
				elsif(c< 400000000 and c>200000000) then 
				top_line <= x"433a2020202020202020202020203a44";--C: colormix :D 
				bottom_line <= x"202020436f6c6f724d69782120202020";
				rst <= '1';
			
				elsif(c< 430000000 and c>400000000) then 
				n:=0;
				top_line <= x"4c6f6164696e67202020202020202020";
				bottom_line <= x"436f6c6f727320202020202020202020";
				rst <= '1';
				
				elsif(c< 450000000 and c>430000000) then 
				top_line <= x"4c6f6164696e67202020202020202020";
				bottom_line <= x"436f6c6f7273202e2020202020202020";
				rst <= '1';
				
				elsif(c< 480000000 and c>450000000) then 
				top_line <= x"4c6f6164696e67202020202020202020";
				bottom_line <= x"436f6c6f7273202e2e20202020202020";
				rst <= '1';
				
				elsif(c< 520000000 and c>480000000) then 
				top_line <= x"4c6f6164696e67202020202020202020";
				bottom_line <= x"436f6c6f7273202e2e2e202020202020"; --loading colors...
				rst <= '1';
				
				elsif(c< 900000000 and c>520000000) then 
				top_line <= x"5265643a312059656c6c6f773a322020";
				bottom_line <= x"426c75653a3320477265656e3a342020";--1 to 4
				rst <= '1';
				elsif(c< 1320000000 and c>900000000) then 
				top_line <= x"4f72616e67653a352042726f776e3a36";--5 to 8
				bottom_line <= x"507572706c653a372020202020202020";
				rst <= '1';
			
				elsif(c< 1600000000 and c>1320000000) then 
				top_line <= x"43686f6f736520796f75722020202020";--choose your color
				bottom_line <= x"6f7074696f6e202d3e20202020202020";
				rst <= '1';
				a:=1;			
				--show <='1';	
				else
				top_line <= x"20202020202020202020202020202020";
				bottom_line <= x"20202020202020202020202020202020";
				rst <= '1';
				
			
			end if;
		end if;	
		
	   if ((a = 1)) then
	
			if((number = "0001"))then--red
				top_line <= x"52656420202020202020202020202020";--red
				bottom_line <= x"41726520796f7520737572653f202020";--are you sure?
				rst <= '1';
				selec <= number;
				--b:= 1;
				a:= 2;--revisar si al oprimir otra tecla al tener una ya previamente seleccionada se cambia o no... es decir si 
						--necesario cambiar de ciclo o quizá simplemente se arregle porque sí :p
			elsif((number = "0010")) then --yellow
				top_line <= x"59656c6c6f7720202020202020202020";
				bottom_line <= x"41726520796f7520737572653f202020";
				rst <= '1';
				selec <= number;
				--d:=1;
				a:=2;
			elsif((number = "0011")) then --blue
				top_line <= x"426c7565202020202020202020202020";
				bottom_line <= x"41726520796f7520737572653f202020";
				rst <= '1';
				selec <= number;
				a:=2;
				--e:=1;
			elsif((number = "0100")) then --green
				top_line <= x"477265656e2020202020202020202020";
				bottom_line <= x"41726520796f7520737572653f202020";
				rst <= '1';
				selec <= number;
				a:=2;
				--f:=1;
			elsif((number = "0101")) then --orange
				top_line <= x"4f72616e676520202020202020202020";
				bottom_line <= x"41726520796f7520737572653f202020";
				selec <= number;
				rst <= '1';
				a:=2;
				--g:=1;		
		   elsif((number = "0110")) then --brown
				top_line <= x"42726f776e2020202020202020202020";
				bottom_line <= x"41726520796f7520737572653f202020";
				rst <= '1';
				selec <= number;
				a:=2;
				--h:=1;
			elsif((number = "0111")) then --purple
				top_line <= x"507572706c6520202020202020202020";
				bottom_line <= x"41726520796f7520737572653f202020";
				rst <= '1';
				selec <= number;
				a:=2;
				--i:=1;
				
--			elsif((number = "1000")) then --other
--				top_line <= x"4f746865722020202020202020202020";
--				bottom_line <= x"41726520796f7520737572653f202020";
--				rst <= '1';
--				selec <= number;
--				a:=2;
--				--j:=1;
				
			elsif((number = "1010")) then --back choose color
				
				c:=400000001;
				a:=0;
				top_line <= x"4c6f6164696e67202020202020202020";
				bottom_line <= x"436f6c6f727320202020202020202020";
				rst <= '1';



			end if;
		end if;
		
		if((a=2)) then
			
			if (number = "1010") then -- i'm not sure yet so come back to load colors
				
				c:=400000001;
				a:=0;
				top_line <= x"4c6f6164696e67202020202020202020";
				bottom_line <= x"436f6c6f727320202020202020202020";
				rst <= '1';
			
			elsif(number = "1100") then -- i'm sure of my choice so let's move to the next step
				top_line <= x"476f6f6f6f6f6f6f6f6f6f6f6f6f6f21";--gooooo, --but this doesn't appear. It moves to the next stage.
				bottom_line <= x"20202020202020202020202020202020";
				rst <= '1';
				
				
				a:=3; -- check then what to do at a:= 3 if we need to create a variable for the engines or if 
						--we can use the same number
			end if;
		
		end if;
		
		if((a=3)) then
				--activo <= '1';
				buzzer<= '1';
				top_line <= x"4372656174696e672e2e2e2020202020"; --cargando... mezclando
				bottom_line <= x"20202020202020202020202020202020";
				
				rst <= '1';
				
			
	
		
			n:= n+1;

			if (n>0 and n < 500000000) then	--TIEMPO DE ENCENDIDO DE MOTORES
			
			case (selec) is
			
				when "0001" => motor <= "0001";											
				when "0010" => motor <= "0010";
				when "0011" => motor <= "0011";
				when "0100" => motor <= "0100";
				when "0101" => motor <= "0101";
				when "0110" => motor <= "0110";
				when "0111" => motor <= "0111";
				when "1000" => motor <= "0000";--yhgjkl selec 8 finish sea cero
				when others => motor <= "0000";
								
				
			end case;
			
			elsif (n>500000000 and n<800000000)then--TIEMPO DE LA PALETA
				motor <= "1000";
			
			elsif(n > 800000000)then
				motor <= "0000";
				a:= 4;
		
			end if;	
			
		
		
		end if;
		
		
		
			if((a=4)) then
			
				buzzer<= '0';		
				top_line <= x"456e6421205072657373203c2d2d2020"; -- we have finished
				bottom_line <= x"616e64203020746f2072657374617274";
				rst <= '1';
				if (number = "1010") then --reiniciar carga de colores
					--dev<= dev + 1;
					c:=400000001;
					a:=0;
					--move <= '1'; --pweroooo pppppppppppppppppp
					top_line <= x"4c6f6164696e67202020202020202020";
					bottom_line <= x"436f6c6f727320202020202020202020";
					rst <= '1';
				
				end if;
						
			
			
		
		
		end if;
		
		

		
		
end if;
		
		
end process;
	--para mover los motores: 		
	process(clk)
		begin
			if (a=3) then		
				if (motor= "0001") then-- para mover la paleta al final
					yellow <= '0';
					red <= senal;
					blue <= '0';
					paleta <= '0';
					ledsito <= '1';
				end if;
				if (motor= "0010") then-- para mover la paleta al final
					yellow <= senal;
					red <= '0';
					blue <= '0';
					paleta <= '0';
					ledsito <= '1';
				end if;
				if (motor= "0011") then-- para mover la paleta al final
					yellow <= '0';
					red <= '0';
					blue <= senal;
					paleta <= '0';
					ledsito <= '1';
				end if;
				if (motor= "0100") then-- para mover la paleta al final
					if (n>0 and n < 250000000) then
						yellow <= senal;
						red <= '0';
						blue <= '0';
						paleta <= '0';
						ledsito <= '1';
					elsif (n>250000000 and n < 500000000) then
						yellow <= '0';
						red <= '0';
						blue <= senal;
						paleta <= '0';
						ledsito <= '1';
						end if;
				end if;
				if (motor= "0101") then-- para mover la paleta al final
					if (n>0 and n < 250000000) then
						yellow <= senal;
						red <= '0';
						blue <= '0';
						paleta <= '0';
						ledsito <= '1';
					elsif (n>250000000 and n < 500000000) then
						yellow <= '0';
						red <= senal;
						blue <= '0';
						paleta <= '0';
						ledsito <= '1';
						end if;
				end if;
				if (motor= "0110") then-- para mover la paleta al final
					if (n>0 and n < 190000000) then
						yellow <= senal;
						red <= '0';
						blue <= '0';
						paleta <= '0';
						ledsito <= '1';
					elsif (n>190000000 and n < 360000000) then
						yellow <= '0';
						red <= senal;
						blue <= '0';
						paleta <= '0';
						ledsito <= '1';
					elsif (n>360000000 and n < 500000000) then
						
						yellow <= '0';
						red <= '0';
						blue <= senal;
						paleta <= '0';
						ledsito <= '1';

						end if;
				end if;
				if (motor= "0111") then-- para mover la paleta al final
					if (n>0 and n < 250000000) then
						yellow <= '0';
						red <= senal;
						blue <= '0';
						paleta <= '0';
						ledsito <= '1';
					elsif (n>250000000 and n < 500000000) then
						yellow <= '0';
						red <= '0';
						blue <= senal;
						paleta <= '0';
						ledsito <= '1';
						end if;
				end if;
				if (motor= "1000") then-- para mover la paleta al final
					yellow <= '0';
					red <= '0';
					blue <= '0';
					paleta <= senal;
					ledsito <= '1';
				end if;

				
			else
				paleta <= '0';
				yellow <= '0';
				red <= '0';
				blue <= '0';
				paleta <= '0';

				
				ledsito <= '0';
		end if;
	end process;
end Behavioral;