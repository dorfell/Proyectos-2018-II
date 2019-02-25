-------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;



entity FMS_Prueba is
	generic( Placa11: STD_LOGIC_VECTOR(7 DOWNTO 0) := "01000001"; Placa12: STD_LOGIC_VECTOR(7 DOWNTO 0) := "00110001";
				Placa21: STD_LOGIC_VECTOR(7 DOWNTO 0) := "01000010"; Placa22: STD_LOGIC_VECTOR(7 DOWNTO 0) := "00110010";
				Placa31: STD_LOGIC_VECTOR(7 DOWNTO 0) := "01000011"; Placa32: STD_LOGIC_VECTOR(7 DOWNTO 0) := "00110011";
				Placa41: STD_LOGIC_VECTOR(7 DOWNTO 0) := "01000100"; Placa42: STD_LOGIC_VECTOR(7 DOWNTO 0) := "00110100"
				);
				
	port(clk, reset : in STD_LOGIC;
			ps2c, ps2d : in STD_LOGIC;
			hsync, vsync : out STD_LOGIC;
			rgb : out STD_LOGIC_VECTOR(7 DOWNTO 0);
			parq1_status : out STD_LOGIC_VECTOR(7 DOWNTO 0);
			sensor : in STD_LOGIC_VECTOR(3 DOWNTO 0);
			anode2 : out STD_LOGIC_VECTOR(3 DOWNTO 0);
			ascii_code2: out STD_LOGIC_VECTOR(7 DOWNTO 0);
			prueba: out STD_LOGIC
			);
end FMS_Prueba;

architecture Behavioral of FMS_Prueba is

	type state_type is (s0,s1,s2,s3,s4,s5,s6,s7,s8,s9,s10);--,s11,s12);
	signal state_reg, state_next: state_type;
	signal got_code: STD_LOGIC;
	signal ascii_code: STD_LOGIC_VECTOR(7 DOWNTO 0);
	signal aviso : STD_LOGIC_VECTOR(1 DOWNTO 0);
	signal selector : STD_LOGIC_VECTOR(1 DOWNTO 0);
	signal tecla_nueva_reg, tecla_nueva, tecla_nueva_next : STD_LOGIC;
	signal ascii_actual,ascii_actual_aux : STD_LOGIC_VECTOR(7 DOWNTO 0); 
	signal ascii_anterior,ascii_anterior_aux : STD_LOGIC_VECTOR(7 DOWNTO 0);
	signal sw : STD_LOGIC_VECTOR(7 DOWNTO 0);
	signal enable_contador : STD_LOGIC;
	signal conteo: STD_LOGIC_VECTOR(3 DOWNTO 0);
	signal placa1,placa2: STD_logic_vector(6 DOWNTO 0);
	--signal parq1_status: STD_LOGIC_VECTOR(7 DOWNTO 0);

COMPONENT vga
			port(clk, reset: in std_logic; 
					hsync, vsync: out std_logic; 
						rgb: out std_logic_VECTOR(7 downto 0);
						sw: in std_logic_VECTOR(7 downto 0);
						placa1, placa2:  in std_logic_VECTOR(6 downto 0)
						);
END COMPONENT;



-------------------------
begin


						
Teclado: entity work.kb_test(arch)
			port map( clk => clk, reset => reset, 
							ps2d => ps2d, ps2c=>ps2c,
							ascii_code2 => ascii_code, 
							got_code => got_code,
							ascii_actual => ascii_actual,
							ascii_anterior => ascii_anterior,
							tecla_nueva => tecla_nueva);
							
contador: entity work.Contador_seg(Behavioral)	
			port map(clk => clk, reset => reset,
						enable=> enable_contador, 
						seg_output=> conteo);

					
unidad_vga: vga
			port map(clk=>clk, reset=>reset, 
					hsync=>hsync, vsync=>vsync,
						rgb=>rgb, sw=> sw, placa1=>placa1, placa2=>placa2);
			
--process(clk, reset)						
--	begin
--	if reset = '1' then
--		state_reg<=s0;
--	elsif (rising_edge(clk)) then
--		state_reg<=state_next;
--	end if;
--end process;


placa1 <= "0010011";
placa2 <= ascii_anterior(6 DOWNTO 0);


--process(state_reg, tecla_nueva, ascii_actual_aux)
--begin
--	case state_reg is
--	
----		when s11=>
----			placa1 <= "0100000";
----			placa2 <= "0100000";
----			enable_contador <= '1';
----			if (tecla_nueva = '1') then --conteo = "0001") then
----				enable_contador <= '0';
----				state_next <= s0;
----			else
----				state_next <= s11;
----			end if;
--		when s0 =>
--		ascii_actual_aux <= ascii_actual;
--		ascii_anterior_aux <= ascii_anterior;
--		placa1 <= ascii_actual(6 DOWNTO 0);
--		ascii_code2 <= not("11111100"); --estado siguiente en bcd
--		if ( ascii_actual_aux = Placa11 or ascii_actual_aux = Placa21 
--				or  ascii_actual_aux = Placa31 or ascii_actual_aux = Placa41 )			
--				then
--					tecla_nueva_next <= not(tecla_nueva);
--					state_next <= s1;
--		else 
--			state_next <= s0;
--				
--		end if;
--		
----		when s12=>
----			enable_contador <= '1';
----			if (tecla_nueva = '0') then -- and (conteo = "0001") then
----				state_next <= s1;
----				enable_contador <= '0';
----			else
----				state_next <= s12;
----			end if;
--			
--		when s1 =>
--		ascii_actual_aux <= ascii_actual;
--		ascii_anterior_aux <= ascii_anterior;
--		placa1 <= ascii_anterior(6 DOWNTO 0);
--		placa2 <= ascii_actual(6 DOWNTO 0);
--		ascii_code2 <= not("01100000");
--		if ( ascii_actual_aux = Placa12 or ascii_actual_aux = Placa22 
--				or  ascii_actual_aux = Placa32 or ascii_actual_aux = Placa42 )
--				then
--					state_next <= s2;
--		else 
--			state_next <= s0;		
--		end if;
--
--		when s2 =>
--		ascii_actual_aux <= ascii_actual;
--		ascii_anterior_aux <= ascii_anterior;
--		ascii_code2 <= not("00000001"); --estado siguiente en bcd
--			if (ascii_actual_aux = Placa12 or ascii_actual_aux = Placa22 ) and (sensor(0)='0')
--				then
--				aviso <= "10";
--				state_next <= s3;
--			elsif (ascii_actual_aux = Placa12 or ascii_actual_aux = Placa22 ) and (sensor(0)='1')
--				then
--				aviso <= "11";
--				state_next <= s9;
--			elsif ((ascii_actual_aux = Placa32) or (ascii_actual_aux = Placa42) ) and (sensor(3)='0')
--				then
--				aviso <= "10";
--				state_next <= s6;
--			elsif ((ascii_actual_aux = Placa32) or (ascii_actual_aux = Placa42) ) and (sensor(3)='1')
--				then
--				aviso <= "11";
--				state_next <= s9;
--			else
--				aviso <= "10";
--				state_next <= s0;
--			end if;		
--				
--		when s3 =>
--		
--				if (sensor(1)) = '1'
--				then
--				aviso <= "11";
--				state_next <= s9;
--				else
--				aviso <= "10";
--				state_next <= s4;
--				end if;		
--		when s4 =>
--				if (sensor(2)) = '1'
--				then
--				aviso <= "11";
--				state_next <= s9;
--				else
--				aviso <= "10";
--				state_next <= s5;
--				end if;		
--		when s5 =>
--				if (sensor(3)) = '1'
--				then
--				aviso <= "11";
--				state_next <= s9;
--				else
--				aviso <= "00";
--				state_next <= s0;
--				end if;		
--		when s6 =>
--				if (sensor(1)) = '1'
--				then
--				aviso <= "11";
--				state_next <= s9;
--				else
--				aviso <= "10";
--				state_next <= s7;
--				end if;		
--		when s7 =>
--				if (sensor(2)) = '1'
--				then
--				aviso <= "11";
--				state_next <= s9;
--				else
--				aviso <= "10";
--				state_next <= s8;
--				end if;		
--		when s8=>
--				if (sensor(3)) = '1'
--				then
--				aviso <= "11";
--				state_next <= s9;
--				else
--				aviso <= "00";
--				state_next <= s0;
--				end if;		
--				
--		when s9 =>
--				state_next <= s10;
----				enable_contador <= '1';
----				selector <= "11"; -- Abre servo
----				aviso <= "11";
----				if conteo = "1001" then
----					enable_contador <= '0';
----					aviso <= "10";
----					state_next <= s10;
----					selector <= "00"; -- Cierra servo
----				else
----					state_next <= s9;
----				end if;
--		when s10 =>
--				ascii_actual_aux <= "00100000";
--				ascii_anterior_aux <= "00100000";
--				state_next <= s0;
--		end case;
--end process;


--ascii_code2 <= (ascii_actual);
--anode2 <= "0000";
prueba <= tecla_nueva;
--ascii_code2 <= ascii_code;
end Behavioral;

