LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.ALL;
USE ieee.std_logic_textio.ALL;
USE ieee.std_logic_arith.ALL;
LIBRARY std;
USE std.textio.ALL; 

entity Full_Shema_test_module is
end Full_Shema_test_module;

architecture Behavioral of Full_Shema_test_module is

component Full_Device is
port (
		DATA : in std_logic_vector(3 downto 0);
		CLK, CPD, CPU, MR, notPL : in std_logic;
      OUTPUT : out std_logic_vector(3 downto 0);
		notTCD, notTCU : out std_logic
	);
end component;

signal DATA : std_logic_vector(3 downto 0) := (others => '0');
signal CPD, CPU, MR, notPL, CLK_input : std_logic := '0';
signal OUTPUT : std_logic_vector(3 downto 0);
signal notTCD, notTCU : std_logic;

file Test_File : text open read_mode is "Full_shema_test_file.txt";

begin

full_shema: Full_Device port map (DATA, CLK_input, CPD, CPU, MR, notPL, OUTPUT, notTCD, notTCU);

stim_proc: process
	variable file_status : file_open_status;
	variable current_line : line;
	variable current_line_read : line;   
	variable test_value_in  : std_logic_vector(7 downto 0);
	variable test_value_out : std_logic_vector(5 downto 0);
	variable i : integer := 1; 
	variable j : integer := 1; 
begin
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
end process;

end Behavioral;

