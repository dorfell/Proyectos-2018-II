--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:21:34 02/05/2019
-- Design Name:   
-- Module Name:   C:/Users/usuario/MAX6675/simtop.vhd
-- Project Name:  MAX6675
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: TOPmax
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
 
ENTITY simtop IS
END simtop;
 
ARCHITECTURE behavior OF simtop IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT TOPmax
    PORT(
         clock : IN  std_logic;
         reset : IN  std_logic;
         reset1 : IN  std_logic;
         start : IN  std_logic;
         MISO : IN  std_logic;
         SCK : OUT  std_logic;
         busy : OUT  std_logic;
         cs : OUT  std_logic;
         num_bin : INOUT  std_logic_vector(15 downto 0);
         num_bcd : INOUT  std_logic_vector(19 downto 0);
         MUX : OUT  std_logic_vector(3 downto 0);
         salida : OUT  std_logic_vector(7 downto 0);
         enable1 : OUT  std_logic;
         enable2 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clock : std_logic := '0';
   signal reset : std_logic := '0';
   signal reset1 : std_logic := '0';
   signal start : std_logic := '0';
   signal MISO : std_logic := '0';

	--BiDirs
   signal num_bin : std_logic_vector(15 downto 0);
   signal num_bcd : std_logic_vector(19 downto 0);

 	--Outputs
   signal SCK : std_logic;
   signal busy : std_logic;
   signal cs : std_logic;
   signal MUX : std_logic_vector(3 downto 0);
   signal salida : std_logic_vector(7 downto 0);
   signal enable1 : std_logic;
   signal enable2 : std_logic;

   -- Clock period definitions
   constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: TOPmax PORT MAP (
          clock => clock,
          reset => reset,
          reset1 => reset1,
          start => start,
          MISO => MISO,
          SCK => SCK,
          busy => busy,
          cs => cs,
          num_bin => num_bin,
          num_bcd => num_bcd,
          MUX => MUX,
          salida => salida,
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
      wait for 100 ns;	

      wait for clock_period*10;

      -- insert stimulus here 
		reset <= '1';
		reset1 <= '1';
		wait for 12 us;
		reset <= '0';
		reset1 <= '0';
		start <= '1';
		
	   MISO <= '1';
		wait for 3 us;
		MISO <= '1';
		wait for 3 us;
		MISO <= '0';
		wait for 3 us;
		MISO <= '1';
		wait for 3 us;
		MISO <= '0';
		wait for 3 us;
		MISO <= '0';
		wait for 3 us;
		MISO <= '0';
		wait for 3 us;
		MISO <= '1';
		wait for 3 us;
		MISO <= '0';
		wait for 3 us;
		MISO <= '1';
		wait for 3 us;
		MISO <= '0';
		wait for 3 us;
		MISO <= '1';
		wait for 3 us;
		MISO <= '0';
		wait for 3 us;
		MISO <= '1';
		wait for 3 us;
		MISO <= '0';
		wait for 3 us;
		MISO <= '1';
		wait for 3 us;
		MISO <= '1';
		wait for 3 us;
		MISO <= '0';
		wait for 3 us;
		MISO <= '1';
		wait for 3 us;
		MISO <= '0';
		wait for 3 us;
		MISO <= '0';
		wait for 3 us;
		MISO <= '0';
		wait for 3 us;
		MISO <= '1';
		wait for 3 us;
		MISO <= '0';
		wait for 3 us;
		MISO <= '1';
		wait for 3 us;
		MISO <= '0';
		wait for 3 us;
		MISO <= '1';
		wait for 3 us;
		MISO <= '0';
		wait for 3 us;
		MISO <= '1';
		wait for 3 us;
		MISO <= '0';
		wait for 3 us;


      wait;
   end process;

END;
