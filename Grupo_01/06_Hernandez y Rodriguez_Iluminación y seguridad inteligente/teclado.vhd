----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:05:41 02/19/2019 
-- Design Name: 
-- Module Name:    teclado - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity teclado is

port (

    clk     : in std_logic;
    reset   : in std_logic;
	 fila    : in unsigned(3 downto 0);
	 col     : out unsigned(3 downto 0);
	 veri    : out std_logic;
	 veri2    : out std_logic;
	 display : inout std_logic_vector(3 downto 0);
	 seg7    : out std_logic_vector(6 downto 0)
    );
	 
end teclado;

architecture Behavioral of teclado is

 type estado is (reposo, inicio, cuenta, rotacion, deteccionFilaCol, deteccionTecla1, deteccionTecla2, deteccionTecla3, deteccionTecla4, cuenta2);--, mostrar);
    signal estadoActual, estadoSiguiente : estado;
    signal scol  : unsigned(3 downto 0);
    signal scol4 : unsigned(3 downto 0);
    signal nfila : unsigned(3 downto 0);
    signal tecla : unsigned(3 downto 0);
	 signal tecla1 : unsigned(3 downto 0);
	 signal tecla2 : unsigned(3 downto 0);
	 signal tecla3 : unsigned(3 downto 0);
	 signal tecla4 : unsigned(3 downto 0);

	 signal dc : unsigned(1 downto 0);
    signal contador : unsigned(22 downto 0);
	 signal contador2 : unsigned(26 downto 0);
    constant U0L : unsigned(22 downto 0) := to_unsigned(0,23);
	 constant U1L : unsigned(26 downto 0):= (others => '0');

    constant U0 : unsigned(3 downto 0) := to_unsigned(0,4); 
    constant U1 : unsigned(3 downto 0) := to_unsigned(1,4);
    constant U2 : unsigned(3 downto 0) := to_unsigned(2,4);
    constant U3 : unsigned(3 downto 0) := to_unsigned(3,4);
    constant U4 : unsigned(3 downto 0) := to_unsigned(4,4);
    constant U5 : unsigned(3 downto 0) := to_unsigned(5,4);
    constant U6 : unsigned(3 downto 0) := to_unsigned(6,4);
    constant U7 : unsigned(3 downto 0) := to_unsigned(7,4);
    constant U8 : unsigned(3 downto 0) := to_unsigned(8,4);
    constant U9 : unsigned(3 downto 0) := to_unsigned(9,4);
	 constant U10: unsigned(3 downto 0) := to_unsigned(10,4);
	 constant U11: unsigned(3 downto 0) := to_unsigned(11,4);
    constant U12: unsigned(3 downto 0) := to_unsigned(12,4);
	 constant U13: unsigned(3 downto 0) := to_unsigned(13,4);
	 constant U14: unsigned(3 downto 0) := to_unsigned(14,4);
	 constant U15: unsigned(3 downto 0) := to_unsigned(15,4);
	 
    signal refresh_count: INTEGER range 0 to 100000;
    signal refresh_state: STD_LOGIC_VECTOR(1 downto 0) := (others => '0');
	 
begin

col <= scol;
   
    -- camino de datos (datapath)
    process(clk, estadoActual,tecla,scol,fila)
      begin
       if (clk'event and clk = '1') then
         case estadoActual is
             when reposo =>
	          scol <= "0000"; 
             contador <= U0L;
				 contador2 <= U1L;
				 tecla1 <= U2;
				 tecla2 <= U2;
				 tecla3 <= U2;
				 tecla4 <= U2;
				 dc <= "00";

             when inicio =>
	          scol <= "0001";

             when cuenta =>
                  contador <= contador+1;

             when rotacion =>
                  scol <= scol(2 downto 0) & scol(3);
                  contador <= U0L;

				 when deteccionFilaCol =>
                  case fila is         
                      when "0001" => nfila <= U12;
		                when "0010" => nfila <= U8;
                      when "0100" => nfila <= U4;
                      when "1000" => nfila <= U0;
                     when others => nfila <= U15;
                  end case;
                  case scol is         
                      when "0001" => scol4 <= U0;
		                when "0010" => scol4 <= U3;
                      when "0100" => scol4 <= U2;
							 when "1000" => scol4 <= U1;
                      when others => scol4 <= U15;
                  end case;
				when cuenta2 =>
                  contador2 <= contador2+1;

				when deteccionTecla1 =>		
						tecla1 <= scol4  + nfila ; 
						dc <= dc + 1 ;
				when deteccionTecla2 =>
						tecla2 <= scol4  + nfila ; 
						dc <= dc + 1 ;
				when deteccionTecla3 =>
						tecla3 <= scol4  + nfila ; 
						dc <= dc + 1 ;
				when deteccionTecla4 =>
						tecla4 <= scol4  + nfila ; 
						dc <= "00";
           end case;
         end if;
    end process;
 
 -- registro de estado
    process(clk, reset)
    begin	
        if (reset = '1') then
            estadoActual <= reposo;
        elsif (clk'event and clk = '1') then
            estadoActual <= estadoSiguiente;
        end if;
    end process;

    process (estadoActual,fila,contador) is
    begin
      case estadoActual is       
        when reposo => estadoSiguiente <= inicio;
        when inicio => estadoSiguiente <= cuenta;
        when cuenta =>
           if contador = x"2FAF08" then --Octavo de segundo para hacer el ciclo completo 
               estadoSiguiente <= rotacion;
           else
           estadoSiguiente <= cuenta;
           end if;
        when rotacion =>
           if (fila = "0000") then
              estadoSiguiente <= cuenta;
           else
              estadoSiguiente <= deteccionFilaCol;
           end if;
        when deteccionFilaCol =>
				if (dc = "00") then
              estadoSiguiente <= deteccionTecla1;
				elsif (dc = "01") then 
				  estadoSiguiente <= deteccionTecla2;
				elsif (dc = "10") then 
				  estadoSiguiente <= deteccionTecla3;
				else 
				  estadoSiguiente <= deteccionTecla4;
				end if;
		  when deteccionTecla1 =>
				  estadoSiguiente <= cuenta2;
		  when deteccionTecla2 =>
				  estadoSiguiente <= cuenta2;
		  when deteccionTecla3 =>
				  estadoSiguiente <= cuenta2;
		  when deteccionTecla4 =>
				  estadoSiguiente <= cuenta2;
		  when cuenta2 =>
           if contador2 = x"5F5E100" then --Un segundo 
               estadoSiguiente <= inicio;
           else
					estadoSiguiente <= cuenta2;
           end if;
				
   --     when deteccionTecla =>
   --           estadoSiguiente <= mostrar;
   --     when mostrar =>
   --           estadoSiguiente <= inicio;
     end case;
   end process;
	
process(clk)
    begin
		 if clk'event and clk='1' then
	    -- contador 500Hz (para refresco del display)
			if refresh_count < 100000 then
					refresh_count <= refresh_count + 1;
			else
					refresh_state <= refresh_state + 1;
					refresh_count <= 0; 
         end if; 
        end if; 
end process; 
	
process(refresh_state) 
        begin -- selección del display 
            case refresh_state is 
                when "00" => 
                    display <= "1110"; -- display 0 
                when "01" => 
                    display <= "1101"; -- display 1
                when "10" => 
                    display <= "1011"; -- display 2 
                when "11" => 
                    display <= "0111"; -- display 3 
                when others => 
                    display <= "1111"; 
            end case; 


-- mostrar digitos 
            case display is 
                when "1110" => 
							tecla <= tecla4;  
                when "1101" => 
							tecla <= tecla3;  
                when "1011" => 
							tecla <= tecla2; 	 
                when "0111" => 
							tecla <= tecla1; 
                when others =>
							tecla <= "0010"; 
	    end case;
		 

-- Codificación para las teclas
--f\C |(03)|(02)|(01)|(00)|
---------------------------
--(12)| 15 | 14 |	13	| 12 |
---------------------------
--(08)| 11 | 10 |	09	| 08 |
---------------------------
--(04)| 07 | 06 |	05 | 04 |
---------------------------
--(00)| 03 | 02 |	01	| 00 |
---------------------------
            
				case tecla is          --gfedcba-- 
                      when U15 => seg7 <= "1111001";  -- 1 
                      When U14 => seg7 <= "0100100";  -- 2 
							 when U13 => seg7 <= "0110000";  -- 3  
                      when U11 => seg7 <= "0011001";  -- 4
							 when U10 => seg7 <= "0010010";  -- 5 
							 when U9  => seg7 <= "0000010";  -- 6
                      when U7  => seg7 <= "1111000";  -- 7                
                      when U6  => seg7 <= "0000000";  -- 8
                      when U5  => seg7 <= "0011000";  -- 9
							 when U12 => seg7 <= "0001000";  -- A
							 when U8  => seg7 <= "0000011";  -- B
							 when U4  => seg7 <= "1000110";  -- C
							 when U0  => seg7 <= "0100001";  -- D
							 when U3  => seg7 <= "0000110";  -- E
							 when U1  => seg7 <= "0001110";  -- F
                      when others => seg7 <= "1000000";  
             end case;	
end process;	
	
--	
--	"1000000" 0
--
--"1111001" 1
--"0100100" 2
--"0110000" 3
--"0011001" 4
--"0010010" 5
--"0000010" 6
--"1111000" 7
--"0000000" 8
--"0010000" 9
--"0001000" A
--"0000011" B
--"1000110" C
--"0100001" D
--"0000110" E
--"0001110" F
--"1000000" when others;



process 
	begin
		if((tecla1=U15)and(tecla2=U14)and(tecla3=U13)and(tecla4=U11))then
		veri<='1';
		veri2<='1';
		else
		veri<='0';
		veri2<='0';
		end if;
end process;

end Behavioral;

