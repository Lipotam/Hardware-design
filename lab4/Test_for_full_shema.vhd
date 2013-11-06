--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:14:53 11/05/2013
-- Design Name:   
-- Module Name:   C:/Temp/lab4/Test_for_full_shema.vhd
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
USE ieee.std_logic_textio.ALL;
USE ieee.std_logic_arith.ALL;
LIBRARY std;
USE std.textio.ALL; 

library simprim;
use simprim.VComponents.all;

 
ENTITY Test_for_full_shema IS
END Test_for_full_shema;
 
ARCHITECTURE behavior OF Test_for_full_shema IS 
 
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
   signal CLK_input : std_logic := '0';
   signal CPD : std_logic := '0';
   signal CPU : std_logic := '0';
   signal MR : std_logic := '0';
   signal notPL : std_logic := '0';

 	--Outputs
   signal OUTPUT : std_logic_vector(3 downto 0);
   signal notTCD : std_logic;
   signal notTCU : std_logic;
	
	file Test_File : text open read_mode is "Full_shema_test_file.txt";
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Full_Device PORT MAP (
          DATA => DATA,
          CLK => CLK_input,
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
 
--   constant CLK_period := 1ns;
-- 
--   CLK_process :process
--   begin
--		CLK <= '0';
--		wait for <clock>_period/2;
--		CLK <= '1';
--		wait for <clock>_period/2;
--   end process;
 

   -- Stimulus process
   stim_proc: process
	
	variable file_status : file_open_status;
	variable current_line : line;
	variable current_line_read : line;   
	variable test_value_in  : std_logic_vector(7 downto 0);
	variable test_value_out : std_logic_vector(5 downto 0);
	variable i : integer := 1; 
	variable j : integer := 1; 
   begin		
      -- hold reset state for 100ms.
     -- wait for 100ms;	

--      wait for CLK_period*10;

      while not endfile(Test_File) loop
		readline(Test_File,current_line);
		read(current_line,test_value_in);
	
		DATA(3) <= test_value_in(7); 
		DATA(2) <= test_value_in(6); 
		DATA(1) <= test_value_in(5); 
		DATA(0) <= test_value_in(4);
	
		CPD <= test_value_in(3);
		CPU <= test_value_in(2);
		MR <= test_value_in(1);
		notPL <= test_value_in(0);
		
		j:=0;
		while j < 10 loop
			CLK_input <= '1';
			wait for 1 ps;
			CLK_input <= '0';
			wait for 1 ps;
			j := j + 1;
		end loop;
		
		readline(test_file,current_line);
		read(current_line,test_value_out);
		
		if not ((OUTPUT(3) = test_value_out(5)) and (OUTPUT(2) = test_value_out(4)) and (OUTPUT(1) = test_value_out(3)) and 
				(OUTPUT(0) = test_value_out(2)) and (notTCD = test_value_out(1)) and (notTCU = test_value_out(0))) then
				report "Test failed #" & integer'image(i);
		end if;
		
		i := i + 1;
	end loop;	
	assert false report "simulation finished" severity failure;

      wait;
   end process;

END;
