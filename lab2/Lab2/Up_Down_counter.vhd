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
		CPD, CPU, MR, notPL : in std_logic;
      OUTPUT : out std_logic_vector(3 downto 0);
		T : out std_logic_vector(3 downto 0);
		magic : out std_logic;
		notTCD, notTCU : out std_logic
	);

end Up_Down_counter;

architecture Behavioral of Up_Down_counter is

component T_trigger_Modified is
port (
		notT, leftR, rightR, S : in std_logic;
      Q, notQ : out std_logic 
	);
end component;

signal s_PL, s_notMR, s_notCPD, s_notCPU, s_and_0, s_and_1, s_and_2, s_and_3, s_and_4, s_and_5, s_and_6, s_notAnd_magic : std_logic;
signal s_SET, s_OUTPUT, s_notOUTPUT, s_notT, s_notRightR: std_logic_vector(3 downto 0);

begin

s_PL <= not notPL;
s_notMR <= not MR;
s_notCPD <= not CPD;
s_notCPU <= not CPU;

--Infrastructure for trigger 0
s_SET(0) <= not(DATA(0) and s_PL and s_notMR);
s_notT(0) <= s_notCPD or s_notCPU;
s_notRightR(0) <= not(s_SET(0) and s_PL);
Trigger_0 : T_trigger_Modified port map(s_notT(0), s_notMR, s_notRightR(0), s_SET(0), s_OUTPUT(0), s_notOUTPUT(0));
--

--Infrastructure for trigger 1
s_SET(1) <= not(DATA(1) and s_PL and s_notMR);
s_and_0 <= s_notCPD and s_notOUTPUT(0) and s_notAnd_magic;
s_and_1 <= s_OUTPUT(0) and s_notOUTPUT(3) and s_notCPU;
s_notT(1) <= s_and_0 or s_and_1;
s_notRightR(1) <= not(s_SET(1) and s_PL);
Trigger_1 : T_trigger_Modified port map(s_notT(1), s_notMR, s_notRightR(1), s_SET(1), s_OUTPUT(1), s_notOUTPUT(1));
--

--Infrastructure for trigger 2
s_SET(2) <= not(DATA(2) and s_PL and s_notMR);
s_and_2 <= s_notAnd_magic and s_notCPD and s_notOUTPUT(1);
s_and_3 <= s_OUTPUT(0) and s_OUTPUT(1) and s_notCPU;
s_notT(2) <= s_and_2 or s_and_3;
s_notRightR(2) <= not(s_SET(2) and s_PL);
Trigger_2 : T_trigger_Modified port map(s_notT(2), s_notMR, s_notRightR(2), s_SET(2), s_OUTPUT(2), s_notOUTPUT(2));
--

--Infrastructure for trigger 3
s_SET(2) <= not(DATA(3) and s_PL and s_notMR);
s_and_4 <= s_notCPD and s_notOUTPUT(0) and s_notOUTPUT(1) and s_notOUTPUT(2);
s_and_5 <= s_OUTPUT(0) and s_OUTPUT(3) and s_notCPU;
s_and_6 <= s_OUTPUT(0) and S_OUTPUT(1) and S_OUTPUT(2) and s_notCPU;
s_notT(3) <= s_and_4 or s_and_5 or s_and_6;
s_notRightR(3) <= not(s_SET(3) and s_PL);
Trigger_3 : T_trigger_Modified port map(s_notT(3), s_notMR, s_notRightR(3), s_SET(3), s_OUTPUT(3), s_notOUTPUT(3));
--

--Magic definition
s_notAnd_magic <= not(s_notOUTPUT(1) and s_notOUTPUT(2) and s_notOUTPUT(3));
--

--TCD output
notTCD <= not(s_notCPD and s_notOUTPUT(0) and s_notOUTPUT(1) and s_notOUTPUT(2) and s_notOUTPUT(3));
--

--TCU output
notTCU <= not(s_OUTPUT(0) and s_OUTPUT(3) and s_notCPU);
--

OUTPUT <= s_OUTPUT;

T <= s_notT;

magic <= s_notAnd_magic;

end Behavioral;

