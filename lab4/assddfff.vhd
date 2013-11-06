--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:13:41 11/05/2013
-- Design Name:   
-- Module Name:   C:/Temp/lab4/assddfff.vhd
-- Project Name:  lab3
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Full_Device
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
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.ALL;
 
ENTITY assddfff IS
END assddfff;
 
ARCHITECTURE behavior OF assddfff IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Full_Device
    PORT(
         DATA : IN  std_logic_vector(3 downto 0);
         CLK : IN  std_logic;
         CPD : IN  std_logic;
         CPU : IN  std_logic;
         MR : IN  std_logic;
         notPL : IN  std_logic;
         OUTPUT : OUT  std_logic_vector(3 downto 0);
         notTCD : OUT  std_logic;
         notTCU : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal DATA : std_logic_vector(3 downto 0) := (others => '0');
   signal CLK : std_logic := '0';
   signal CPD : std_logic := '0';
   signal CPU : std_logic := '0';
   signal MR : std_logic := '0';
   signal notPL : std_logic := '0';

 	--Outputs
   signal OUTPUT : std_logic_vector(3 downto 0);
   signal notTCD : std_logic;
   signal notTCU : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Full_Device PORT MAP (
          DATA => DATA,
          CLK => CLK,
          CPD => CPD,
          CPU => CPU,
          MR => MR,
          notPL => notPL,
          OUTPUT => OUTPUT,
          notTCD => notTCD,
          notTCU => notTCU
        );
 
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant <clock>_period := 1ns;
 
   <clock>_process :process
   begin
		<clock> <= '0';
		wait for <clock>_period/2;
		<clock> <= '1';
		wait for <clock>_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100ms.
      wait for 100ms;	

      wait for <clock>_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
