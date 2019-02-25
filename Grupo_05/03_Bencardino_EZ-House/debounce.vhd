--------------------------------------------------------------------------------
--
--   FileName:         debounce.vhd
--   Dependencies:     none
--   Design Software:  Quartus II 32-bit Version 11.1 Build 173 SJ Full Version
--
--   HDL CODE IS PROVIDED "AS IS."  DIGI-KEY EXPRESSLY DISCLAIMS ANY
--   WARRANTY OF ANY KIND, WHETHER EXPRESS OR IMPLIED, INCLUDING BUT NOT
--   LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY, FITNESS FOR A
--   PARTICULAR PURPOSE, OR NON-INFRINGEMENT. IN NO EVENT SHALL DIGI-KEY
--   BE LIABLE FOR ANY INCIDENTAL, SPECIAL, INDIRECT OR CONSEQUENTIAL
--   DAMAGES, LOST PROFITS OR LOST DATA, HARM TO YOUR EQUIPMENT, COST OF
--   PROCUREMENT OF SUBSTITUTE GOODS, TECHNOLOGY OR SERVICES, ANY CLAIMS
--   BY THIRD PARTIES (INCLUDING BUT NOT LIMITED TO ANY DEFENSE THEREOF),
--   ANY CLAIMS FOR INDEMNITY OR CONTRIBUTION, OR OTHER SIMILAR COSTS.
--
--   Version History
--   Version 1.0 3/26/2012 Scott Larson
--     Initial Public Release
--
--------------------------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY debounce IS
  GENERIC(
    counter_size  :  INTEGER := 21
	 ); --filter (2**counter_size * 20 n)
  PORT(
    clk, reset    : IN  STD_LOGIC;  --input clock and reset
    sw      : IN  STD_LOGIC;  --input signal to be debounced
    db_level, db_tick  : OUT STD_LOGIC); --debounced signal and tick
END debounce;

ARCHITECTURE Behavioral OF debounce IS 
--  SIGNAL flipflops   : STD_LOGIC_VECTOR(1 DOWNTO 0); --input flip flops
--  SIGNAL counter_set : STD_LOGIC;                    --sync reset to zero
--  SIGNAL counter_out : STD_LOGIC_VECTOR(counter_size DOWNTO 0) := (OTHERS => '0'); --counter outputt
	TYPE state_type IS (zero, wait0, one, wait1);
	SIGNAL state_reg, state_next: state_type;
	SIGNAL q_reg, q_next: unsigned(counter_size - 1 downto 0);
--	SIGNAL q_load, q_dec, q_zero: std_logic;	
BEGIN 
--  counter_set <= flipflops(0) xor flipflops(1);   --determine when to start/reset counter
--  
--  PROCESS(clk)
--  BEGIN
--    IF(clk'EVENT and clk = '1') THEN
--      flipflops(0) <= button;
--      flipflops(1) <= flipflops(0);
--      If(counter_set = '1') THEN                  --reset counter because input is changing
--      o  counter_out <= (OTHERS => '0');
--      ELSIF(counter_out(counter_size) = '0') THEN --stable input time is not yet met
--        counter_out <= counter_out + 1;
--      ELSE                                        --stable input time is met
--        result <= flipflops(1);
--      END IF;    
--    END IF;
--  END PROCESS;
	-- fsmd state y registros
	PROCESS(clk,reset)
	BEGIN
		IF reset = '1' THEN
			state_reg <= zero;
			q_reg <= (OTHERS => '0');
		ELSIF (clk'event AND clk = '1') THEN
			state_reg <= state_next;
			q_reg <= q_next;
		END IF;
	END PROCESS;
	
	-- NEXT STATE LOGIC
	PROCESS(state_reg, q_reg, sw, q_next)
	BEGIN
		state_next <= state_reg;
		q_next <= q_reg;
		db_tick <= '0';
		CASE state_reg IS
			WHEN zero => 
				db_level <= '0';
				IF (sw = '1') THEN
					state_next <= wait1;
					q_next <= (others => '1');
				END IF;
			WHEN wait1 =>
				db_level <= '0';
				IF (sw = '1') THEN
					q_next <= q_reg - 1;
					IF (q_next = 0) THEN
						state_next <= one;
						db_tick <= '1';
					END IF;
				ELSE -- SW = '0'
					state_next <= zero;
				END IF;
			WHEN one =>
				db_level <= '1';
				IF (sw = '0') THEN
					state_next <= wait0;
					q_next <= (others => '1');
				END IF;
			WHEN wait0 =>
				db_level <= '1';
				IF (sw = '0') THEN
					q_next <= q_reg - 1;
					IF (q_next = 0) THEN
						state_next <= zero;
					END IF;
				ELSE -- SW = '1'
					state_next <= one;
				END IF;
		END CASE;
	END PROCESS;
END Behavioral;
