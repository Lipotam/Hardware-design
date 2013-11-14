----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:54:25 11/14/2013 
-- Design Name: 
-- Module Name:    clk_counter_test - Behavioral 
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

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity clk_counter_test is
end clk_counter_test;

architecture Behavioral of clk_counter_test is

component CLK_counter is
	port(	
		clock:	in std_logic;
		Q:	out std_logic
	);
end component;

signal CLK : std_logic;
signal clk_count : std_logic;

begin

CLK_Counter_module : CLK_counter  port map ( CLK, clk_count);

stim_proc: process
	variable i : integer := 1; 
begin
	while i < 110000000 loop
		CLK <= '1';
		wait for 1 ps;
		CLK <= '0';
		wait for 1 ps;
		i := i + 1;
	end loop;	
	assert false report "simulation finished" severity failure;
end process;

end Behavioral;
