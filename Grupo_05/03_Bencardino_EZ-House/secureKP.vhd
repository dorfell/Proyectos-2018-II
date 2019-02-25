----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 16.02.2019 10:28:15
-- Design Name: 
-- Module Name: secureKP - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity secureKP is    
    generic (
       N_n: integer := 27;   
	   M_n: integer := 100000000; 
	   N_a: integer := 30;   
	   M_a: integer := 1000000000  
    );
    Port (
	   clk, reset : in  STD_LOGIC;
       Row : in  STD_LOGIC_VECTOR (3 downto 0);
       ask : in STD_LOGIC;
	   Col : out  STD_LOGIC_VECTOR (3 downto 0);
       DecodeOut : out  STD_LOGIC_VECTOR (7 downto 0);
       led : out std_logic_vector (5 downto 2);
       enable, negado : out std_logic
    );
end secureKP;

architecture Behavioral of secureKP is
    type clave is (inicio, segundo, tercero, cuarto, aceptar, 
                    error, aceptado, cambiar,
                     c1, c2, c3, c4, abierto);
    signal estado_r, estado_n : clave;
    signal pin, pin_reg, pin_n, pin_n_reg : std_logic_vector (15 downto 0);
    signal Deco, Deco_p : std_logic_vector (7 downto 0); 
    signal reset_a,reset_n, t_n, t_a : std_logic;
begin

--    deb0: entity work.debounce(Behavioral)
--        port map(clk => clk, reset => reset, sw => Decod(0),
--                  db_level => open, db_tick => Deco(0));
                  
--    deb1: entity work.debounce(Behavioral)
--        port map(clk => clk, reset => reset, sw => Decod(1),
--                  db_level => open, db_tick => Deco(1));

--    deb2: entity work.debounce(Behavioral)
--        port map(clk => clk, reset => reset, sw => Decod(2),
--                  db_level => open, db_tick => Deco(2));
                  
--    deb3: entity work.debounce(Behavioral)
--        port map(clk => clk, reset => reset, sw => Decod(3),
--                  db_level => open, db_tick => Deco(3));
                  
--    deb4: entity work.debounce(Behavioral)
--        port map(clk => clk, reset => reset, sw => Decod(4),
--                  db_level => open, db_tick => Deco(4));
    
--    deb5: entity work.debounce(Behavioral)
--        port map(clk => clk, reset => reset, sw => Decod(5),
--                  db_level => open, db_tick => Deco(5));
    
--    deb6: entity work.debounce(Behavioral)
--        port map(clk => clk, reset => reset, sw => Decod(6),
--                  db_level => open, db_tick => Deco(6));
    
--    deb7: entity work.debounce(Behavioral)
--        port map(clk => clk, reset => reset, sw => Decod(7),
--                  db_level => open, db_tick => Deco(7));
    
    kpad: entity work.KeyPad(Behavioral)
        port map(clk => clk, reset => reset, Row => Row,
                  Col => Col, DecodeOut => Deco);
                  
    negar: entity work.mcounter(Behavioral)
		generic map(M=>M_n, N=>N_n)
		port map(clk=>clk, reset=>reset_n,
				 q=> open, max_tick=>t_n);
    
    acceptc: entity work.mcounter(Behavioral)
		generic map(M=>M_a, N=>N_a)
		port map(clk=>clk, reset=>reset_a,
				 q=> open, max_tick=>t_a);
				 
    PROCESS(clk,reset)
	BEGIN
		IF reset = '1' THEN
		  pin_reg <= X"1234";
		  pin_n_reg <= X"1234";
		  estado_r <= inicio;
		  Deco_p <= (others => '1');
		ELSIF (clk'event AND clk = '1') THEN
		  estado_r <= estado_n;
		  Deco_p <= Deco;
		  pin_reg <= pin;
		  pin_n_reg <= pin_n;
		END IF;
	END PROCESS;
    
    process(estado_r, estado_n, Deco, t_n, pin_reg, pin_n_reg, Deco_p ,pin, pin_n, t_a, ask)
    begin
        estado_n <= estado_r;
        pin <= pin_reg;
        pin_n <= pin_n_reg;
        case estado_r is
            when inicio =>
                led <= X"1";
                reset_n <= '0';
                enable <= '0';
                negado <= '0';
                reset_a <= '0';
                if ask = '0' then
                    estado_n <= abierto;
                elsif (Deco /= Deco_p) then                        
                    pin_n(15 downto 12) <= Deco(3 downto 0);
                    if Deco = X"45" then
                        estado_n <= error;
                    else
                        estado_n <= segundo;
                    end if;
                end if;
            when segundo =>
                led <= X"2";
                reset_n <= '0';
                enable <= '0';
                negado <= '0';
                reset_a <= '0';
                if (Deco /= Deco_p) then
                    pin_n(11 downto 8) <= Deco(3 downto 0);
                    if Deco = X"45" then
                        estado_n <= error;
                    else
                        estado_n <= tercero;
                    end if;
                end if;
            when tercero =>
                led <= X"3"; 
                reset_n <= '0';
                enable <= '0';
                negado <= '0';
                reset_a <= '0';
                if (Deco /= Deco_p) then
                    pin_n(7 downto 4) <= Deco(3 downto 0);
                    if Deco = X"45" then
                        estado_n <= error;
                    else
                        estado_n <= cuarto;
                    end if;
                end if;
            when cuarto =>
                led <= X"4"; 
                reset_n <= '0';
                enable <= '0';
                negado <= '0';
                reset_a <= '0';
                if (Deco /= Deco_p) then
                    pin_n(3 downto 0) <= Deco(3 downto 0);
                    if Deco = X"45" then
                        estado_n <= error;
                    else
                        estado_n <= aceptar;
                    end if;
                end if;
            when aceptar =>
                led <= X"5";
                reset_n <= '0';
                enable <= '0';
                negado <= '0';
                reset_a <= '0';
                if (Deco /= Deco_p and Deco = X"45") then
                    if pin = pin_n then
                        estado_n <= aceptado;
                        enable <= '1';
                        reset_a <= '1';
                    else
                        reset_n <= '1';
                        estado_n <= error;
                    end if;
                end if;
            when error =>
                led <= X"6";
                reset_n <= '0';
                enable <= '0';
                negado <= '1';
                reset_a <= '0';
                if t_n = '1' then                
                    estado_n <= inicio;
                end if;
            when aceptado =>
                led <= X"7";
                reset_n <= '0';
                enable <= '1';
                negado <= '0';
                reset_a <= '0';
                if t_a = '1' then
                    estado_n <= inicio;
                elsif (Deco /= Deco_p and Deco = X"43") then
                    estado_n <= c1;
                end if;
            when c1 =>
                led <= X"8";
                reset_n <= '0';
                enable <= '1';
                negado <= '0';
                reset_a <= '0';
                if (Deco /= Deco_p) then
                    if Deco = X"45" then
                        estado_n <= error;
                    else
                        pin_n(15 downto 12) <= Deco(3 downto 0);
                        estado_n <= c2;
                    end if;
                end if;
            when c2 =>
                led <= X"9";
                reset_n <= '0';
                enable <= '1';
                negado <= '0';
                reset_a <= '0';
                if (Deco /= Deco_p) then
                    if Deco = X"45" then
                        estado_n <= error;
                    else
                        pin_n(11 downto 8) <= Deco(3 downto 0);
                        estado_n <= c3;
                    end if;
                end if;
            when c3 =>
                led <= X"A";
                reset_n <= '0';
                enable <= '1';
                negado <= '0';
                reset_a <= '0';
                if (Deco /= Deco_p) then
                    if Deco = X"45" then
                        estado_n <= error;
                    else
                        pin_n(7 downto 4) <= Deco(3 downto 0);
                        estado_n <= c4;
                    end if;
                end if;
            when c4 =>
                led <= X"B";
                reset_n <= '0';
                enable <= '1';
                negado <= '0';
                reset_a <= '0';
                if (Deco /= Deco_p) then
                    if Deco = X"45" then
                        estado_n <= error;
                    else
                        pin_n(3 downto 0) <= Deco(3 downto 0);
                        estado_n <= cambiar;
                    end if;
                end if;
            when cambiar =>
                led <= X"C";
                reset_n <= '0';
                enable <= '1';
                negado <= '0';
                reset_a <= '0';
                if (Deco /= Deco_p) then
                    if Deco = X"45" then
                        estado_n <= error;
                    elsif Deco = X"43" then
                        pin <= pin_n;
                        estado_n <= inicio;
                    end if;
                end if;
            when abierto =>
                led <= X"D";
                reset_n <= '0';
                enable <= '1';
                negado <= '0';
                reset_a <= '0';
                if ask = '1' then
                    estado_n <= inicio;
                end if;
        end case;
    end process;
    
    DecodeOut <= Deco;
    
end Behavioral;
