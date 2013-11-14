--------------------------------------------------------------------------------
-- Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: K.31
--  \   \         Application: netgen
--  /   /         Filename: Full_Shema_test_module_translate.vhd
-- /___/   /\     Timestamp: Thu Nov 14 14:24:31 2013
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -rpw 100 -tpw 0 -ar Structure -tm Full_Device -w -dir netgen/translate -ofmt vhdl -sim Full_Device.ngd Full_Shema_test_module_translate.vhd 
-- Device	: 2s200fg256-5
-- Input file	: Full_Device.ngd
-- Output file	: D:\OwnProjects\HardwareDesign\lab4\netgen\translate\Full_Shema_test_module_translate.vhd
-- # of Entities	: 1
-- Design Name	: Full_Device
-- Xilinx	: C:\Xilinx\10.1\ISE
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Development System Reference Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

entity Full_Device is
  port (
    CLK : in STD_LOGIC := 'X'; 
    CPD : in STD_LOGIC := 'X'; 
    notPL : in STD_LOGIC := 'X'; 
    notTCD : out STD_LOGIC; 
    CPU : in STD_LOGIC := 'X'; 
    notTCU : out STD_LOGIC; 
    MR : in STD_LOGIC := 'X'; 
    OUTPUT : out STD_LOGIC_VECTOR ( 3 downto 0 ); 
    DATA : in STD_LOGIC_VECTOR ( 3 downto 0 ) 
  );
end Full_Device;

architecture Structure of Full_Device is
  signal CLK_BUFGP : STD_LOGIC; 
  signal CLK_Counter_module_Mcount_counter_cy_10_rt_7 : STD_LOGIC; 
  signal CLK_Counter_module_Mcount_counter_cy_11_rt_9 : STD_LOGIC; 
  signal CLK_Counter_module_Mcount_counter_cy_12_rt_11 : STD_LOGIC; 
  signal CLK_Counter_module_Mcount_counter_cy_13_rt_13 : STD_LOGIC; 
  signal CLK_Counter_module_Mcount_counter_cy_14_rt_15 : STD_LOGIC; 
  signal CLK_Counter_module_Mcount_counter_cy_15_rt_17 : STD_LOGIC; 
  signal CLK_Counter_module_Mcount_counter_cy_16_rt_19 : STD_LOGIC; 
  signal CLK_Counter_module_Mcount_counter_cy_17_rt_21 : STD_LOGIC; 
  signal CLK_Counter_module_Mcount_counter_cy_18_rt_23 : STD_LOGIC; 
  signal CLK_Counter_module_Mcount_counter_cy_19_rt_25 : STD_LOGIC; 
  signal CLK_Counter_module_Mcount_counter_cy_1_rt_27 : STD_LOGIC; 
  signal CLK_Counter_module_Mcount_counter_cy_20_rt_29 : STD_LOGIC; 
  signal CLK_Counter_module_Mcount_counter_cy_21_rt_31 : STD_LOGIC; 
  signal CLK_Counter_module_Mcount_counter_cy_22_rt_33 : STD_LOGIC; 
  signal CLK_Counter_module_Mcount_counter_cy_23_rt_35 : STD_LOGIC; 
  signal CLK_Counter_module_Mcount_counter_cy_24_rt_37 : STD_LOGIC; 
  signal CLK_Counter_module_Mcount_counter_cy_2_rt_39 : STD_LOGIC; 
  signal CLK_Counter_module_Mcount_counter_cy_3_rt_41 : STD_LOGIC; 
  signal CLK_Counter_module_Mcount_counter_cy_4_rt_43 : STD_LOGIC; 
  signal CLK_Counter_module_Mcount_counter_cy_5_rt_45 : STD_LOGIC; 
  signal CLK_Counter_module_Mcount_counter_cy_6_rt_47 : STD_LOGIC; 
  signal CLK_Counter_module_Mcount_counter_cy_7_rt_49 : STD_LOGIC; 
  signal CLK_Counter_module_Mcount_counter_cy_8_rt_51 : STD_LOGIC; 
  signal CLK_Counter_module_Mcount_counter_cy_9_rt_53 : STD_LOGIC; 
  signal CLK_Counter_module_Mcount_counter_xor_25_rt_55 : STD_LOGIC; 
  signal CLK_Counter_module_temporal_82 : STD_LOGIC; 
  signal CLK_Counter_module_temporal_cmp_eq0000 : STD_LOGIC; 
  signal CLK_Counter_module_temporal_not0001 : STD_LOGIC; 
  signal CPD_IBUF_99 : STD_LOGIC; 
  signal CPU_IBUF_101 : STD_LOGIC; 
  signal Counter_Module_N9 : STD_LOGIC; 
  signal Counter_Module_Trigger_0_T : STD_LOGIC; 
  signal Counter_Module_Trigger_0_jk_R_inv : STD_LOGIC; 
  signal Counter_Module_Trigger_0_jk_S_inv : STD_LOGIC; 
  signal Counter_Module_Trigger_0_jk_qbartemp_106 : STD_LOGIC; 
  signal Counter_Module_Trigger_0_jk_qbartemp_mux0002 : STD_LOGIC; 
  signal Counter_Module_Trigger_0_jk_qtemp_108 : STD_LOGIC; 
  signal Counter_Module_Trigger_0_jk_qtemp_mux0002 : STD_LOGIC; 
  signal Counter_Module_Trigger_1_T : STD_LOGIC; 
  signal Counter_Module_Trigger_1_T12_111 : STD_LOGIC; 
  signal Counter_Module_Trigger_1_jk_R_inv : STD_LOGIC; 
  signal Counter_Module_Trigger_1_jk_S_inv : STD_LOGIC; 
  signal Counter_Module_Trigger_1_jk_qbartemp_114 : STD_LOGIC; 
  signal Counter_Module_Trigger_1_jk_qbartemp_mux0002 : STD_LOGIC; 
  signal Counter_Module_Trigger_1_jk_qtemp_116 : STD_LOGIC; 
  signal Counter_Module_Trigger_1_jk_qtemp_mux0002 : STD_LOGIC; 
  signal Counter_Module_Trigger_2_T_118 : STD_LOGIC; 
  signal Counter_Module_Trigger_2_jk_R_inv : STD_LOGIC; 
  signal Counter_Module_Trigger_2_jk_S_inv : STD_LOGIC; 
  signal Counter_Module_Trigger_2_jk_qbartemp_121 : STD_LOGIC; 
  signal Counter_Module_Trigger_2_jk_qbartemp_mux0002 : STD_LOGIC; 
  signal Counter_Module_Trigger_2_jk_qtemp_123 : STD_LOGIC; 
  signal Counter_Module_Trigger_2_jk_qtemp_mux0002 : STD_LOGIC; 
  signal Counter_Module_Trigger_3_T_125 : STD_LOGIC; 
  signal Counter_Module_Trigger_3_jk_R_inv : STD_LOGIC; 
  signal Counter_Module_Trigger_3_jk_S_inv : STD_LOGIC; 
  signal Counter_Module_Trigger_3_jk_qbartemp_128 : STD_LOGIC; 
  signal Counter_Module_Trigger_3_jk_qbartemp_mux0002 : STD_LOGIC; 
  signal Counter_Module_Trigger_3_jk_qtemp_130 : STD_LOGIC; 
  signal Counter_Module_Trigger_3_jk_qtemp_mux0002 : STD_LOGIC; 
  signal DATA_0_IBUF_136 : STD_LOGIC; 
  signal DATA_1_IBUF_137 : STD_LOGIC; 
  signal DATA_2_IBUF_138 : STD_LOGIC; 
  signal DATA_3_IBUF_139 : STD_LOGIC; 
  signal MR_IBUF_141 : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal N21 : STD_LOGIC; 
  signal N3 : STD_LOGIC; 
  signal N4 : STD_LOGIC; 
  signal N6 : STD_LOGIC; 
  signal N8 : STD_LOGIC; 
  signal cpu_in : STD_LOGIC; 
  signal notPL_IBUF_179 : STD_LOGIC; 
  signal notTCD_OBUF_181 : STD_LOGIC; 
  signal notTCU_OBUF_183 : STD_LOGIC; 
  signal Counter_Module_Trigger_3_T_SW0_O : STD_LOGIC; 
  signal Counter_Module_Trigger_1_T12_O : STD_LOGIC; 
  signal CLK_BUFGP_IBUFG_2 : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal CLK_Counter_module_Mcount_counter_cy : STD_LOGIC_VECTOR ( 24 downto 0 ); 
  signal CLK_Counter_module_Mcount_counter_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal CLK_Counter_module_counter : STD_LOGIC_VECTOR ( 25 downto 0 ); 
  signal CLK_Counter_module_temporal_cmp_eq0000_wg_cy : STD_LOGIC_VECTOR ( 5 downto 0 ); 
  signal CLK_Counter_module_temporal_cmp_eq0000_wg_lut : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal Result : STD_LOGIC_VECTOR ( 25 downto 1 ); 
begin
  XST_GND : X_ZERO
    port map (
      O => N2
    );
  XST_VCC : X_ONE
    port map (
      O => N3
    );
  CLK_Counter_module_temporal : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      CE => CLK_Counter_module_temporal_cmp_eq0000,
      I => CLK_Counter_module_temporal_not0001,
      O => CLK_Counter_module_temporal_82,
      SET => GND,
      RST => GND
    );
  CLK_Counter_module_counter_0 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      I => CLK_Counter_module_Mcount_counter_lut(0),
      SRST => CLK_Counter_module_temporal_cmp_eq0000,
      O => CLK_Counter_module_counter(0),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  CLK_Counter_module_counter_1 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      I => Result(1),
      SRST => CLK_Counter_module_temporal_cmp_eq0000,
      O => CLK_Counter_module_counter(1),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  CLK_Counter_module_counter_2 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      I => Result(2),
      SRST => CLK_Counter_module_temporal_cmp_eq0000,
      O => CLK_Counter_module_counter(2),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  CLK_Counter_module_counter_3 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      I => Result(3),
      SRST => CLK_Counter_module_temporal_cmp_eq0000,
      O => CLK_Counter_module_counter(3),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  CLK_Counter_module_counter_4 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      I => Result(4),
      SRST => CLK_Counter_module_temporal_cmp_eq0000,
      O => CLK_Counter_module_counter(4),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  CLK_Counter_module_counter_5 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      I => Result(5),
      SRST => CLK_Counter_module_temporal_cmp_eq0000,
      O => CLK_Counter_module_counter(5),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  CLK_Counter_module_counter_6 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      I => Result(6),
      SRST => CLK_Counter_module_temporal_cmp_eq0000,
      O => CLK_Counter_module_counter(6),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  CLK_Counter_module_counter_7 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      I => Result(7),
      SRST => CLK_Counter_module_temporal_cmp_eq0000,
      O => CLK_Counter_module_counter(7),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  CLK_Counter_module_counter_8 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      I => Result(8),
      SRST => CLK_Counter_module_temporal_cmp_eq0000,
      O => CLK_Counter_module_counter(8),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  CLK_Counter_module_counter_9 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      I => Result(9),
      SRST => CLK_Counter_module_temporal_cmp_eq0000,
      O => CLK_Counter_module_counter(9),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  CLK_Counter_module_counter_10 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      I => Result(10),
      SRST => CLK_Counter_module_temporal_cmp_eq0000,
      O => CLK_Counter_module_counter(10),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  CLK_Counter_module_counter_11 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      I => Result(11),
      SRST => CLK_Counter_module_temporal_cmp_eq0000,
      O => CLK_Counter_module_counter(11),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  CLK_Counter_module_counter_12 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      I => Result(12),
      SRST => CLK_Counter_module_temporal_cmp_eq0000,
      O => CLK_Counter_module_counter(12),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  CLK_Counter_module_counter_13 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      I => Result(13),
      SRST => CLK_Counter_module_temporal_cmp_eq0000,
      O => CLK_Counter_module_counter(13),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  CLK_Counter_module_counter_14 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      I => Result(14),
      SRST => CLK_Counter_module_temporal_cmp_eq0000,
      O => CLK_Counter_module_counter(14),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  CLK_Counter_module_counter_15 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      I => Result(15),
      SRST => CLK_Counter_module_temporal_cmp_eq0000,
      O => CLK_Counter_module_counter(15),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  CLK_Counter_module_counter_16 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      I => Result(16),
      SRST => CLK_Counter_module_temporal_cmp_eq0000,
      O => CLK_Counter_module_counter(16),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  CLK_Counter_module_counter_17 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      I => Result(17),
      SRST => CLK_Counter_module_temporal_cmp_eq0000,
      O => CLK_Counter_module_counter(17),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  CLK_Counter_module_counter_18 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      I => Result(18),
      SRST => CLK_Counter_module_temporal_cmp_eq0000,
      O => CLK_Counter_module_counter(18),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  CLK_Counter_module_counter_19 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      I => Result(19),
      SRST => CLK_Counter_module_temporal_cmp_eq0000,
      O => CLK_Counter_module_counter(19),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  CLK_Counter_module_counter_20 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      I => Result(20),
      SRST => CLK_Counter_module_temporal_cmp_eq0000,
      O => CLK_Counter_module_counter(20),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  CLK_Counter_module_counter_21 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      I => Result(21),
      SRST => CLK_Counter_module_temporal_cmp_eq0000,
      O => CLK_Counter_module_counter(21),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  CLK_Counter_module_counter_22 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      I => Result(22),
      SRST => CLK_Counter_module_temporal_cmp_eq0000,
      O => CLK_Counter_module_counter(22),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  CLK_Counter_module_counter_23 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      I => Result(23),
      SRST => CLK_Counter_module_temporal_cmp_eq0000,
      O => CLK_Counter_module_counter(23),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  CLK_Counter_module_counter_24 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      I => Result(24),
      SRST => CLK_Counter_module_temporal_cmp_eq0000,
      O => CLK_Counter_module_counter(24),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  CLK_Counter_module_counter_25 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => CLK_BUFGP,
      I => Result(25),
      SRST => CLK_Counter_module_temporal_cmp_eq0000,
      O => CLK_Counter_module_counter(25),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  CLK_Counter_module_Mcount_counter_cy_0_Q : X_MUX2
    port map (
      IB => N2,
      IA => N3,
      SEL => CLK_Counter_module_Mcount_counter_lut(0),
      O => CLK_Counter_module_Mcount_counter_cy(0)
    );
  CLK_Counter_module_Mcount_counter_cy_1_Q : X_MUX2
    port map (
      IB => CLK_Counter_module_Mcount_counter_cy(0),
      IA => N2,
      SEL => CLK_Counter_module_Mcount_counter_cy_1_rt_27,
      O => CLK_Counter_module_Mcount_counter_cy(1)
    );
  CLK_Counter_module_Mcount_counter_xor_1_Q : X_XOR2
    port map (
      I0 => CLK_Counter_module_Mcount_counter_cy(0),
      I1 => CLK_Counter_module_Mcount_counter_cy_1_rt_27,
      O => Result(1)
    );
  CLK_Counter_module_Mcount_counter_cy_2_Q : X_MUX2
    port map (
      IB => CLK_Counter_module_Mcount_counter_cy(1),
      IA => N2,
      SEL => CLK_Counter_module_Mcount_counter_cy_2_rt_39,
      O => CLK_Counter_module_Mcount_counter_cy(2)
    );
  CLK_Counter_module_Mcount_counter_xor_2_Q : X_XOR2
    port map (
      I0 => CLK_Counter_module_Mcount_counter_cy(1),
      I1 => CLK_Counter_module_Mcount_counter_cy_2_rt_39,
      O => Result(2)
    );
  CLK_Counter_module_Mcount_counter_cy_3_Q : X_MUX2
    port map (
      IB => CLK_Counter_module_Mcount_counter_cy(2),
      IA => N2,
      SEL => CLK_Counter_module_Mcount_counter_cy_3_rt_41,
      O => CLK_Counter_module_Mcount_counter_cy(3)
    );
  CLK_Counter_module_Mcount_counter_xor_3_Q : X_XOR2
    port map (
      I0 => CLK_Counter_module_Mcount_counter_cy(2),
      I1 => CLK_Counter_module_Mcount_counter_cy_3_rt_41,
      O => Result(3)
    );
  CLK_Counter_module_Mcount_counter_cy_4_Q : X_MUX2
    port map (
      IB => CLK_Counter_module_Mcount_counter_cy(3),
      IA => N2,
      SEL => CLK_Counter_module_Mcount_counter_cy_4_rt_43,
      O => CLK_Counter_module_Mcount_counter_cy(4)
    );
  CLK_Counter_module_Mcount_counter_xor_4_Q : X_XOR2
    port map (
      I0 => CLK_Counter_module_Mcount_counter_cy(3),
      I1 => CLK_Counter_module_Mcount_counter_cy_4_rt_43,
      O => Result(4)
    );
  CLK_Counter_module_Mcount_counter_cy_5_Q : X_MUX2
    port map (
      IB => CLK_Counter_module_Mcount_counter_cy(4),
      IA => N2,
      SEL => CLK_Counter_module_Mcount_counter_cy_5_rt_45,
      O => CLK_Counter_module_Mcount_counter_cy(5)
    );
  CLK_Counter_module_Mcount_counter_xor_5_Q : X_XOR2
    port map (
      I0 => CLK_Counter_module_Mcount_counter_cy(4),
      I1 => CLK_Counter_module_Mcount_counter_cy_5_rt_45,
      O => Result(5)
    );
  CLK_Counter_module_Mcount_counter_cy_6_Q : X_MUX2
    port map (
      IB => CLK_Counter_module_Mcount_counter_cy(5),
      IA => N2,
      SEL => CLK_Counter_module_Mcount_counter_cy_6_rt_47,
      O => CLK_Counter_module_Mcount_counter_cy(6)
    );
  CLK_Counter_module_Mcount_counter_xor_6_Q : X_XOR2
    port map (
      I0 => CLK_Counter_module_Mcount_counter_cy(5),
      I1 => CLK_Counter_module_Mcount_counter_cy_6_rt_47,
      O => Result(6)
    );
  CLK_Counter_module_Mcount_counter_cy_7_Q : X_MUX2
    port map (
      IB => CLK_Counter_module_Mcount_counter_cy(6),
      IA => N2,
      SEL => CLK_Counter_module_Mcount_counter_cy_7_rt_49,
      O => CLK_Counter_module_Mcount_counter_cy(7)
    );
  CLK_Counter_module_Mcount_counter_xor_7_Q : X_XOR2
    port map (
      I0 => CLK_Counter_module_Mcount_counter_cy(6),
      I1 => CLK_Counter_module_Mcount_counter_cy_7_rt_49,
      O => Result(7)
    );
  CLK_Counter_module_Mcount_counter_cy_8_Q : X_MUX2
    port map (
      IB => CLK_Counter_module_Mcount_counter_cy(7),
      IA => N2,
      SEL => CLK_Counter_module_Mcount_counter_cy_8_rt_51,
      O => CLK_Counter_module_Mcount_counter_cy(8)
    );
  CLK_Counter_module_Mcount_counter_xor_8_Q : X_XOR2
    port map (
      I0 => CLK_Counter_module_Mcount_counter_cy(7),
      I1 => CLK_Counter_module_Mcount_counter_cy_8_rt_51,
      O => Result(8)
    );
  CLK_Counter_module_Mcount_counter_cy_9_Q : X_MUX2
    port map (
      IB => CLK_Counter_module_Mcount_counter_cy(8),
      IA => N2,
      SEL => CLK_Counter_module_Mcount_counter_cy_9_rt_53,
      O => CLK_Counter_module_Mcount_counter_cy(9)
    );
  CLK_Counter_module_Mcount_counter_xor_9_Q : X_XOR2
    port map (
      I0 => CLK_Counter_module_Mcount_counter_cy(8),
      I1 => CLK_Counter_module_Mcount_counter_cy_9_rt_53,
      O => Result(9)
    );
  CLK_Counter_module_Mcount_counter_cy_10_Q : X_MUX2
    port map (
      IB => CLK_Counter_module_Mcount_counter_cy(9),
      IA => N2,
      SEL => CLK_Counter_module_Mcount_counter_cy_10_rt_7,
      O => CLK_Counter_module_Mcount_counter_cy(10)
    );
  CLK_Counter_module_Mcount_counter_xor_10_Q : X_XOR2
    port map (
      I0 => CLK_Counter_module_Mcount_counter_cy(9),
      I1 => CLK_Counter_module_Mcount_counter_cy_10_rt_7,
      O => Result(10)
    );
  CLK_Counter_module_Mcount_counter_cy_11_Q : X_MUX2
    port map (
      IB => CLK_Counter_module_Mcount_counter_cy(10),
      IA => N2,
      SEL => CLK_Counter_module_Mcount_counter_cy_11_rt_9,
      O => CLK_Counter_module_Mcount_counter_cy(11)
    );
  CLK_Counter_module_Mcount_counter_xor_11_Q : X_XOR2
    port map (
      I0 => CLK_Counter_module_Mcount_counter_cy(10),
      I1 => CLK_Counter_module_Mcount_counter_cy_11_rt_9,
      O => Result(11)
    );
  CLK_Counter_module_Mcount_counter_cy_12_Q : X_MUX2
    port map (
      IB => CLK_Counter_module_Mcount_counter_cy(11),
      IA => N2,
      SEL => CLK_Counter_module_Mcount_counter_cy_12_rt_11,
      O => CLK_Counter_module_Mcount_counter_cy(12)
    );
  CLK_Counter_module_Mcount_counter_xor_12_Q : X_XOR2
    port map (
      I0 => CLK_Counter_module_Mcount_counter_cy(11),
      I1 => CLK_Counter_module_Mcount_counter_cy_12_rt_11,
      O => Result(12)
    );
  CLK_Counter_module_Mcount_counter_cy_13_Q : X_MUX2
    port map (
      IB => CLK_Counter_module_Mcount_counter_cy(12),
      IA => N2,
      SEL => CLK_Counter_module_Mcount_counter_cy_13_rt_13,
      O => CLK_Counter_module_Mcount_counter_cy(13)
    );
  CLK_Counter_module_Mcount_counter_xor_13_Q : X_XOR2
    port map (
      I0 => CLK_Counter_module_Mcount_counter_cy(12),
      I1 => CLK_Counter_module_Mcount_counter_cy_13_rt_13,
      O => Result(13)
    );
  CLK_Counter_module_Mcount_counter_cy_14_Q : X_MUX2
    port map (
      IB => CLK_Counter_module_Mcount_counter_cy(13),
      IA => N2,
      SEL => CLK_Counter_module_Mcount_counter_cy_14_rt_15,
      O => CLK_Counter_module_Mcount_counter_cy(14)
    );
  CLK_Counter_module_Mcount_counter_xor_14_Q : X_XOR2
    port map (
      I0 => CLK_Counter_module_Mcount_counter_cy(13),
      I1 => CLK_Counter_module_Mcount_counter_cy_14_rt_15,
      O => Result(14)
    );
  CLK_Counter_module_Mcount_counter_cy_15_Q : X_MUX2
    port map (
      IB => CLK_Counter_module_Mcount_counter_cy(14),
      IA => N2,
      SEL => CLK_Counter_module_Mcount_counter_cy_15_rt_17,
      O => CLK_Counter_module_Mcount_counter_cy(15)
    );
  CLK_Counter_module_Mcount_counter_xor_15_Q : X_XOR2
    port map (
      I0 => CLK_Counter_module_Mcount_counter_cy(14),
      I1 => CLK_Counter_module_Mcount_counter_cy_15_rt_17,
      O => Result(15)
    );
  CLK_Counter_module_Mcount_counter_cy_16_Q : X_MUX2
    port map (
      IB => CLK_Counter_module_Mcount_counter_cy(15),
      IA => N2,
      SEL => CLK_Counter_module_Mcount_counter_cy_16_rt_19,
      O => CLK_Counter_module_Mcount_counter_cy(16)
    );
  CLK_Counter_module_Mcount_counter_xor_16_Q : X_XOR2
    port map (
      I0 => CLK_Counter_module_Mcount_counter_cy(15),
      I1 => CLK_Counter_module_Mcount_counter_cy_16_rt_19,
      O => Result(16)
    );
  CLK_Counter_module_Mcount_counter_cy_17_Q : X_MUX2
    port map (
      IB => CLK_Counter_module_Mcount_counter_cy(16),
      IA => N2,
      SEL => CLK_Counter_module_Mcount_counter_cy_17_rt_21,
      O => CLK_Counter_module_Mcount_counter_cy(17)
    );
  CLK_Counter_module_Mcount_counter_xor_17_Q : X_XOR2
    port map (
      I0 => CLK_Counter_module_Mcount_counter_cy(16),
      I1 => CLK_Counter_module_Mcount_counter_cy_17_rt_21,
      O => Result(17)
    );
  CLK_Counter_module_Mcount_counter_cy_18_Q : X_MUX2
    port map (
      IB => CLK_Counter_module_Mcount_counter_cy(17),
      IA => N2,
      SEL => CLK_Counter_module_Mcount_counter_cy_18_rt_23,
      O => CLK_Counter_module_Mcount_counter_cy(18)
    );
  CLK_Counter_module_Mcount_counter_xor_18_Q : X_XOR2
    port map (
      I0 => CLK_Counter_module_Mcount_counter_cy(17),
      I1 => CLK_Counter_module_Mcount_counter_cy_18_rt_23,
      O => Result(18)
    );
  CLK_Counter_module_Mcount_counter_cy_19_Q : X_MUX2
    port map (
      IB => CLK_Counter_module_Mcount_counter_cy(18),
      IA => N2,
      SEL => CLK_Counter_module_Mcount_counter_cy_19_rt_25,
      O => CLK_Counter_module_Mcount_counter_cy(19)
    );
  CLK_Counter_module_Mcount_counter_xor_19_Q : X_XOR2
    port map (
      I0 => CLK_Counter_module_Mcount_counter_cy(18),
      I1 => CLK_Counter_module_Mcount_counter_cy_19_rt_25,
      O => Result(19)
    );
  CLK_Counter_module_Mcount_counter_cy_20_Q : X_MUX2
    port map (
      IB => CLK_Counter_module_Mcount_counter_cy(19),
      IA => N2,
      SEL => CLK_Counter_module_Mcount_counter_cy_20_rt_29,
      O => CLK_Counter_module_Mcount_counter_cy(20)
    );
  CLK_Counter_module_Mcount_counter_xor_20_Q : X_XOR2
    port map (
      I0 => CLK_Counter_module_Mcount_counter_cy(19),
      I1 => CLK_Counter_module_Mcount_counter_cy_20_rt_29,
      O => Result(20)
    );
  CLK_Counter_module_Mcount_counter_cy_21_Q : X_MUX2
    port map (
      IB => CLK_Counter_module_Mcount_counter_cy(20),
      IA => N2,
      SEL => CLK_Counter_module_Mcount_counter_cy_21_rt_31,
      O => CLK_Counter_module_Mcount_counter_cy(21)
    );
  CLK_Counter_module_Mcount_counter_xor_21_Q : X_XOR2
    port map (
      I0 => CLK_Counter_module_Mcount_counter_cy(20),
      I1 => CLK_Counter_module_Mcount_counter_cy_21_rt_31,
      O => Result(21)
    );
  CLK_Counter_module_Mcount_counter_cy_22_Q : X_MUX2
    port map (
      IB => CLK_Counter_module_Mcount_counter_cy(21),
      IA => N2,
      SEL => CLK_Counter_module_Mcount_counter_cy_22_rt_33,
      O => CLK_Counter_module_Mcount_counter_cy(22)
    );
  CLK_Counter_module_Mcount_counter_xor_22_Q : X_XOR2
    port map (
      I0 => CLK_Counter_module_Mcount_counter_cy(21),
      I1 => CLK_Counter_module_Mcount_counter_cy_22_rt_33,
      O => Result(22)
    );
  CLK_Counter_module_Mcount_counter_cy_23_Q : X_MUX2
    port map (
      IB => CLK_Counter_module_Mcount_counter_cy(22),
      IA => N2,
      SEL => CLK_Counter_module_Mcount_counter_cy_23_rt_35,
      O => CLK_Counter_module_Mcount_counter_cy(23)
    );
  CLK_Counter_module_Mcount_counter_xor_23_Q : X_XOR2
    port map (
      I0 => CLK_Counter_module_Mcount_counter_cy(22),
      I1 => CLK_Counter_module_Mcount_counter_cy_23_rt_35,
      O => Result(23)
    );
  CLK_Counter_module_Mcount_counter_cy_24_Q : X_MUX2
    port map (
      IB => CLK_Counter_module_Mcount_counter_cy(23),
      IA => N2,
      SEL => CLK_Counter_module_Mcount_counter_cy_24_rt_37,
      O => CLK_Counter_module_Mcount_counter_cy(24)
    );
  CLK_Counter_module_Mcount_counter_xor_24_Q : X_XOR2
    port map (
      I0 => CLK_Counter_module_Mcount_counter_cy(23),
      I1 => CLK_Counter_module_Mcount_counter_cy_24_rt_37,
      O => Result(24)
    );
  CLK_Counter_module_Mcount_counter_xor_25_Q : X_XOR2
    port map (
      I0 => CLK_Counter_module_Mcount_counter_cy(24),
      I1 => CLK_Counter_module_Mcount_counter_xor_25_rt_55,
      O => Result(25)
    );
  Counter_Module_Trigger_0_jk_qbartemp : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Counter_Module_Trigger_0_T,
      CE => Counter_Module_Trigger_0_T,
      RST => Counter_Module_Trigger_0_jk_S_inv,
      I => Counter_Module_Trigger_0_jk_qbartemp_mux0002,
      SET => Counter_Module_Trigger_0_jk_R_inv,
      O => Counter_Module_Trigger_0_jk_qbartemp_106
    );
  Counter_Module_Trigger_0_jk_qtemp : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Counter_Module_Trigger_0_T,
      CE => Counter_Module_Trigger_0_T,
      RST => Counter_Module_Trigger_0_jk_R_inv,
      I => Counter_Module_Trigger_0_jk_qtemp_mux0002,
      SET => Counter_Module_Trigger_0_jk_S_inv,
      O => Counter_Module_Trigger_0_jk_qtemp_108
    );
  Counter_Module_Trigger_1_jk_qbartemp : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Counter_Module_Trigger_1_T,
      CE => Counter_Module_Trigger_1_T,
      RST => Counter_Module_Trigger_1_jk_S_inv,
      I => Counter_Module_Trigger_1_jk_qbartemp_mux0002,
      SET => Counter_Module_Trigger_1_jk_R_inv,
      O => Counter_Module_Trigger_1_jk_qbartemp_114
    );
  Counter_Module_Trigger_1_jk_qtemp : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Counter_Module_Trigger_1_T,
      CE => Counter_Module_Trigger_1_T,
      RST => Counter_Module_Trigger_1_jk_R_inv,
      I => Counter_Module_Trigger_1_jk_qtemp_mux0002,
      SET => Counter_Module_Trigger_1_jk_S_inv,
      O => Counter_Module_Trigger_1_jk_qtemp_116
    );
  Counter_Module_Trigger_2_jk_qbartemp : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Counter_Module_Trigger_2_T_118,
      CE => Counter_Module_Trigger_2_T_118,
      RST => Counter_Module_Trigger_2_jk_S_inv,
      I => Counter_Module_Trigger_2_jk_qbartemp_mux0002,
      SET => Counter_Module_Trigger_2_jk_R_inv,
      O => Counter_Module_Trigger_2_jk_qbartemp_121
    );
  Counter_Module_Trigger_2_jk_qtemp : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Counter_Module_Trigger_2_T_118,
      CE => Counter_Module_Trigger_2_T_118,
      RST => Counter_Module_Trigger_2_jk_R_inv,
      I => Counter_Module_Trigger_2_jk_qtemp_mux0002,
      SET => Counter_Module_Trigger_2_jk_S_inv,
      O => Counter_Module_Trigger_2_jk_qtemp_123
    );
  Counter_Module_Trigger_3_jk_qbartemp : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Counter_Module_Trigger_3_T_125,
      CE => Counter_Module_Trigger_3_T_125,
      RST => Counter_Module_Trigger_3_jk_S_inv,
      I => Counter_Module_Trigger_3_jk_qbartemp_mux0002,
      SET => Counter_Module_Trigger_3_jk_R_inv,
      O => Counter_Module_Trigger_3_jk_qbartemp_128
    );
  Counter_Module_Trigger_3_jk_qtemp : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Counter_Module_Trigger_3_T_125,
      CE => Counter_Module_Trigger_3_T_125,
      RST => Counter_Module_Trigger_3_jk_R_inv,
      I => Counter_Module_Trigger_3_jk_qtemp_mux0002,
      SET => Counter_Module_Trigger_3_jk_S_inv,
      O => Counter_Module_Trigger_3_jk_qtemp_130
    );
  CLK_Counter_module_temporal_cmp_eq0000_wg_lut_0_Q : X_LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      ADR0 => CLK_Counter_module_counter(5),
      ADR1 => CLK_Counter_module_counter(9),
      O => CLK_Counter_module_temporal_cmp_eq0000_wg_lut(0)
    );
  CLK_Counter_module_temporal_cmp_eq0000_wg_cy_0_Q : X_MUX2
    port map (
      IB => N3,
      IA => N2,
      SEL => CLK_Counter_module_temporal_cmp_eq0000_wg_lut(0),
      O => CLK_Counter_module_temporal_cmp_eq0000_wg_cy(0)
    );
  CLK_Counter_module_temporal_cmp_eq0000_wg_lut_1_Q : X_LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      ADR0 => CLK_Counter_module_counter(7),
      ADR1 => CLK_Counter_module_counter(8),
      ADR2 => CLK_Counter_module_counter(4),
      ADR3 => CLK_Counter_module_counter(12),
      O => CLK_Counter_module_temporal_cmp_eq0000_wg_lut(1)
    );
  CLK_Counter_module_temporal_cmp_eq0000_wg_cy_1_Q : X_MUX2
    port map (
      IB => CLK_Counter_module_temporal_cmp_eq0000_wg_cy(0),
      IA => N2,
      SEL => CLK_Counter_module_temporal_cmp_eq0000_wg_lut(1),
      O => CLK_Counter_module_temporal_cmp_eq0000_wg_cy(1)
    );
  CLK_Counter_module_temporal_cmp_eq0000_wg_lut_2_Q : X_LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      ADR0 => CLK_Counter_module_counter(10),
      ADR1 => CLK_Counter_module_counter(11),
      ADR2 => CLK_Counter_module_counter(6),
      ADR3 => CLK_Counter_module_counter(13),
      O => CLK_Counter_module_temporal_cmp_eq0000_wg_lut(2)
    );
  CLK_Counter_module_temporal_cmp_eq0000_wg_cy_2_Q : X_MUX2
    port map (
      IB => CLK_Counter_module_temporal_cmp_eq0000_wg_cy(1),
      IA => N2,
      SEL => CLK_Counter_module_temporal_cmp_eq0000_wg_lut(2),
      O => CLK_Counter_module_temporal_cmp_eq0000_wg_cy(2)
    );
  CLK_Counter_module_temporal_cmp_eq0000_wg_lut_3_Q : X_LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      ADR0 => CLK_Counter_module_counter(14),
      ADR1 => CLK_Counter_module_counter(15),
      ADR2 => CLK_Counter_module_counter(3),
      ADR3 => CLK_Counter_module_counter(16),
      O => CLK_Counter_module_temporal_cmp_eq0000_wg_lut(3)
    );
  CLK_Counter_module_temporal_cmp_eq0000_wg_cy_3_Q : X_MUX2
    port map (
      IB => CLK_Counter_module_temporal_cmp_eq0000_wg_cy(2),
      IA => N2,
      SEL => CLK_Counter_module_temporal_cmp_eq0000_wg_lut(3),
      O => CLK_Counter_module_temporal_cmp_eq0000_wg_cy(3)
    );
  CLK_Counter_module_temporal_cmp_eq0000_wg_lut_4_Q : X_LUT4
    generic map(
      INIT => X"0010"
    )
    port map (
      ADR0 => CLK_Counter_module_counter(19),
      ADR1 => CLK_Counter_module_counter(17),
      ADR2 => CLK_Counter_module_counter(2),
      ADR3 => CLK_Counter_module_counter(18),
      O => CLK_Counter_module_temporal_cmp_eq0000_wg_lut(4)
    );
  CLK_Counter_module_temporal_cmp_eq0000_wg_cy_4_Q : X_MUX2
    port map (
      IB => CLK_Counter_module_temporal_cmp_eq0000_wg_cy(3),
      IA => N2,
      SEL => CLK_Counter_module_temporal_cmp_eq0000_wg_lut(4),
      O => CLK_Counter_module_temporal_cmp_eq0000_wg_cy(4)
    );
  CLK_Counter_module_temporal_cmp_eq0000_wg_lut_5_Q : X_LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      ADR0 => CLK_Counter_module_counter(22),
      ADR1 => CLK_Counter_module_counter(20),
      ADR2 => CLK_Counter_module_counter(1),
      ADR3 => CLK_Counter_module_counter(21),
      O => CLK_Counter_module_temporal_cmp_eq0000_wg_lut(5)
    );
  CLK_Counter_module_temporal_cmp_eq0000_wg_cy_5_Q : X_MUX2
    port map (
      IB => CLK_Counter_module_temporal_cmp_eq0000_wg_cy(4),
      IA => N2,
      SEL => CLK_Counter_module_temporal_cmp_eq0000_wg_lut(5),
      O => CLK_Counter_module_temporal_cmp_eq0000_wg_cy(5)
    );
  CLK_Counter_module_temporal_cmp_eq0000_wg_lut_6_Q : X_LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      ADR0 => CLK_Counter_module_counter(25),
      ADR1 => CLK_Counter_module_counter(23),
      ADR2 => CLK_Counter_module_counter(0),
      ADR3 => CLK_Counter_module_counter(24),
      O => CLK_Counter_module_temporal_cmp_eq0000_wg_lut(6)
    );
  CLK_Counter_module_temporal_cmp_eq0000_wg_cy_6_Q : X_MUX2
    port map (
      IB => CLK_Counter_module_temporal_cmp_eq0000_wg_cy(5),
      IA => N2,
      SEL => CLK_Counter_module_temporal_cmp_eq0000_wg_lut(6),
      O => CLK_Counter_module_temporal_cmp_eq0000
    );
  cpu_in1 : X_LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      ADR0 => CLK_Counter_module_temporal_82,
      ADR1 => CPU_IBUF_101,
      O => cpu_in
    );
  Counter_Module_Trigger_3_jk_S_inv1 : X_LUT3
    generic map(
      INIT => X"10"
    )
    port map (
      ADR0 => MR_IBUF_141,
      ADR1 => notPL_IBUF_179,
      ADR2 => DATA_3_IBUF_139,
      O => Counter_Module_Trigger_3_jk_S_inv
    );
  Counter_Module_Trigger_3_jk_R_inv1 : X_LUT3
    generic map(
      INIT => X"AB"
    )
    port map (
      ADR0 => MR_IBUF_141,
      ADR1 => DATA_3_IBUF_139,
      ADR2 => notPL_IBUF_179,
      O => Counter_Module_Trigger_3_jk_R_inv
    );
  Counter_Module_Trigger_2_jk_S_inv1 : X_LUT3
    generic map(
      INIT => X"10"
    )
    port map (
      ADR0 => MR_IBUF_141,
      ADR1 => notPL_IBUF_179,
      ADR2 => DATA_2_IBUF_138,
      O => Counter_Module_Trigger_2_jk_S_inv
    );
  Counter_Module_Trigger_2_jk_R_inv1 : X_LUT3
    generic map(
      INIT => X"AB"
    )
    port map (
      ADR0 => MR_IBUF_141,
      ADR1 => DATA_2_IBUF_138,
      ADR2 => notPL_IBUF_179,
      O => Counter_Module_Trigger_2_jk_R_inv
    );
  Counter_Module_Trigger_1_jk_S_inv1 : X_LUT3
    generic map(
      INIT => X"10"
    )
    port map (
      ADR0 => MR_IBUF_141,
      ADR1 => notPL_IBUF_179,
      ADR2 => DATA_1_IBUF_137,
      O => Counter_Module_Trigger_1_jk_S_inv
    );
  Counter_Module_Trigger_1_jk_R_inv1 : X_LUT3
    generic map(
      INIT => X"AB"
    )
    port map (
      ADR0 => MR_IBUF_141,
      ADR1 => DATA_1_IBUF_137,
      ADR2 => notPL_IBUF_179,
      O => Counter_Module_Trigger_1_jk_R_inv
    );
  Counter_Module_Trigger_0_jk_S_inv1 : X_LUT3
    generic map(
      INIT => X"10"
    )
    port map (
      ADR0 => MR_IBUF_141,
      ADR1 => notPL_IBUF_179,
      ADR2 => DATA_0_IBUF_136,
      O => Counter_Module_Trigger_0_jk_S_inv
    );
  Counter_Module_Trigger_0_jk_R_inv1 : X_LUT3
    generic map(
      INIT => X"AB"
    )
    port map (
      ADR0 => MR_IBUF_141,
      ADR1 => DATA_0_IBUF_136,
      ADR2 => notPL_IBUF_179,
      O => Counter_Module_Trigger_0_jk_R_inv
    );
  Counter_Module_notTCD : X_LUT4
    generic map(
      INIT => X"FF7F"
    )
    port map (
      ADR0 => Counter_Module_Trigger_1_jk_qbartemp_114,
      ADR1 => Counter_Module_Trigger_2_jk_qbartemp_121,
      ADR2 => Counter_Module_Trigger_3_jk_qbartemp_128,
      ADR3 => N8,
      O => notTCD_OBUF_181
    );
  Counter_Module_Trigger_2_T : X_LUT4
    generic map(
      INIT => X"A888"
    )
    port map (
      ADR0 => N21,
      ADR1 => Counter_Module_N9,
      ADR2 => Counter_Module_Trigger_2_jk_qbartemp_121,
      ADR3 => Counter_Module_Trigger_3_jk_qbartemp_128,
      O => Counter_Module_Trigger_2_T_118
    );
  Counter_Module_Trigger_3_T : X_LUT4
    generic map(
      INIT => X"CF45"
    )
    port map (
      ADR0 => Counter_Module_Trigger_0_jk_qtemp_108,
      ADR1 => Counter_Module_N9,
      ADR2 => Counter_Module_Trigger_2_jk_qbartemp_121,
      ADR3 => N4,
      O => Counter_Module_Trigger_3_T_125
    );
  CPD_IBUF : X_BUF
    port map (
      I => CPD,
      O => CPD_IBUF_99
    );
  notPL_IBUF : X_BUF
    port map (
      I => notPL,
      O => notPL_IBUF_179
    );
  CPU_IBUF : X_BUF
    port map (
      I => CPU,
      O => CPU_IBUF_101
    );
  MR_IBUF : X_BUF
    port map (
      I => MR,
      O => MR_IBUF_141
    );
  DATA_3_IBUF : X_BUF
    port map (
      I => DATA(3),
      O => DATA_3_IBUF_139
    );
  DATA_2_IBUF : X_BUF
    port map (
      I => DATA(2),
      O => DATA_2_IBUF_138
    );
  DATA_1_IBUF : X_BUF
    port map (
      I => DATA(1),
      O => DATA_1_IBUF_137
    );
  DATA_0_IBUF : X_BUF
    port map (
      I => DATA(0),
      O => DATA_0_IBUF_136
    );
  CLK_Counter_module_Mcount_counter_cy_1_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => CLK_Counter_module_counter(1),
      O => CLK_Counter_module_Mcount_counter_cy_1_rt_27,
      ADR1 => GND
    );
  CLK_Counter_module_Mcount_counter_cy_2_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => CLK_Counter_module_counter(2),
      O => CLK_Counter_module_Mcount_counter_cy_2_rt_39,
      ADR1 => GND
    );
  CLK_Counter_module_Mcount_counter_cy_3_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => CLK_Counter_module_counter(3),
      O => CLK_Counter_module_Mcount_counter_cy_3_rt_41,
      ADR1 => GND
    );
  CLK_Counter_module_Mcount_counter_cy_4_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => CLK_Counter_module_counter(4),
      O => CLK_Counter_module_Mcount_counter_cy_4_rt_43,
      ADR1 => GND
    );
  CLK_Counter_module_Mcount_counter_cy_5_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => CLK_Counter_module_counter(5),
      O => CLK_Counter_module_Mcount_counter_cy_5_rt_45,
      ADR1 => GND
    );
  CLK_Counter_module_Mcount_counter_cy_6_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => CLK_Counter_module_counter(6),
      O => CLK_Counter_module_Mcount_counter_cy_6_rt_47,
      ADR1 => GND
    );
  CLK_Counter_module_Mcount_counter_cy_7_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => CLK_Counter_module_counter(7),
      O => CLK_Counter_module_Mcount_counter_cy_7_rt_49,
      ADR1 => GND
    );
  CLK_Counter_module_Mcount_counter_cy_8_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => CLK_Counter_module_counter(8),
      O => CLK_Counter_module_Mcount_counter_cy_8_rt_51,
      ADR1 => GND
    );
  CLK_Counter_module_Mcount_counter_cy_9_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => CLK_Counter_module_counter(9),
      O => CLK_Counter_module_Mcount_counter_cy_9_rt_53,
      ADR1 => GND
    );
  CLK_Counter_module_Mcount_counter_cy_10_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => CLK_Counter_module_counter(10),
      O => CLK_Counter_module_Mcount_counter_cy_10_rt_7,
      ADR1 => GND
    );
  CLK_Counter_module_Mcount_counter_cy_11_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => CLK_Counter_module_counter(11),
      O => CLK_Counter_module_Mcount_counter_cy_11_rt_9,
      ADR1 => GND
    );
  CLK_Counter_module_Mcount_counter_cy_12_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => CLK_Counter_module_counter(12),
      O => CLK_Counter_module_Mcount_counter_cy_12_rt_11,
      ADR1 => GND
    );
  CLK_Counter_module_Mcount_counter_cy_13_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => CLK_Counter_module_counter(13),
      O => CLK_Counter_module_Mcount_counter_cy_13_rt_13,
      ADR1 => GND
    );
  CLK_Counter_module_Mcount_counter_cy_14_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => CLK_Counter_module_counter(14),
      O => CLK_Counter_module_Mcount_counter_cy_14_rt_15,
      ADR1 => GND
    );
  CLK_Counter_module_Mcount_counter_cy_15_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => CLK_Counter_module_counter(15),
      O => CLK_Counter_module_Mcount_counter_cy_15_rt_17,
      ADR1 => GND
    );
  CLK_Counter_module_Mcount_counter_cy_16_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => CLK_Counter_module_counter(16),
      O => CLK_Counter_module_Mcount_counter_cy_16_rt_19,
      ADR1 => GND
    );
  CLK_Counter_module_Mcount_counter_cy_17_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => CLK_Counter_module_counter(17),
      O => CLK_Counter_module_Mcount_counter_cy_17_rt_21,
      ADR1 => GND
    );
  CLK_Counter_module_Mcount_counter_cy_18_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => CLK_Counter_module_counter(18),
      O => CLK_Counter_module_Mcount_counter_cy_18_rt_23,
      ADR1 => GND
    );
  CLK_Counter_module_Mcount_counter_cy_19_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => CLK_Counter_module_counter(19),
      O => CLK_Counter_module_Mcount_counter_cy_19_rt_25,
      ADR1 => GND
    );
  CLK_Counter_module_Mcount_counter_cy_20_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => CLK_Counter_module_counter(20),
      O => CLK_Counter_module_Mcount_counter_cy_20_rt_29,
      ADR1 => GND
    );
  CLK_Counter_module_Mcount_counter_cy_21_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => CLK_Counter_module_counter(21),
      O => CLK_Counter_module_Mcount_counter_cy_21_rt_31,
      ADR1 => GND
    );
  CLK_Counter_module_Mcount_counter_cy_22_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => CLK_Counter_module_counter(22),
      O => CLK_Counter_module_Mcount_counter_cy_22_rt_33,
      ADR1 => GND
    );
  CLK_Counter_module_Mcount_counter_cy_23_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => CLK_Counter_module_counter(23),
      O => CLK_Counter_module_Mcount_counter_cy_23_rt_35,
      ADR1 => GND
    );
  CLK_Counter_module_Mcount_counter_cy_24_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => CLK_Counter_module_counter(24),
      O => CLK_Counter_module_Mcount_counter_cy_24_rt_37,
      ADR1 => GND
    );
  CLK_Counter_module_Mcount_counter_xor_25_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => CLK_Counter_module_counter(25),
      O => CLK_Counter_module_Mcount_counter_xor_25_rt_55,
      ADR1 => GND
    );
  Counter_Module_Trigger_1_T31 : X_LUT4
    generic map(
      INIT => X"F8FC"
    )
    port map (
      ADR0 => cpu_in,
      ADR1 => Counter_Module_Trigger_1_T12_111,
      ADR2 => N6,
      ADR3 => Counter_Module_Trigger_0_jk_qtemp_108,
      O => Counter_Module_Trigger_1_T
    );
  Counter_Module_Trigger_1_T12_SW0 : X_LUT3
    generic map(
      INIT => X"7F"
    )
    port map (
      ADR0 => Counter_Module_Trigger_0_jk_qbartemp_106,
      ADR1 => CLK_Counter_module_temporal_82,
      ADR2 => CPD_IBUF_99,
      O => N8
    );
  Counter_Module_Trigger_0_T1 : X_LUT3
    generic map(
      INIT => X"1F"
    )
    port map (
      ADR0 => CPU_IBUF_101,
      ADR1 => CPD_IBUF_99,
      ADR2 => CLK_Counter_module_temporal_82,
      O => Counter_Module_Trigger_0_T
    );
  Counter_Module_notTCU1 : X_LUT4
    generic map(
      INIT => X"7FFF"
    )
    port map (
      ADR0 => CLK_Counter_module_temporal_82,
      ADR1 => CPU_IBUF_101,
      ADR2 => Counter_Module_Trigger_0_jk_qtemp_108,
      ADR3 => Counter_Module_Trigger_3_jk_qtemp_130,
      O => notTCU_OBUF_183
    );
  Counter_Module_Trigger_2_T211 : X_LUT4
    generic map(
      INIT => X"7FFF"
    )
    port map (
      ADR0 => CLK_Counter_module_temporal_82,
      ADR1 => CPD_IBUF_99,
      ADR2 => Counter_Module_Trigger_1_jk_qbartemp_114,
      ADR3 => Counter_Module_Trigger_0_jk_qbartemp_106,
      O => Counter_Module_N9
    );
  Counter_Module_Trigger_2_T_SW0 : X_LUT4
    generic map(
      INIT => X"7FFF"
    )
    port map (
      ADR0 => CLK_Counter_module_temporal_82,
      ADR1 => CPU_IBUF_101,
      ADR2 => Counter_Module_Trigger_1_jk_qtemp_116,
      ADR3 => Counter_Module_Trigger_0_jk_qtemp_108,
      O => N21
    );
  Counter_Module_Trigger_1_T31_SW0 : X_LUT4
    generic map(
      INIT => X"1555"
    )
    port map (
      ADR0 => Counter_Module_Trigger_3_jk_qbartemp_128,
      ADR1 => Counter_Module_Trigger_0_jk_qbartemp_106,
      ADR2 => CLK_Counter_module_temporal_82,
      ADR3 => CPD_IBUF_99,
      O => N6
    );
  CLK_Counter_module_Mcount_counter_lut_0_INV_0 : X_INV
    port map (
      I => CLK_Counter_module_counter(0),
      O => CLK_Counter_module_Mcount_counter_lut(0)
    );
  Counter_Module_Trigger_3_jk_qtemp_mux00021_INV_0 : X_INV
    port map (
      I => Counter_Module_Trigger_3_jk_qtemp_130,
      O => Counter_Module_Trigger_3_jk_qtemp_mux0002
    );
  Counter_Module_Trigger_3_jk_qbartemp_mux00021_INV_0 : X_INV
    port map (
      I => Counter_Module_Trigger_3_jk_qbartemp_128,
      O => Counter_Module_Trigger_3_jk_qbartemp_mux0002
    );
  Counter_Module_Trigger_2_jk_qtemp_mux00021_INV_0 : X_INV
    port map (
      I => Counter_Module_Trigger_2_jk_qtemp_123,
      O => Counter_Module_Trigger_2_jk_qtemp_mux0002
    );
  Counter_Module_Trigger_2_jk_qbartemp_mux00021_INV_0 : X_INV
    port map (
      I => Counter_Module_Trigger_2_jk_qbartemp_121,
      O => Counter_Module_Trigger_2_jk_qbartemp_mux0002
    );
  Counter_Module_Trigger_1_jk_qtemp_mux00021_INV_0 : X_INV
    port map (
      I => Counter_Module_Trigger_1_jk_qtemp_116,
      O => Counter_Module_Trigger_1_jk_qtemp_mux0002
    );
  Counter_Module_Trigger_1_jk_qbartemp_mux00021_INV_0 : X_INV
    port map (
      I => Counter_Module_Trigger_1_jk_qbartemp_114,
      O => Counter_Module_Trigger_1_jk_qbartemp_mux0002
    );
  Counter_Module_Trigger_0_jk_qtemp_mux00021_INV_0 : X_INV
    port map (
      I => Counter_Module_Trigger_0_jk_qtemp_108,
      O => Counter_Module_Trigger_0_jk_qtemp_mux0002
    );
  Counter_Module_Trigger_0_jk_qbartemp_mux00021_INV_0 : X_INV
    port map (
      I => Counter_Module_Trigger_0_jk_qbartemp_106,
      O => Counter_Module_Trigger_0_jk_qbartemp_mux0002
    );
  CLK_Counter_module_temporal_not00011_INV_0 : X_INV
    port map (
      I => CLK_Counter_module_temporal_82,
      O => CLK_Counter_module_temporal_not0001
    );
  Counter_Module_Trigger_3_T_SW0_LUT4_L_BUF : X_BUF
    port map (
      I => Counter_Module_Trigger_3_T_SW0_O,
      O => N4
    );
  Counter_Module_Trigger_3_T_SW0 : X_LUT4
    generic map(
      INIT => X"FF15"
    )
    port map (
      ADR0 => Counter_Module_Trigger_3_jk_qtemp_130,
      ADR1 => Counter_Module_Trigger_2_jk_qtemp_123,
      ADR2 => Counter_Module_Trigger_1_jk_qtemp_116,
      ADR3 => cpu_in,
      O => Counter_Module_Trigger_3_T_SW0_O
    );
  Counter_Module_Trigger_1_T12_LUT4_L_BUF : X_BUF
    port map (
      I => Counter_Module_Trigger_1_T12_O,
      O => Counter_Module_Trigger_1_T12_111
    );
  Counter_Module_Trigger_1_T12 : X_LUT4
    generic map(
      INIT => X"EAAA"
    )
    port map (
      ADR0 => N8,
      ADR1 => Counter_Module_Trigger_1_jk_qbartemp_114,
      ADR2 => Counter_Module_Trigger_2_jk_qbartemp_121,
      ADR3 => Counter_Module_Trigger_3_jk_qbartemp_128,
      O => Counter_Module_Trigger_1_T12_O
    );
  CLK_BUFGP_BUFG : X_CKBUF
    port map (
      I => CLK_BUFGP_IBUFG_2,
      O => CLK_BUFGP
    );
  CLK_BUFGP_IBUFG : X_CKBUF
    port map (
      I => CLK,
      O => CLK_BUFGP_IBUFG_2
    );
  OUTPUT_0_OBUF : X_OBUF
    port map (
      I => Counter_Module_Trigger_0_jk_qtemp_108,
      O => OUTPUT(0)
    );
  OUTPUT_1_OBUF : X_OBUF
    port map (
      I => Counter_Module_Trigger_1_jk_qtemp_116,
      O => OUTPUT(1)
    );
  OUTPUT_2_OBUF : X_OBUF
    port map (
      I => Counter_Module_Trigger_2_jk_qtemp_123,
      O => OUTPUT(2)
    );
  OUTPUT_3_OBUF : X_OBUF
    port map (
      I => Counter_Module_Trigger_3_jk_qtemp_130,
      O => OUTPUT(3)
    );
  notTCD_OBUF : X_OBUF
    port map (
      I => notTCD_OBUF_181,
      O => notTCD
    );
  notTCU_OBUF : X_OBUF
    port map (
      I => notTCU_OBUF_183,
      O => notTCU
    );
  NlwBlock_Full_Device_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlock_Full_Device_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

