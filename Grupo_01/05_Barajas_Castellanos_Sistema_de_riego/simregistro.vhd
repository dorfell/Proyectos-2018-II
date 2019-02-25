--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:06:31 10/31/2018
-- Design Name:   
-- Module Name:   C:/Users/usuario/MAX6675/simregistro.vhd
-- Project Name:  MAX6675
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: registro
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY simregistro IS
END simregistro;
 
ARCHITECTURE behavior OF simregistro IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT registro
    PORT(
         MISO : IN  std_logic;
			enable1: in std_logic;
			enable2 : in std_logic;
			reset : in std_logic;
			teclado : in std_logic_vector(2 downto 0);
         num_bin : INOUT  std_logic_vector(15 downto 0);
			num_bcd : inout STD_LOGIC_VECTOR(19 downto 0);
			start : in std_logic;
         clock : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal MISO : std_logic := '0';
   signal clock : std_logic := '0';
	signal enable1 : std_logic := '0';
   signal enable2 : std_logic := '0';
	signal start :  std_logic := '0';
   signal reset :  std_logic := '1';

	signal teclado : std_logic_vector(2 downto 0);
 	--Outputs
   signal num_bin : std_logic_vector(15 downto 0);
	signal num_bcd : std_logic_vector(19 downto 0);


   -- Clock period definitions
   constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: registro PORT MAP (
          MISO => MISO,
			 teclado => teclado,
			 start => start,
			 reset => reset,
          num_bin => num_bin,
			 num_bcd => num_bcd,
          clock => clock,
			 enable1 => enable1, 
			 enable2 => enable2
        );

   -- Clock process definitions
   clock_process :process
   begin
		clock <= '0';
		wait for clock_period/2;
		clock <= '1';
		wait for clock_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
     -- wait for 100 ns;	

      wait for clock_period*10;

      -- insert stimulus here 
		enable1 <= '1';
		enable2 <= '1';
		wait for 10 ns;
		reset <= '0';
		start <= '1';
		wait for 10 ns;

		teclado <= "001";
		wait for 10 ns;
		teclado <= "010";
		
--		MISO <= '1';
--		wait for 10 ns;
--	   MISO <= '0';
--      wait for 10 ns;
--		MISO <= '1';
--		wait for 10 ns;
-- 		MISO <= '0';
--		wait for 10 ns;
--		MISO <= '1';
--      wait for 10 ns;
-- 		MISO <= '0';
--		wait for 10 ns;
--		MISO <= '1';
--      wait for 10 ns;
-- 		MISO <= '0';
--		wait for 10 ns;
--		MISO <= '1';
--      wait for 10 ns;
-- 		MISO <= '0';
--		wait for 10 ns;
--		MISO <= '1';
--      wait for 10 ns;
-- 		MISO <= '0';
--		wait for 10 ns;
--		MISO <= '1';
--      wait for 10 ns;
-- 		MISO <= '0';
--		wait for 10 ns;
--		MISO <= '1';
--      wait for 10 ns;
-- 		MISO <= '0';

      wait;
   end process;

END;
