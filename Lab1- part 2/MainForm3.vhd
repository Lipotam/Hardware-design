----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:05:42 09/23/2013 
-- Design Name: 
-- Module Name:    MainForm3 - Behavioral 
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

entity MainForm3 is

port (
	x : in std_logic_vector(7 downto 0);
	y : out std_logic_vector (2 downto 0);
	v : out std_logic
);

end MainForm3;

architecture Behavioral of MainForm3 is

begin
with x select
	y <= 
	"000" when "00000001",
	"001" when "00000010",
	"010" when "00000100",
	"011" when "00001000",
	"100" when "00010000",
	"101" when "00100000",
	"110" when "01000000",
	"111" when "10000000",
	"000" when others;
	
with x select
	v <= 
	'0' when "00000000",
	'1' when others;

end Behavioral;

