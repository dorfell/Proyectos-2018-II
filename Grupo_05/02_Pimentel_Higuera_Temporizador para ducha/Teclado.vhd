----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:31:24 10/28/2018 
-- Design Name: 
-- Module Name:    Teclado - Behavioral 
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
 
entity top is
    port (
    ledfila, ledcol : out unsigned(3 downto 0);
    clk     : in std_logic;
    reset   : in std_logic;
	 fila    : in unsigned(3 downto 0);
	 col     : out unsigned(3 downto 0);
	 display : out std_logic_vector(3 downto 0);
	 seg7    : out std_logic_vector(6 downto 0)
   -- sel : out std_logic_vector(2 downto 0)
	 );
end top;

architecture top of top is
    type estado is (reposo, inicio, cuenta, rotacion, deteccionFilaCol, deteccionTecla, mostrar);
    signal estadoActual, estadoSiguiente : estado;
    signal scol  : unsigned(3 downto 0);
    signal scol4 : unsigned(3 downto 0);
    signal nfila : unsigned(3 downto 0);
    signal tecla : unsigned(3 downto 0);

    signal contador : unsigned(22 downto 0);
    constant U0L : unsigned(22 downto 0) := to_unsigned(0,23);

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
begin

ledfila <= fila;
ledcol <=  scol;
    display <= "1110";
	 col <= scol;
   
    -- camino de datos (datapath)
    process(clk, estadoActual,tecla,scol,fila)
      begin
       if (clk'event and clk = '1') then
         case estadoActual is
             when reposo =>
	          scol <= "0000"; 
            contador <= U0L;

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

	     when deteccionTecla =>
             tecla <= scol4  + nfila ;      
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
             when mostrar =>
                  case tecla is          --gfedcba-- 
               --       when U15 => sel <= "001" ;  -- 1 
                --      When U14 => sel <= "010" ;  -- 2 
					--		 when U13 => sel <= "011" ;  -- 3  
                --      when U11 => sel  <= "100" ;  -- 4
					--		 when U10 => sel  <= "101" ;  -- 5 
					--		 when U9  => sel  <= "110" ;  -- 6
                    --  when U7  => sel  <= 7 ;  -- 7                
                     -- when U6  => sel  <= 8 ;  -- 8
                      --when U5  => sel  <= 9 ;  -- 9
							--when U12 => sel  <= 10 ;  -- A
				--			 when U8  => sel  <= 11 ;  -- B
					--		 when U4  => sel  <= 12 ;  -- C
						--	 when U0  => sel  <= 13 ;  -- D
							-- when U3  => sel  <= 14 ;  -- E
							-- when U1  => sel  <= 15 ;  -- F
                 --     when others => sel <=  "000";                


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
           end case;
         end if;
    end process;
 
--  registro de estado
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
            estadoSiguiente <= deteccionTecla;
    when deteccionTecla =>
              estadoSiguiente <= mostrar;
        when mostrar =>
              
				  estadoSiguiente <= inicio;
     end case;
   end process;
end top;