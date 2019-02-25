----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:58:30 02/12/2019 
-- Design Name: 
-- Module Name:    UART_tx_module - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity UART_tx_module is

port( clk, rst, txEn 			:	in std_logic;
		ticks							:	in std_logic;
		nbits							:	in std_logic_vector(3 downto 0);
		txData						:	in std_logic_vector(7 downto 0);
		tx								:	out std_logic;
		txDone						:	inout std_logic:= '0');

end UART_tx_module;

architecture Behavioral of UART_tx_module is

type states is (s0_IDLE,s1_WRITE); --We have 2 states for the State Machine state 0 and 1 (WRITE adn IDLE)

signal present_state, next_state: states; --Create some registers for the states

signal bit_send : std_logic_vector(2 downto 0):=(others =>'0'); --Variable used for the bit by bit write loop 
																					  --(in this case 8 bits so 8 loops)
signal counter : std_logic_vector(3 downto 0):=(others =>'0'); --Counter variable used to count the tick pulses up to 16
signal in_data : std_logic_vector(7 downto 0):=(others =>'0'); --Register where we store tha data 
																					--that arrived with the TxData input and has to be sent
signal r_edge : std_logic_vector(1 downto 0); --Variable used to avoid debounce of the write enable pin																					
signal d_edge : std_logic; --Wire used to connect the D_edge

signal write_enable : std_logic:= '0'; --Variable used to activate or deactivate the transmission process
signal start_bit : std_logic:= '1'; --Variable used to notify if the START bit was made or not yet
signal stop_bit : std_logic:= '0'; --Variable used to notify if the STOP bit was made or not yet

begin

--===================
-- Present State
--===================

process(clk, rst) begin
if(clk'event and clk = '1') then
  if rst = '1' then
    present_state <= s0_IDLE;
  elsif rst = '0' then
	 present_state <= next_state;
  end if;
end if;
end process;

--===================
-- Next state logic
--===================

process(present_state, d_edge, txData, txDone)
  begin
  case present_state is
   when s0_IDLE =>						--If we are into IDLE and D_edge gets activated, we start the WRITE process
	   if (d_edge = '1') then
		   next_state <= s1_WRITE;
	   elsif(d_edge = '0') then
		   next_state <= s0_IDLE;
	   end if;
    when s1_WRITE	=>						--If we are into WRITE and TxDone gets high, we get back to IDLE and wait
	   if (txDone = '1') then
		   next_state <= s0_IDLE;
	   elsif(txDone = '0') then
		   next_state <= s1_WRITE;
	   end if;
   end case;
end process;

--===================
--Output logic
--===================

process(present_state)
  begin
  case present_state is
    when s0_IDLE =>
	   write_enable <= '0';			--If we are in the IDLE state, we disable the write process
    when s1_WRITE =>
	   write_enable <= '1';			--If we are in the WRITE state, we enable the write process
  end case;
end process;

--===================
--Write the data out on Tx pin
--===================

--Finally, each time we detect a Tick pulse, if the write_enable is enabeled,
--we start counting ticks. First we set the Tx pin to LOW and that indicates a start bit.
--Then each 16 ticks, we set the Tx output to a value acording to the "in_data" value which
--is the data to be sent. We do that by shifting the "in_data" using this lines: 
--	in_data <= {1'b0,in_data[7:1]};
--	Tx <= in_data[0];

process(ticks, write_enable, counter, start_bit, stop_bit, txdata, in_data, bit_send, r_edge, nbits) begin

if(ticks'event and ticks = '1') then

		if(write_enable = '0') then		--if write_enable is not activated, then we reset all variables for next loop
			txDone <= '0';
			start_bit <= '1';
			stop_bit <= '0';
		elsif(write_enable = '1') then		--if write_enable is activated, then we start counting and changing the Tx output
			
			counter <= counter+1;			--Increase the counter by one each positive edge of the Tick input
			
			if((start_bit = '1') and (stop_bit = '0'))	then  --We set the Tx to LOW (start bit) and pass 
																				--the TxData input to the in:data register
				tx <= '0';											--Create start bit  (low pulse)
				in_data <= txData;								--Pass the data to be sent to the in_data register so we could use it
			end if;	
			
			if((counter = "1111") and (start_bit = '1')) then	--If counter reaches 16 (4'b1111), then 
																				--we create the first bit and set "start_bit" to low
				start_bit <= '0';
				in_data <= '0' & in_data(7 downto 1);
				tx <= in_data(0);
			end if;
			
			if((counter = "1111") and (start_bit = '0') and (bit_send < nbits-1)) then --If we reach 16 once again, 
																									--we make a loop for the next 7 bits (nbits-1)
				in_data <= '0' & in_data(7 downto 1);
				bit_send <= bit_send + 1;
				tx <= in_data(0);
				start_bit <= '0';
				counter <= "0000";
			end if;
			
			if((counter = "1111") and (bit_send = nbits-1) and (stop_bit = '0')) then	--We finish, so we set Tx to HIGH 
																												--stop bit--
				tx <= '1';
				counter <= "0000";
				stop_bit <= '1';
			end if;
			
			if((counter = "1111") and (bit_send = nbits-1) and (stop_bit = '1')) then	--If stop bit was enabeled, 
																					--then we reset the values and wait for next write process
				bit_send <= "000";
				txDone <= '1';
				counter <= "0000";
				start_bit <= '1'; --nbits-1
			end if;
		end if;
end if;
end process;

--===================
--Input enable detect
--===================
--Here we detect if there was a reset or if the TxEn was activated.
--If "TxEn" was actiavted than we start the write process and we will send
--the data that is on the "TxData" input so make sure that in the 
--moment you activate "TxEn" the "TxData" has the values you want to send .

process(clk, rst, r_edge, txEn) begin
if (clk'event and clk = '1') then
	if(rst = '1') then
		r_edge <= "00";
	elsif (rst = '0') then
		r_edge <= r_edge(0) & txEn;
	end if;
end if;
end process;

d_edge <= not(r_edge(1)) and r_edge(0);

end Behavioral;
