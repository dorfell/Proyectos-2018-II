library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity uart is
	generic(
		DBIT: integer := 8;     -- # data bits
		SB_TICK: integer := 32; -- # ticks de parada
										-- 32/48/64 para 11/1.5/2 bits
		DVSR: integer := 163;   -- divisor de ticks
										-- = clk/(32*baudrate)
		DVSR_BIT: integer := 8; -- # bits de DVSR
		FIFO_W: integer := 2    -- # bits de direccion del fifo
										-- # palabras en FIFO = 2^FIFO_W
	);
	port(
		clk, reset: in std_logic;
		rd_uart, wr_uart: in std_logic; -- Para el FIFO
		rx: in std_logic;
		w_data: in std_logic_vector(DBIT-1 downto 0);
		tx_full, rx_empty: out std_logic;
		r_data: out std_logic_vector(DBIT-1 downto 0);
		tx: out std_logic
	);
end uart;

 architecture str_Behavioral of uart is
	signal tick: std_logic;
	signal rx_done_tick: std_logic;
	signal tx_fifo_out: std_logic_vector(DBIT-1 downto 0);
	signal rx_data_out: std_logic_vector(DBIT-1 downto 0);
	signal tx_empty, tx_fifo_not_empty: std_logic;
	signal tx_done_tick: std_logic;

begin
	baud_gen_unit: entity work.mcounter(Behavioral)
		generic map(M=>DVSR, N=>DVSR_BIT)
		port map(clk=>clk, reset=>reset,
				 q=> open, max_tick=>tick);
	
	uart_rx_unit: entity work.uart_rx(Behavioral)
		generic map(DBIT=>DBIT, SB_TICK=>SB_TICK)
		port map(clk=>clk, reset=>reset, rx=>rx,
				s_tick=>tick, rx_done_tick=>rx_done_tick,
				dout=>rx_data_out);
	fifo_rx_unit: entity work.fifo(Behavioral)
		generic map(B=>DBIT, W=>FIFO_W)
		port map(clk=>clk, reset=>reset, rd=>rd_uart,
				wr=>rx_done_tick, w_data=>rx_data_out,
				empty=>rx_empty, full=>open, r_data=>r_data);
	fifo_tx_unit: entity work.fifo(Behavioral)
		generic map(B=>DBIT, W=>FIFO_W)
		port map(clk=>clk, reset=>reset, rd=>tx_done_tick,
				wr=>wr_uart, w_data=>w_data,
				empty=>tx_empty, full=>tx_full, r_data=>tx_fifo_out);
	uart_tx_unit: entity work.uart_tx(Behavioral)
		generic map(DBIT=>DBIT, SB_TICK=>SB_TICK)
		port map(clk=>clk, reset=>reset, tx_start=>tx_fifo_not_empty,
				s_tick=>tick, din=>tx_fifo_out,
				tx_done_tick=>tx_done_tick, tx=>tx);
	tx_fifo_not_empty <= not tx_empty;
end str_Behavioral;