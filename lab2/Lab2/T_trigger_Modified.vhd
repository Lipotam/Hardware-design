----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:59:58 09/24/2013 
-- Design Name: 
-- Module Name:    T_trigger_Modified - Behavioral 
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

entity T_trigger_Modified is

port (
		notT, leftR, rightR, S : in std_logic;
      Q, notQ : out std_logic 
	);

end T_trigger_Modified;

architecture Behavioral of T_trigger_Modified is

component JK_trigger is
port (
		CLK, J, K, R, S  : in std_logic;
      Q, notQ : out std_logic 
	);
end component;

signal Rst, T, Qtemp1, Qtemp2 : std_logic;

begin

Rst <= leftR and rightR;
T <= not notT;

jk: JK_trigger port map(T, T, T, Rst, S, Qtemp1, Qtemp2);

Q <= Qtemp1;
notQ <= Rst;

end Behavioral;

