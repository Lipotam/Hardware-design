----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:38:25 09/24/2013 
-- Design Name: 
-- Module Name:    Up_Down_counter - Behavioral 
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

entity Up_Down_counter is

port (
		DATA : in std_logic_vector(3 downto 0);
		CDP, CPU, MR, notPL : in std_logic;
      OUTPUT : out std_logic_vector(3 downto 0);
		notTCD, notTCU : out std_logic
	);

end Up_Down_counter;

architecture Behavioral of Up_Down_counter is

begin


end Behavioral;

