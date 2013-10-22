----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:44:54 10/20/2013 
-- Design Name: 
-- Module Name:    Lab1_second_test_module - Behavioral 
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

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Lab1_second_test_module is
end Lab1_second_test_module;

architecture Behavioral of Lab1_second_test_module is

Component Device1
port (
	x : in std_logic_vector(7 downto 0);
	y : out std_logic_vector (2 downto 0);
	v : out std_logic
);
end component;

Component Device2
port (
	x : in std_logic_vector(7 downto 0);
	y : out std_logic_vector (2 downto 0);
	v : out std_logic
);
end component;

   --Inputs
   signal input1 : std_logic_vector(7 downto 0) := (others => '0');
   signal input2 : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
	signal output1 : std_logic_vector(2 downto 0);
	signal output2 : std_logic_vector(2 downto 0);
   signal output_v_signal1 : std_logic;
   signal output_v_signal2 : std_logic;
	--file
	file test_file : text open read_mode is "lab1_first_test.txt";

begin

coder1 : Device1 port map (input1, output1, output_v_signal1);
coder2 : Device2 port map (input2, output2, output_v_signal2);

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
			input1 <= test_value_in;
			input2 <= test_value_in;
			
			--no need, just the same test for both modules
			readline(test_file,current_line);
			read(current_line,test_value_output);
			readline(test_file,current_line);
			read(current_line,test_value_out_v);
			--no need, just the same test for both modules
			
			wait for 1 ns;
			if not (output1 = output2 and output_v_signal1= output_v_signal2 ) then
				report "Decoder do not pass test #" & integer'image(i);
			end if;
			i := i + 1;
		end loop; 
		assert false report "simulation finished" severity failure;
   end process;

end Behavioral;

