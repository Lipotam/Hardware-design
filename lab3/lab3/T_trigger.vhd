----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:18:09 09/24/2013 
-- Design Name: 
-- Module Name:    T_trigger - Behavioral 
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

entity T_trigger is

port (
		T, R, S : in std_logic;
      Q, notQ : out std_logic 
	);
	
	

end T_trigger;

architecture Behavioral of T_trigger is

component JK_trigger is
port (
		CLK, J, K, R, S  : in std_logic;
      Q, notQ : out std_logic 
	);
end component;

signal Qtemp1, Qtemp2 : std_logic;

begin

jk: JK_trigger port map(T, T, T, R, S, Qtemp1, Qtemp2);

Q <= Qtemp1;
notQ <= Qtemp2;

end Behavioral;