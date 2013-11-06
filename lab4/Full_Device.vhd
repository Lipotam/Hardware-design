----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:50:18 10/22/2013 
-- Design Name: 
-- Module Name:    Full_Device - Behavioral 
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

entity Full_Device is

port (
		DATA : in std_logic_vector(3 downto 0);
		CLK, CPD, CPU, MR, notPL : in std_logic;
      OUTPUT : out std_logic_vector(3 downto 0);
		notTCD, notTCU : out std_logic
	);
end Full_Device;

architecture Behavioral of Full_Device is
component Up_Down_counter is
	port (
		DATA : in std_logic_vector(3 downto 0);
		CPD, CPU, MR, notPL : in std_logic;
      OUTPUT : out std_logic_vector(3 downto 0);
		notTCD, notTCU : out std_logic
	);
end component;

component CLK_counter is
	port(	
		clock:	in std_logic;
		Q:	out std_logic
	);
end component;

signal clk_count, cpd_in, cpu_in: std_logic;
signal notTCD_out, notTCU_out : std_logic;

signal output_vector : std_logic_vector(3 downto 0);

begin

CLK_Counter_module : CLK_counter port map ( CLK, clk_count);

cpd_in <= not (clk_count and CPD);
cpu_in <= not (clk_count and CPU);
	
Counter_Module : 	Up_Down_counter port map ( DATA, cpd_in, cpu_in, MR, notPL, output_vector, notTCD_out, notTCU_out);
		
OUTPUT <= output_vector;
notTCD <= notTCD_out; 
notTCU <= notTCU_out;

end Behavioral;

