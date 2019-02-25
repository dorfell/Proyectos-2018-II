library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
 
entity Teclado is
    port (
    clk     : in std_logic;
    reset   : in std_logic;
	 fila    : in unsigned(3 downto 0);
	 col     : out unsigned(3 downto 0);
	 bip     : out std_logic;
	 guardando : out std_logic;
	 contecla : out std_logic_vector (1 downto 0);
	 tecla1  : inout unsigned(3 downto 0);
	 tecla2  : inout unsigned(3 downto 0);
	 tecla3  : inout unsigned(3 downto 0);
	 tecla4  : inout unsigned(3 downto 0)
    );
end Teclado;

architecture Behavioral of Teclado is
    type estado is (reposo, inicio, cuenta, rotacion, deteccionFilaCol, deteccionTecla1, deteccionTecla2, deteccionTecla3, deteccionTecla4, cuenta2, mostrar);
    signal estadoActual, estadoSiguiente : estado;
    signal scol  : unsigned(3 downto 0);
    signal scol4 : unsigned(3 downto 0);
    signal nfila : unsigned(3 downto 0);
    signal tecla : unsigned(3 downto 0);

	 signal dc : unsigned(2 downto 0);
    signal contador : unsigned(22 downto 0);
	 signal contador2 : unsigned(26 downto 0);
    constant U0L : unsigned(22 downto 0) := to_unsigned(0,23);
	 constant U1L : unsigned(26 downto 0):= to_unsigned(0,27);

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
				 dc <= "000";

             when inicio =>
	          scol <= "0001";
				 bip <= '0';

             when cuenta =>
                  contador <= contador+1;

             when rotacion =>
                  scol <= scol(2 downto 0) & scol(3);
                  contador <= U0L;

				 when deteccionFilaCol =>
						guardando <= '1';
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
						bip <= '1';
                  contador2 <= contador2+1;

				when deteccionTecla1 =>		
						tecla1 <= scol4  + nfila ; 
						dc <= dc + 1 ;
						contador2 <= U1L;
						contecla <= "00";
				when deteccionTecla2 =>
						tecla2 <= scol4  + nfila ; 
						dc <= dc + 1 ;
						contador2 <= U1L;
						contecla <= "01";
				when deteccionTecla3 =>
						tecla3 <= scol4  + nfila ; 
						dc <= dc + 1 ;
						contador2 <= U1L;
						contecla <= "10";
				when deteccionTecla4 =>
						tecla4 <= scol4  + nfila ; 
						dc <= dc + 1 ;
						contador2 <= U1L;
						contecla <= "11";
				when mostrar =>
						guardando <= '0';
						dc <= "000" ;

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
        when reposo => 
				estadoSiguiente <= inicio;		  
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
				if (dc = "000") then
              estadoSiguiente <= deteccionTecla1;
				elsif (dc = "001") then 
				  estadoSiguiente <= deteccionTecla2;
				elsif (dc = "010") then 
				  estadoSiguiente <= deteccionTecla3;
				elsif (dc = "011") then 
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
           if contador2 = x"2160EC0" then --350ms
						if (dc = "100") then
							estadoSiguiente <= mostrar;
						else 
							estadoSiguiente <= inicio;
					   end if;
           else
					estadoSiguiente <= cuenta2;
           end if;
		  when mostrar =>
			  estadoSiguiente <= inicio;
     end case;
   end process;
	
end Behavioral;