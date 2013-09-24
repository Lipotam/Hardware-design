----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:49:53 09/23/2013 
-- Design Name: 
-- Module Name:    MainForm2 - Behavioral 
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

entity MainForm2 is

port (
	x : in std_logic_vector(7 downto 0);
	y : out std_logic_vector (2 downto 0);
	v : out std_logic
);

end MainForm2;

architecture Behavioral of MainForm2 is

begin

y(0) <= '1' when x(1)='1' or x(3)='1' or x(5)='1' or x(7)='1' else '0';
y(1) <= '1' when x(2)='1' or x(3)='1' or x(6)='1' or x(7)='1' else '0';
y(2) <= '1' when x(4)='1' or x(5)='1' or x(6)='1' or x(7)='1' else '0';
v    <= '1' when x(0)='1' or x(1)='1' or x(2)='1' or x(3)='1' or x(4)='1' or x(5)='1' or x(6)='1' or x(7)='1' else '0';

end Behavioral;

