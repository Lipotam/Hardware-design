----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:12:37 10/20/2013 
-- Design Name: 
-- Module Name:    Lab1_first_test_module - Behavioral 
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
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.ALL;
USE ieee.std_logic_textio.ALL;
USE ieee.std_logic_arith.ALL;
LIBRARY std;
USE std.textio.ALL; 

entity Lab1_first_test_module is
end Lab1_first_test_module;

architecture Behavioral of Lab1_first_test_module is

Component Device1
port (
	x : in std_logic_vector(7 downto 0);
	y : out std_logic_vector (2 downto 0);
	v : out std_logic
);
end component;

 --Inputs
   signal input : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
	signal output : std_logic_vector(2 downto 0);
   signal output_v_signal : std_logic;
	--file
	file test_file : text open read_mode is "lab1_first_test.txt";
	
begin

coder : Device1 port map (input, output, output_v_signal);



 stim_proc: process
		variable file_status : file_open_status;
		variable current_line : line;
		variable current_line_read : line;
		variable test_value_in : std_logic_vector(7 downto 0);
		variable test_value_output: std_logic_vector(2 downto 0);
		variable test_value_out_v: std_logic;
		variable i : integer := 1;
   begin		

		while not endfile(test_file) loop		
			readline(test_file,current_line);
			read(current_line,test_value_in);
			input <= test_value_in;
			
			readline(test_file,current_line);
			read(current_line,test_value_output);
			readline(test_file,current_line);
			read(current_line,test_value_out_v);
			
			wait for 1 ns;
			if not (test_value_out_v = output_v_signal and test_value_output = output) then
				report "Decoder do not pass test #" & integer'image(i);
			end if;
			i := i + 1;
		end loop; 
   end process;

end Behavioral;

