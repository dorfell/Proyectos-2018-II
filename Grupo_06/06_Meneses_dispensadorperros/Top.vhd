----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:38:34 01/17/2019 
-- Design Name: 
-- Module Name:    Top - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Top is
	port (
    ledfila, ledcol : out unsigned(3 downto 0);
        clk     : in std_logic;
        reset   : in std_logic;
        fila    : in unsigned(3 downto 0);
        col     : out unsigned(2 downto 0);
        display : out std_logic_vector(7 downto 0);
        seg7    : out std_logic_vector(6 downto 0)
    );
 
end Top;

architecture Behavioral of Top is

	 type estado is (reposo, inicio, cuenta, rotacion, deteccionFilaCol, deteccionTecla, mostrar);
		signal estadoActual, estadoSiguiente : estado;
		signal scol            : unsigned(2 downto 0);
		signal scol4 : unsigned(3 downto 0);
		signal nfila : unsigned(3 downto 0);
		signal tecla : unsigned(3 downto 0);
		signal multi : unsigned(7 downto 0);
		signal contador : unsigned(21 downto 0);
		
			constant U0L : unsigned(21 downto 0) := to_unsigned(0,22)
			constant U0 : unsigned(3 downto 0) := to_unsigned(0,4);
			constant U11: unsigned (3 downto 0) := to_unsigned (11,4);
			constant U1 : unsigned(3 downto 0) := to_unsigned(1,4);
			constant U2 : unsigned(3 downto 0) := to_unsigned(2,4);
			constant U3 : unsigned(3 downto 0) := to_unsigned(3,4);
			constant U4 : unsigned(3 downto 0) := to_unsigned(4,4);
			constant U5 : unsigned(3 downto 0) := to_unsigned(5,4);
			constant U6 : unsigned(3 downto 0) := to_unsigned(6,4);
			constant U7 : unsigned(3 downto 0) := to_unsigned(7,4);
			constant U8 : unsigned(3 downto 0) := to_unsigned(8,4);
			constant U9 : unsigned(3 downto 0) := to_unsigned(9,4);
			constant U12: unsigned(3 downto 0) := to_unsigned (12,4);
			constant U10: unsigned (3 downto 0) := to_unsigned (10,4);
	
	begin
		ledfila <= fila;
		ledcol <= '1' & scol;
		display <= "11110110";
		col <= scol;
		multi <= U3*nfila;
	 
    -- camino de datos (datapath)
    process(clk, estadoActual,tecla,scol,fila)
      begin
       if (clk'event and clk = '1') then
         case estadoActual is
             when reposo =>
                      scol <= "111"
	contador <= U0L;
             when inicio =>
                      scol <= "011";
             when cuenta =>
                  contador <= contador+1;
             when rotacion =>
                  scol <= scol(1 downto 0) & scol(2);
                  contador <= U0L;
                 when deteccionFilaCol =>
                  case fila is        
                      when "0111" => nfila <= U0;
                                      when "1011" => nfila <= U1;
                      when "1101" => nfila <= U2;
                      when "1110" => nfila <= U3;
                     when others => nfila <= U10;
                  end case;
                  case scol is        
                      when "011" => scol4 <= U0;
                              when "101" => scol4 <= U1;
                      when "110" => scol4 <= U2;
                      when others => scol4 <= U0;
                  end case;

                 when deteccionTecla =>
                  if fila(3)='0' then
                     tecla <= U0;
                  else
                     tecla <= scol4 + U1 + multi(3 downto 0);
                  end if;
             when mostrar =>
                  case tecla is        
                      when U11 => seg7 <= "1111001";  -- 1 working
                      when U8 => seg7 <= "0011001";  -- 4 working
                      when U5 => seg7 <= "0111000";  -- 7 working
                      when U12 => seg7 <= "0110000";  -- 3
                      when U7 => seg7 <= "0010010";  -- 5 working
                      when U4 => seg7 <= "0000000";  -- 8 working
                      When U10 => seg7 <= "0100100";  -- 2 working
                      --When U3 => seg7 <= "1110000"; -- no se
                      when U9 => seg7 <= "0000010";  -- 6 working
                      when U6 => seg7 <= "0011000";  -- 9 working
                      when others => seg7 <= "1000000";  -- *, #
                  end case;
           end case;
         end if;
    end process;
	 
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
           if contador = "1111111111111111111111" then
               estadoSiguiente <= rotacion;
           else
           estadoSiguiente <= cuenta;
           end if;
        when rotacion =>
           if (fila = "1111") then
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
	
end Behavioral;

