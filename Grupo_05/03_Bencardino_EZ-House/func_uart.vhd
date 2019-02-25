----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:34:17 10/02/2018 
-- Design Name: 
-- Module Name:    func_uart - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity func_uart is
	generic(
		DBIT: integer := 8;     -- # data bits
		SB_TICK: integer := 32; -- # ticks de parada
										-- 32/48/64 para 11/1.5/2 bits
		DVSR: integer := 326;   -- divisor de ticks
										-- = clk/(32*baudrate)
		DVSR_BIT: integer := 9; -- # bits de DVSR
		FIFO_W: integer := 3;    -- # bits de direccion del fifo
										-- # palabras en FIFO = 2^FIFO_W
        N_b: integer := 30;   
	    M_b: integer := 1000000000  
	);
	port(
		clk, reset: in std_logic;
--		btn: in std_logic_vector(1 downto 0); -- Para los FIFO, enviar y recibir
--		btnC: in std_logic;
		rx: in std_logic;
		--sw: in std_logic_vector(DBIT-1 downto 0);
		JXADC : inout STD_LOGIC_VECTOR (7 downto 0);
		JB:	out std_logic_vector(7 downto 0);
		JC:	out std_logic_vector (6 downto 4);
		tx_full, rx_empty: out std_logic;
		seg: out std_logic_vector(0 to 6);
		an: out std_logic_vector(3 downto 0);
		tx: out std_logic;
		servo_control: out std_logic;
		led1_control, led2_control : out std_logic
	);
end func_uart;

architecture Behavioral of func_uart is
    type state is (cerrado, abierto, bloquear);
    signal state_r, state_n : state;
    signal count_r, count_n : integer := 0;
	signal rx_is_empty, rx_not_empty: std_logic;
	signal wr_uart, rd_uart: std_logic;
	signal r_data, w_data, Decoi: std_logic_vector(DBIT-1 downto 0);
	signal flushM, flushL1, flushL2, flushuart : std_logic;
	signal enableM, enableL1, enableL2 : std_logic;
	signal locked : std_logic;
	signal negado : std_logic;
	signal enablekp : std_logic;
	signal reset_b, t_b : std_logic;
	signal palabras, palabrasM, palabrasL1, palabrasL2 : std_logic_vector(31 downto 0);
begin

--	vaciar: entity work.counter(Behavioral)
--		port map(clk=>clk, reset=>reset, clear=>rx_not_empty,
--				 q=> open, tick=>rd_uart);
				 
--	debouncer_wr: entity work.debounce(Behavioral)
--		port map(clk=>clk, reset=>reset, sw=>btn(0),
--					db_level=> open, db_tick=>wr_uart);
					
--	debouncer_rd: entity work.debounce(Behavioral)
--		port map(clk=>clk, reset=>reset, sw=>btn(1),
--					db_level=> open, db_tick=>rd_uart);
	
--	debouncer_rd: entity work.debounce(Behavioral)
--		port map(clk=>clk, reset=>reset, sw=>btnC,
--					db_level=> open, db_tick=>wr_uart);
					
	uart_c: entity work.uart(str_Behavioral)
		generic map(DBIT=>DBIT, SB_TICK=>SB_TICK, 
						DVSR=>DVSR, DVSR_BIT=>DVSR_BIT,
						FIFO_W=>FIFO_W)
		port map(clk=>clk, reset=>reset, rd_uart=>rd_uart,
					wr_uart=>wr_uart, rx=>rx,w_data=>w_data,
					r_data=>r_data, rx_empty=>rx_is_empty,
					tx_full=>tx_full, tx=>tx);
					
	ascii_disp: entity work.decodisp(Behavioral)
		port map(show=>rx_not_empty, sw=>Decoi, 
					an=>an, seg=>seg);
					
	servo_pwm: entity work.Servo(Behavioral)
		port map(clk=>clk, reset=>reset, selector=>r_data,
					enable => enableM, PWM=>servo_control, flush => flushM,
					palabra => palabrasM);
					
    led1: entity work.LEDdriver(Behavioral)
        port map(clk => clk, reset => reset, enable => enableL1,
                    pass => r_data, power => led1_control,
                    flush => flushL1, palabra => palabrasL1);
	
	led2: entity work.LEDdriver(Behavioral)
	   generic map (key => X"43")
        port map(clk => clk, reset => reset, enable => enableL2,
                    pass => r_data, power => led2_control,
                    flush => flushL2, palabra => palabrasL2);
                    
    sender: entity work.SendWord(Behavioral)
        port map(clk => clk, reset => reset, send => rd_uart, p => palabras,
                    sends => wr_uart, data => w_data);
                    
    kp: entity work.secureKP(Behavioral)
        port map(clk => clk, reset => reset, Row =>JXADC(7 downto 4),
                    Col=>JXADC(3 downto 0), ask => locked, DecodeOut => Decoi,
                    led => open, negado => negado, enable => enablekp);
                    
    bloquaerc: entity work.mcounter(Behavioral)
		generic map(M=>M_b, N=>N_b)
		port map(clk=>clk, reset=>reset_b,
				 q=> open, max_tick=>t_b);
				 
    lcd: entity work.LCDdriver(Behavioral)
        port map(clk => clk, btnr => reset, JB => JB, JC => JC);
                    
    
	PROCESS(clk,reset)
	BEGIN
		IF reset = '1' THEN
			state_r <= cerrado;
			count_r <= 0;
		ELSIF (clk'event AND clk = '1') THEN
			state_r <= state_n;
			count_r <= count_n;
		END IF;		
	END PROCESS;
	
	process(state_n, state_r, count_r, enablekp, count_n, negado, r_data, t_b)
    begin
        state_n <= state_r;
        count_n <= count_r;
        case state_r is
            when cerrado =>
                locked <= '1';
                enableM <= '0';
                enableL1 <= '0';
                enableL2 <= '0';
                reset_b <= '0';
                flushuart <= '0';
                if enableKP = '1' then
                    state_n <= abierto;
                elsif count_n = 3 then
                    state_n <= bloquear;
                    reset_b <= '1';
                    count_n <= 0;
                elsif negado = '1' then
                    count_n <= count_r + 1;
                end if;
            when abierto => 
                locked <= '0';
                enableM <= '1';
                enableL1 <= '1';
                enableL2 <= '1';
                reset_b <= '0';
                flushuart <= '0';
                if r_data = X"44" then
                    state_n <= cerrado;
                    flushuart <= '1';
                end if;
            when bloquear =>
                locked <= '1';
                enableM <= '0';
                enableL1 <= '0';
                enableL2 <= '0';
                reset_b <= '0';
                flushuart <= '0';
                if t_b = '1' then
                    state_n <= cerrado;
                end if;
        end case;
    end process;
	
	process(palabras, palabrasM, palabrasL1, palabrasL2)
	begin
	   if palabrasM /= "00000000000000000000000000000000" then
	       palabras <= palabrasM;
        elsif palabrasL1 /= "00000000000000000000000000000000" then
            palabras <= palabrasL1;
        elsif palabrasL2 /= "00000000000000000000000000000000" then
            palabras <= palabrasL2;
        else
            palabras <= (others => '0');
        end if;
	end process;
	rx_not_empty <= not rx_is_empty;
	rx_empty <= rx_is_empty;
	rd_uart <= flushM or flushL1 or flushL2 or flushuart;
	
--	uart_c: entity work.uart(str_Behavioral)
--		generic map(DBIT=>DBIT, SB_TICK=>SB_TICK, 
--						DVSR=>DVSR, DVSR_BIT=>DVSR_BIT,
--						FIFO_W=>FIFO_W)
--		port map(clk=>clk, reset=>reset, rd_uart=>btn(1),
--					wr_uart=>btn(0), rx=>rx,w_data=>sw,
--					r_data=>r_data, rx_empty=>rx_is_empty,
--					tx_full=>tx_full, tx=>tx);
--					
--	ascii_disp: entity work.decodisp(Behavioral)
--		port map(show=>rx_not_empty, sw=>r_data, 
--					an=>an, seg=>seg);
--					
--	rx_not_empty <= not rx_is_empty;
--	rx_empty <= rx_is_empty;
end Behavioral;

