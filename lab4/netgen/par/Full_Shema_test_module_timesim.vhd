--------------------------------------------------------------------------------
-- Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: K.31
--  \   \         Application: netgen
--  /   /         Filename: Full_Shema_test_module_timesim.vhd
-- /___/   /\     Timestamp: Fri Nov 15 13:18:30 2013
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 5 -pcf Full_Device.pcf -rpw 100 -tpw 0 -ar Structure -tm Full_Device -insert_pp_buffers false -w -dir netgen/par -ofmt vhdl -sim Full_Device.ncd Full_Shema_test_module_timesim.vhd 
-- Device	: 2s200fg256-5 (PRODUCTION 1.27 2008-01-09)
-- Input file	: Full_Device.ncd
-- Output file	: D:\BSUIR\Projects\HardwareDesign\lab4\netgen\par\Full_Shema_test_module_timesim.vhd
-- # of Entities	: 1
-- Design Name	: Full_Device
-- Xilinx	: D:\BSUIR\WebPack\ISE
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
    s_and_5_o : out STD_LOGIC; 
    CLK : in STD_LOGIC := 'X'; 
    s_PL_o : out STD_LOGIC; 
    CPD : in STD_LOGIC := 'X'; 
    notPL : in STD_LOGIC := 'X'; 
    notTCD : out STD_LOGIC; 
    s_and_6_o : out STD_LOGIC; 
    CPU : in STD_LOGIC := 'X'; 
    notTCU : out STD_LOGIC; 
    s_and_0_o : out STD_LOGIC; 
    MR : in STD_LOGIC := 'X'; 
    s_and_1_o : out STD_LOGIC; 
    s_notMR_o : out STD_LOGIC; 
    s_notCPD_o : out STD_LOGIC; 
    s_and_2_o : out STD_LOGIC; 
    s_notAnd_magic_o : out STD_LOGIC; 
    s_and_3_o : out STD_LOGIC; 
    s_notCPU_o : out STD_LOGIC; 
    s_and_4_o : out STD_LOGIC; 
    s_notRightR_o : out STD_LOGIC_VECTOR ( 3 downto 0 ); 
    s_notOUTPUT_o : out STD_LOGIC_VECTOR ( 3 downto 0 ); 
    s_notT_o : out STD_LOGIC_VECTOR ( 3 downto 0 ); 
    OUTPUT : out STD_LOGIC_VECTOR ( 3 downto 0 ); 
    s_SET_o : out STD_LOGIC_VECTOR ( 3 downto 0 ); 
    DATA : in STD_LOGIC_VECTOR ( 3 downto 0 ) 
  );
end Full_Device;

architecture Structure of Full_Device is
  signal s_and_2_o_OBUF_579 : STD_LOGIC; 
  signal s_and_3_o_OBUF_581 : STD_LOGIC; 
  signal Counter_Module_Trigger_0_qtemp_582 : STD_LOGIC; 
  signal s_and_4_o_OBUF_0 : STD_LOGIC; 
  signal Counter_Module_Trigger_1_qtemp_584 : STD_LOGIC; 
  signal Counter_Module_Trigger_2_qtemp_585 : STD_LOGIC; 
  signal s_and_5_o_OBUF_0 : STD_LOGIC; 
  signal Counter_Module_Trigger_3_qtemp_587 : STD_LOGIC; 
  signal notPL_IBUF_0 : STD_LOGIC; 
  signal Counter_Module_Trigger_0_qbartemp_590 : STD_LOGIC; 
  signal Counter_Module_Trigger_1_qbartemp_592 : STD_LOGIC; 
  signal s_notT_o_0_OBUF_0 : STD_LOGIC; 
  signal Counter_Module_Trigger_2_qbartemp_595 : STD_LOGIC; 
  signal CPD_IBUF_0 : STD_LOGIC; 
  signal s_notT_o_1_OBUF_0 : STD_LOGIC; 
  signal Counter_Module_Trigger_3_qbartemp_598 : STD_LOGIC; 
  signal s_notT_o_2_OBUF_0 : STD_LOGIC; 
  signal s_notT_o_3_OBUF_0 : STD_LOGIC; 
  signal CLK_BUFGP : STD_LOGIC; 
  signal GLOBAL_LOGIC1 : STD_LOGIC; 
  signal GLOBAL_LOGIC0 : STD_LOGIC; 
  signal CLK_Counter_module_temporal_cmp_eq0000_0 : STD_LOGIC; 
  signal cpd_in : STD_LOGIC; 
  signal s_and_1_o_OBUF_0 : STD_LOGIC; 
  signal Counter_Module_s_notAnd_magic_and0000 : STD_LOGIC; 
  signal MR_IBUF_0 : STD_LOGIC; 
  signal DATA_0_IBUF_0 : STD_LOGIC; 
  signal Counter_Module_Trigger_0_R_inv_0 : STD_LOGIC; 
  signal CLK_Counter_module_temporal_654 : STD_LOGIC; 
  signal CPU_IBUF_0 : STD_LOGIC; 
  signal cpu_in : STD_LOGIC; 
  signal DATA_3_IBUF_0 : STD_LOGIC; 
  signal Counter_Module_Trigger_3_S_inv_0 : STD_LOGIC; 
  signal Counter_Module_Trigger_1_S_inv_0 : STD_LOGIC; 
  signal Counter_Module_Trigger_1_R_inv_0 : STD_LOGIC; 
  signal N0 : STD_LOGIC; 
  signal DATA_1_IBUF_0 : STD_LOGIC; 
  signal Counter_Module_Trigger_0_S_inv_0 : STD_LOGIC; 
  signal Counter_Module_Trigger_3_R_inv_0 : STD_LOGIC; 
  signal DATA_2_IBUF_0 : STD_LOGIC; 
  signal Counter_Module_Trigger_2_R_inv_0 : STD_LOGIC; 
  signal Counter_Module_Trigger_2_S_inv_0 : STD_LOGIC; 
  signal notTCU_OUTMUX_1582 : STD_LOGIC; 
  signal DATA_2_IBUF_1585 : STD_LOGIC; 
  signal s_SET_o_3_OUTMUX_1589 : STD_LOGIC; 
  signal DATA_3_IBUF_1592 : STD_LOGIC; 
  signal notPL_IBUF_1595 : STD_LOGIC; 
  signal s_notRightR_o_0_OUTMUX_1599 : STD_LOGIC; 
  signal s_notRightR_o_1_OUTMUX_1603 : STD_LOGIC; 
  signal s_notRightR_o_2_OUTMUX_1607 : STD_LOGIC; 
  signal s_notAnd_magic_o_OUTMUX_1611 : STD_LOGIC; 
  signal s_notRightR_o_3_OUTMUX_1615 : STD_LOGIC; 
  signal MR_IBUF_1618 : STD_LOGIC; 
  signal s_and_0_o_OUTMUX_1622 : STD_LOGIC; 
  signal s_notMR_o_OUTMUX_1626 : STD_LOGIC; 
  signal s_and_1_o_OUTMUX_1630 : STD_LOGIC; 
  signal s_SET_o_1_OBUF_1318 : STD_LOGIC; 
  signal Counter_Module_Trigger_1_R_inv : STD_LOGIC; 
  signal s_notRightR_o_0_OBUF_1330 : STD_LOGIC; 
  signal Counter_Module_Trigger_0_S_inv : STD_LOGIC; 
  signal s_notCPD_o_OBUF_1341 : STD_LOGIC; 
  signal s_notT_o_0_OBUF_1340 : STD_LOGIC; 
  signal cpd_in_pack_1 : STD_LOGIC; 
  signal s_and_4_o_OBUF_1353 : STD_LOGIC; 
  signal Counter_Module_Trigger_0_qbartemp_BXMUXNOT : STD_LOGIC; 
  signal Counter_Module_Trigger_0_qbartemp_FFX_SET : STD_LOGIC; 
  signal Counter_Module_Trigger_0_qbartemp_FFX_RST : STD_LOGIC; 
  signal s_and_5_o_OBUF_1383 : STD_LOGIC; 
  signal notTCU_OBUF_1382 : STD_LOGIC; 
  signal Counter_Module_Trigger_3_qtemp_BXMUXNOT : STD_LOGIC; 
  signal Counter_Module_Trigger_3_qtemp_FFX_SET : STD_LOGIC; 
  signal Counter_Module_Trigger_3_qtemp_FFX_RST : STD_LOGIC; 
  signal Counter_Module_Trigger_1_qbartemp_BXMUXNOT : STD_LOGIC; 
  signal Counter_Module_Trigger_1_qbartemp_FFX_SET : STD_LOGIC; 
  signal Counter_Module_Trigger_1_qbartemp_FFX_RST : STD_LOGIC; 
  signal Counter_Module_Trigger_1_S_inv : STD_LOGIC; 
  signal s_notRightR_o_1_OBUF_1422 : STD_LOGIC; 
  signal s_SET_o_2_OBUF_1435 : STD_LOGIC; 
  signal Counter_Module_Trigger_2_R_inv : STD_LOGIC; 
  signal Counter_Module_Trigger_2_qbartemp_BXMUXNOT : STD_LOGIC; 
  signal Counter_Module_Trigger_2_qbartemp_FFX_SET : STD_LOGIC; 
  signal Counter_Module_Trigger_2_qbartemp_FFX_RST : STD_LOGIC; 
  signal Counter_Module_Trigger_0_qtemp_BXMUXNOT : STD_LOGIC; 
  signal Counter_Module_Trigger_0_qtemp_FFX_SET : STD_LOGIC; 
  signal Counter_Module_Trigger_0_qtemp_FFX_RST : STD_LOGIC; 
  signal Counter_Module_Trigger_2_S_inv : STD_LOGIC; 
  signal s_notRightR_o_2_OBUF_1476 : STD_LOGIC; 
  signal Counter_Module_Trigger_3_qbartemp_BXMUXNOT : STD_LOGIC; 
  signal Counter_Module_Trigger_3_qbartemp_FFX_SET : STD_LOGIC; 
  signal Counter_Module_Trigger_3_qbartemp_FFX_RST : STD_LOGIC; 
  signal Counter_Module_Trigger_3_R_inv : STD_LOGIC; 
  signal s_notRightR_o_3_OBUF_1503 : STD_LOGIC; 
  signal s_notCPU_o_OBUF_1516 : STD_LOGIC; 
  signal s_and_0_o_OBUF_1515 : STD_LOGIC; 
  signal s_notAnd_magic_o_OBUF_1529 : STD_LOGIC; 
  signal s_and_1_o_OBUF_1528 : STD_LOGIC; 
  signal s_and_2_o_OBUF_pack_1 : STD_LOGIC; 
  signal s_notT_o_2_OBUF_1541 : STD_LOGIC; 
  signal Counter_Module_Trigger_2_qtemp_BXMUXNOT : STD_LOGIC; 
  signal Counter_Module_Trigger_2_qtemp_FFX_SET : STD_LOGIC; 
  signal Counter_Module_Trigger_2_qtemp_FFX_RST : STD_LOGIC; 
  signal s_SET_o_0_OUTMUX_1561 : STD_LOGIC; 
  signal DATA_0_IBUF_1564 : STD_LOGIC; 
  signal CPU_IBUF_1567 : STD_LOGIC; 
  signal s_SET_o_1_OUTMUX_1571 : STD_LOGIC; 
  signal DATA_1_IBUF_1574 : STD_LOGIC; 
  signal s_SET_o_2_OUTMUX_1578 : STD_LOGIC; 
  signal CLK_Counter_module_counter_22_FROM : STD_LOGIC; 
  signal CLK_Counter_module_counter_22_CYMUXG : STD_LOGIC; 
  signal CLK_Counter_module_counter_22_LOGIC_ZERO_1113 : STD_LOGIC; 
  signal CLK_Counter_module_counter_22_GROM : STD_LOGIC; 
  signal CLK_Counter_module_Mcount_counter_cy_22_Q_1111 : STD_LOGIC; 
  signal CLK_Counter_module_counter_22_CYINIT_1110 : STD_LOGIC; 
  signal CLK_Counter_module_counter_24_LOGIC_ZERO_1154 : STD_LOGIC; 
  signal CLK_Counter_module_counter_24_FROM : STD_LOGIC; 
  signal CLK_Counter_module_counter_25_rt_1141 : STD_LOGIC; 
  signal CLK_Counter_module_Mcount_counter_cy_24_Q_1140 : STD_LOGIC; 
  signal CLK_Counter_module_counter_24_CYINIT_1139 : STD_LOGIC; 
  signal CLK_Counter_module_temporal_cmp_eq0000_wg_cy_1_CYMUXG : STD_LOGIC; 
  signal CLK_Counter_module_temporal_cmp_eq0000_wg_cy_0_Q_1165 : STD_LOGIC; 
  signal CLK_Counter_module_temporal_cmp_eq0000_wg_cy_1_LOGIC_ZERO_1164 : STD_LOGIC; 
  signal CLK_Counter_module_temporal_cmp_eq0000_wg_cy_1_LOGIC_ONE_1162 : STD_LOGIC; 
  signal CLK_Counter_module_temporal_cmp_eq0000_wg_cy_3_CYMUXG : STD_LOGIC; 
  signal CLK_Counter_module_temporal_cmp_eq0000_wg_cy_2_Q_1183 : STD_LOGIC; 
  signal CLK_Counter_module_temporal_cmp_eq0000_wg_cy_3_LOGIC_ZERO_1182 : STD_LOGIC; 
  signal CLK_Counter_module_temporal_cmp_eq0000_wg_cy_3_CYINIT_1181 : STD_LOGIC; 
  signal CLK_Counter_module_temporal_cmp_eq0000_wg_cy_5_CYMUXG : STD_LOGIC; 
  signal CLK_Counter_module_temporal_cmp_eq0000_wg_cy_4_Q_1199 : STD_LOGIC; 
  signal CLK_Counter_module_temporal_cmp_eq0000_wg_cy_5_LOGIC_ZERO_1198 : STD_LOGIC; 
  signal CLK_Counter_module_temporal_cmp_eq0000_wg_cy_5_CYINIT_1197 : STD_LOGIC; 
  signal CLK_Counter_module_temporal_cmp_eq0000_LOGIC_ZERO_1212 : STD_LOGIC; 
  signal CLK_Counter_module_temporal_cmp_eq0000 : STD_LOGIC; 
  signal CLK_Counter_module_temporal_cmp_eq0000_CYINIT_1209 : STD_LOGIC; 
  signal Counter_Module_s_notAnd_magic_and0000_pack_1 : STD_LOGIC; 
  signal s_notT_o_1_OBUF_1222 : STD_LOGIC; 
  signal s_SET_o_0_OBUF_1234 : STD_LOGIC; 
  signal Counter_Module_Trigger_0_R_inv : STD_LOGIC; 
  signal CLK_Counter_module_temporal_BYMUXNOT : STD_LOGIC; 
  signal cpu_in_pack_1 : STD_LOGIC; 
  signal s_and_6_o_OBUF_1254 : STD_LOGIC; 
  signal s_SET_o_3_OBUF_1267 : STD_LOGIC; 
  signal Counter_Module_Trigger_3_S_inv : STD_LOGIC; 
  signal s_and_3_o_OBUF_pack_1 : STD_LOGIC; 
  signal s_notT_o_3_OBUF_1280 : STD_LOGIC; 
  signal Counter_Module_Trigger_1_qtemp_BXMUXNOT : STD_LOGIC; 
  signal Counter_Module_Trigger_1_qtemp_FFX_SET : STD_LOGIC; 
  signal Counter_Module_Trigger_1_qtemp_FFX_RST : STD_LOGIC; 
  signal N0_pack_1 : STD_LOGIC; 
  signal notTCD_OBUF_1306 : STD_LOGIC; 
  signal CLK_Counter_module_counter_6_FROM : STD_LOGIC; 
  signal CLK_Counter_module_counter_6_CYMUXG : STD_LOGIC; 
  signal CLK_Counter_module_counter_6_LOGIC_ZERO_873 : STD_LOGIC; 
  signal CLK_Counter_module_counter_6_GROM : STD_LOGIC; 
  signal CLK_Counter_module_Mcount_counter_cy_6_Q_871 : STD_LOGIC; 
  signal CLK_Counter_module_counter_6_CYINIT_870 : STD_LOGIC; 
  signal CLK_Counter_module_counter_8_FROM : STD_LOGIC; 
  signal CLK_Counter_module_counter_8_CYMUXG : STD_LOGIC; 
  signal CLK_Counter_module_counter_8_LOGIC_ZERO_903 : STD_LOGIC; 
  signal CLK_Counter_module_counter_8_GROM : STD_LOGIC; 
  signal CLK_Counter_module_Mcount_counter_cy_8_Q_901 : STD_LOGIC; 
  signal CLK_Counter_module_counter_8_CYINIT_900 : STD_LOGIC; 
  signal CLK_Counter_module_counter_10_FROM : STD_LOGIC; 
  signal CLK_Counter_module_counter_10_CYMUXG : STD_LOGIC; 
  signal CLK_Counter_module_counter_10_LOGIC_ZERO_933 : STD_LOGIC; 
  signal CLK_Counter_module_counter_10_GROM : STD_LOGIC; 
  signal CLK_Counter_module_Mcount_counter_cy_10_Q_931 : STD_LOGIC; 
  signal CLK_Counter_module_counter_10_CYINIT_930 : STD_LOGIC; 
  signal CLK_Counter_module_counter_12_FROM : STD_LOGIC; 
  signal CLK_Counter_module_counter_12_CYMUXG : STD_LOGIC; 
  signal CLK_Counter_module_counter_12_LOGIC_ZERO_963 : STD_LOGIC; 
  signal CLK_Counter_module_counter_12_GROM : STD_LOGIC; 
  signal CLK_Counter_module_Mcount_counter_cy_12_Q_961 : STD_LOGIC; 
  signal CLK_Counter_module_counter_12_CYINIT_960 : STD_LOGIC; 
  signal CLK_Counter_module_counter_14_FROM : STD_LOGIC; 
  signal CLK_Counter_module_counter_14_CYMUXG : STD_LOGIC; 
  signal CLK_Counter_module_counter_14_LOGIC_ZERO_993 : STD_LOGIC; 
  signal CLK_Counter_module_counter_14_GROM : STD_LOGIC; 
  signal CLK_Counter_module_Mcount_counter_cy_14_Q_991 : STD_LOGIC; 
  signal CLK_Counter_module_counter_14_CYINIT_990 : STD_LOGIC; 
  signal CLK_Counter_module_counter_16_FROM : STD_LOGIC; 
  signal CLK_Counter_module_counter_16_CYMUXG : STD_LOGIC; 
  signal CLK_Counter_module_counter_16_LOGIC_ZERO_1023 : STD_LOGIC; 
  signal CLK_Counter_module_counter_16_GROM : STD_LOGIC; 
  signal CLK_Counter_module_Mcount_counter_cy_16_Q_1021 : STD_LOGIC; 
  signal CLK_Counter_module_counter_16_CYINIT_1020 : STD_LOGIC; 
  signal CLK_Counter_module_counter_18_FROM : STD_LOGIC; 
  signal CLK_Counter_module_counter_18_CYMUXG : STD_LOGIC; 
  signal CLK_Counter_module_counter_18_LOGIC_ZERO_1053 : STD_LOGIC; 
  signal CLK_Counter_module_counter_18_GROM : STD_LOGIC; 
  signal CLK_Counter_module_Mcount_counter_cy_18_Q_1051 : STD_LOGIC; 
  signal CLK_Counter_module_counter_18_CYINIT_1050 : STD_LOGIC; 
  signal CLK_Counter_module_counter_20_FROM : STD_LOGIC; 
  signal CLK_Counter_module_counter_20_CYMUXG : STD_LOGIC; 
  signal CLK_Counter_module_counter_20_LOGIC_ZERO_1083 : STD_LOGIC; 
  signal CLK_Counter_module_counter_20_GROM : STD_LOGIC; 
  signal CLK_Counter_module_Mcount_counter_cy_20_Q_1081 : STD_LOGIC; 
  signal CLK_Counter_module_counter_20_CYINIT_1080 : STD_LOGIC; 
  signal s_PL_o_OUTMUX_721 : STD_LOGIC; 
  signal s_notOUTPUT_o_0_OUTMUX_725 : STD_LOGIC; 
  signal s_notCPD_o_OUTMUX_729 : STD_LOGIC; 
  signal s_notOUTPUT_o_1_OUTMUX_733 : STD_LOGIC; 
  signal s_notT_o_0_OUTMUX_739 : STD_LOGIC; 
  signal s_notOUTPUT_o_2_OUTMUX_743 : STD_LOGIC; 
  signal CPD_IBUF_746 : STD_LOGIC; 
  signal s_notT_o_1_OUTMUX_750 : STD_LOGIC; 
  signal s_notOUTPUT_o_3_OUTMUX_754 : STD_LOGIC; 
  signal s_notT_o_2_OUTMUX_758 : STD_LOGIC; 
  signal notTCD_OUTMUX_762 : STD_LOGIC; 
  signal s_notT_o_3_OUTMUX_766 : STD_LOGIC; 
  signal CLK_Counter_module_counter_0_CYMUXG : STD_LOGIC; 
  signal CLK_Counter_module_counter_0_GROM : STD_LOGIC; 
  signal CLK_Counter_module_Mcount_counter_cy_0_Q_785 : STD_LOGIC; 
  signal CLK_Counter_module_counter_0_LOGIC_ZERO_783 : STD_LOGIC; 
  signal CLK_Counter_module_counter_2_FROM : STD_LOGIC; 
  signal CLK_Counter_module_counter_2_CYMUXG : STD_LOGIC; 
  signal CLK_Counter_module_counter_2_LOGIC_ZERO_813 : STD_LOGIC; 
  signal CLK_Counter_module_counter_2_GROM : STD_LOGIC; 
  signal CLK_Counter_module_Mcount_counter_cy_2_Q_811 : STD_LOGIC; 
  signal CLK_Counter_module_counter_2_CYINIT_810 : STD_LOGIC; 
  signal CLK_Counter_module_counter_4_FROM : STD_LOGIC; 
  signal CLK_Counter_module_counter_4_CYMUXG : STD_LOGIC; 
  signal CLK_Counter_module_counter_4_LOGIC_ZERO_843 : STD_LOGIC; 
  signal CLK_Counter_module_counter_4_GROM : STD_LOGIC; 
  signal CLK_Counter_module_Mcount_counter_cy_4_Q_841 : STD_LOGIC; 
  signal CLK_Counter_module_counter_4_CYINIT_840 : STD_LOGIC; 
  signal s_and_2_o_OUTMUX_681 : STD_LOGIC; 
  signal s_notCPU_o_OUTMUX_685 : STD_LOGIC; 
  signal s_and_3_o_OUTMUX_689 : STD_LOGIC; 
  signal OUTPUT_0_OUTMUX_693 : STD_LOGIC; 
  signal s_and_4_o_OUTMUX_697 : STD_LOGIC; 
  signal OUTPUT_1_OUTMUX_701 : STD_LOGIC; 
  signal OUTPUT_2_OUTMUX_705 : STD_LOGIC; 
  signal s_and_5_o_OUTMUX_709 : STD_LOGIC; 
  signal OUTPUT_3_OUTMUX_713 : STD_LOGIC; 
  signal s_and_6_o_OUTMUX_717 : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal CLK_Counter_module_counter : STD_LOGIC_VECTOR ( 25 downto 0 ); 
  signal Result : STD_LOGIC_VECTOR ( 25 downto 1 ); 
  signal CLK_Counter_module_temporal_cmp_eq0000_wg_lut : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal CLK_Counter_module_Mcount_counter_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
begin
  notTCU_OBUF : X_OBUF
    generic map(
      LOC => "PAD242"
    )
    port map (
      I => notTCU_OUTMUX_1582,
      O => notTCU
    );
  notTCU_OUTMUX : X_BUF
    generic map(
      LOC => "PAD242"
    )
    port map (
      I => notTCU_OBUF_1382,
      O => notTCU_OUTMUX_1582
    );
  DATA_2_IMUX : X_BUF
    generic map(
      LOC => "PAD83"
    )
    port map (
      I => DATA_2_IBUF_1585,
      O => DATA_2_IBUF_0
    );
  DATA_2_IBUF : X_BUF
    generic map(
      LOC => "PAD83"
    )
    port map (
      I => DATA(2),
      O => DATA_2_IBUF_1585
    );
  s_SET_o_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD24"
    )
    port map (
      I => s_SET_o_3_OUTMUX_1589,
      O => s_SET_o(3)
    );
  s_SET_o_3_OUTMUX : X_BUF
    generic map(
      LOC => "PAD24"
    )
    port map (
      I => s_SET_o_3_OBUF_1267,
      O => s_SET_o_3_OUTMUX_1589
    );
  DATA_3_IMUX : X_BUF
    generic map(
      LOC => "PAD84"
    )
    port map (
      I => DATA_3_IBUF_1592,
      O => DATA_3_IBUF_0
    );
  DATA_3_IBUF : X_BUF
    generic map(
      LOC => "PAD84"
    )
    port map (
      I => DATA(3),
      O => DATA_3_IBUF_1592
    );
  notPL_IMUX : X_BUF
    generic map(
      LOC => "PAD216"
    )
    port map (
      I => notPL_IBUF_1595,
      O => notPL_IBUF_0
    );
  notPL_IBUF : X_BUF
    generic map(
      LOC => "PAD216"
    )
    port map (
      I => notPL,
      O => notPL_IBUF_1595
    );
  s_notRightR_o_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD320"
    )
    port map (
      I => s_notRightR_o_0_OUTMUX_1599,
      O => s_notRightR_o(0)
    );
  s_notRightR_o_0_OUTMUX : X_BUF
    generic map(
      LOC => "PAD320"
    )
    port map (
      I => s_notRightR_o_0_OBUF_1330,
      O => s_notRightR_o_0_OUTMUX_1599
    );
  s_notRightR_o_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD6"
    )
    port map (
      I => s_notRightR_o_1_OUTMUX_1603,
      O => s_notRightR_o(1)
    );
  s_notRightR_o_1_OUTMUX : X_BUF
    generic map(
      LOC => "PAD6"
    )
    port map (
      I => s_notRightR_o_1_OBUF_1422,
      O => s_notRightR_o_1_OUTMUX_1603
    );
  s_notRightR_o_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD7"
    )
    port map (
      I => s_notRightR_o_2_OUTMUX_1607,
      O => s_notRightR_o(2)
    );
  s_notRightR_o_2_OUTMUX : X_BUF
    generic map(
      LOC => "PAD7"
    )
    port map (
      I => s_notRightR_o_2_OBUF_1476,
      O => s_notRightR_o_2_OUTMUX_1607
    );
  s_notAnd_magic_o_OBUF : X_OBUF
    generic map(
      LOC => "PAD52"
    )
    port map (
      I => s_notAnd_magic_o_OUTMUX_1611,
      O => s_notAnd_magic_o
    );
  s_notAnd_magic_o_OUTMUX : X_BUF
    generic map(
      LOC => "PAD52"
    )
    port map (
      I => s_notAnd_magic_o_OBUF_1529,
      O => s_notAnd_magic_o_OUTMUX_1611
    );
  s_notRightR_o_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD11"
    )
    port map (
      I => s_notRightR_o_3_OUTMUX_1615,
      O => s_notRightR_o(3)
    );
  s_notRightR_o_3_OUTMUX : X_BUF
    generic map(
      LOC => "PAD11"
    )
    port map (
      I => s_notRightR_o_3_OBUF_1503,
      O => s_notRightR_o_3_OUTMUX_1615
    );
  MR_IMUX : X_BUF
    generic map(
      LOC => "PAD215"
    )
    port map (
      I => MR_IBUF_1618,
      O => MR_IBUF_0
    );
  MR_IBUF : X_BUF
    generic map(
      LOC => "PAD215"
    )
    port map (
      I => MR,
      O => MR_IBUF_1618
    );
  s_and_0_o_OBUF : X_OBUF
    generic map(
      LOC => "PAD51"
    )
    port map (
      I => s_and_0_o_OUTMUX_1622,
      O => s_and_0_o
    );
  s_and_0_o_OUTMUX : X_BUF
    generic map(
      LOC => "PAD51"
    )
    port map (
      I => s_and_0_o_OBUF_1515,
      O => s_and_0_o_OUTMUX_1622
    );
  s_notMR_o_OBUF : X_OBUF
    generic map(
      LOC => "PAD57"
    )
    port map (
      I => s_notMR_o_OUTMUX_1626,
      O => s_notMR_o
    );
  s_notMR_o_OUTMUX : X_INV
    generic map(
      LOC => "PAD57"
    )
    port map (
      I => MR_IBUF_0,
      O => s_notMR_o_OUTMUX_1626
    );
  s_and_1_o_OBUF : X_OBUF
    generic map(
      LOC => "PAD54"
    )
    port map (
      I => s_and_1_o_OUTMUX_1630,
      O => s_and_1_o
    );
  s_and_1_o_OUTMUX : X_BUF
    generic map(
      LOC => "PAD54"
    )
    port map (
      I => s_and_1_o_OBUF_0,
      O => s_and_1_o_OUTMUX_1630
    );
  Counter_Module_s_SET_1_not00001 : X_LUT4
    generic map(
      INIT => X"FBFB",
      LOC => "CLB_R9C14.S1"
    )
    port map (
      ADR0 => MR_IBUF_0,
      ADR1 => DATA_1_IBUF_0,
      ADR2 => notPL_IBUF_0,
      ADR3 => VCC,
      O => s_SET_o_1_OBUF_1318
    );
  Counter_Module_Trigger_1_R_inv1 : X_LUT4
    generic map(
      INIT => X"F1F1",
      LOC => "CLB_R9C14.S1"
    )
    port map (
      ADR0 => notPL_IBUF_0,
      ADR1 => DATA_1_IBUF_0,
      ADR2 => MR_IBUF_0,
      ADR3 => VCC,
      O => Counter_Module_Trigger_1_R_inv
    );
  s_SET_o_1_OBUF_YUSED : X_BUF
    generic map(
      LOC => "CLB_R9C14.S1"
    )
    port map (
      I => Counter_Module_Trigger_1_R_inv,
      O => Counter_Module_Trigger_1_R_inv_0
    );
  Counter_Module_s_notRightR_0_not00001 : X_LUT4
    generic map(
      INIT => X"AEAE",
      LOC => "CLB_R11C16.S0"
    )
    port map (
      ADR0 => notPL_IBUF_0,
      ADR1 => DATA_0_IBUF_0,
      ADR2 => MR_IBUF_0,
      ADR3 => VCC,
      O => s_notRightR_o_0_OBUF_1330
    );
  Counter_Module_Trigger_0_S_inv1 : X_LUT4
    generic map(
      INIT => X"0404",
      LOC => "CLB_R11C16.S0"
    )
    port map (
      ADR0 => notPL_IBUF_0,
      ADR1 => DATA_0_IBUF_0,
      ADR2 => MR_IBUF_0,
      ADR3 => VCC,
      O => Counter_Module_Trigger_0_S_inv
    );
  s_notRightR_o_0_OBUF_YUSED : X_BUF
    generic map(
      LOC => "CLB_R11C16.S0"
    )
    port map (
      I => Counter_Module_Trigger_0_S_inv,
      O => Counter_Module_Trigger_0_S_inv_0
    );
  Counter_Module_s_notCPD1 : X_LUT4
    generic map(
      INIT => X"AA00",
      LOC => "CLB_R8C17.S1"
    )
    port map (
      ADR0 => CPD_IBUF_0,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => CLK_Counter_module_temporal_654,
      O => s_notCPD_o_OBUF_1341
    );
  Counter_Module_s_notT_0_not00001 : X_LUT4
    generic map(
      INIT => X"0F5F",
      LOC => "CLB_R8C17.S1"
    )
    port map (
      ADR0 => CPD_IBUF_0,
      ADR1 => VCC,
      ADR2 => CLK_Counter_module_temporal_654,
      ADR3 => CPU_IBUF_0,
      O => s_notT_o_0_OBUF_1340
    );
  s_notCPD_o_OBUF_YUSED : X_BUF
    generic map(
      LOC => "CLB_R8C17.S1"
    )
    port map (
      I => s_notT_o_0_OBUF_1340,
      O => s_notT_o_0_OBUF_0
    );
  cpd_in1 : X_LUT4
    generic map(
      INIT => X"5F5F",
      LOC => "CLB_R8C19.S1"
    )
    port map (
      ADR0 => CPD_IBUF_0,
      ADR1 => VCC,
      ADR2 => CLK_Counter_module_temporal_654,
      ADR3 => VCC,
      O => cpd_in_pack_1
    );
  Counter_Module_s_and_41 : X_LUT4
    generic map(
      INIT => X"0080",
      LOC => "CLB_R8C19.S1"
    )
    port map (
      ADR0 => Counter_Module_Trigger_0_qbartemp_590,
      ADR1 => Counter_Module_Trigger_2_qbartemp_595,
      ADR2 => Counter_Module_Trigger_1_qbartemp_592,
      ADR3 => cpd_in,
      O => s_and_4_o_OBUF_1353
    );
  cpd_in_XUSED : X_BUF
    generic map(
      LOC => "CLB_R8C19.S1"
    )
    port map (
      I => cpd_in_pack_1,
      O => cpd_in
    );
  cpd_in_YUSED : X_BUF
    generic map(
      LOC => "CLB_R8C19.S1"
    )
    port map (
      I => s_and_4_o_OBUF_1353,
      O => s_and_4_o_OBUF_0
    );
  Counter_Module_Trigger_0_qbartemp_BXMUX : X_INV
    generic map(
      LOC => "CLB_R10C17.S1"
    )
    port map (
      I => Counter_Module_Trigger_0_qbartemp_590,
      O => Counter_Module_Trigger_0_qbartemp_BXMUXNOT
    );
  Counter_Module_Trigger_0_qbartemp : X_FF
    generic map(
      LOC => "CLB_R10C17.S1",
      INIT => '0'
    )
    port map (
      I => Counter_Module_Trigger_0_qbartemp_BXMUXNOT,
      CE => s_notT_o_0_OBUF_0,
      CLK => s_notT_o_0_OBUF_0,
      SET => Counter_Module_Trigger_0_qbartemp_FFX_SET,
      RST => Counter_Module_Trigger_0_qbartemp_FFX_RST,
      O => Counter_Module_Trigger_0_qbartemp_590
    );
  Counter_Module_Trigger_0_qbartemp_FFX_SETOR : X_BUF
    generic map(
      LOC => "CLB_R10C17.S1"
    )
    port map (
      I => Counter_Module_Trigger_0_R_inv_0,
      O => Counter_Module_Trigger_0_qbartemp_FFX_SET
    );
  Counter_Module_Trigger_0_qbartemp_FFX_RSTOR : X_BUF
    generic map(
      LOC => "CLB_R10C17.S1"
    )
    port map (
      I => Counter_Module_Trigger_0_S_inv_0,
      O => Counter_Module_Trigger_0_qbartemp_FFX_RST
    );
  Counter_Module_s_and_51 : X_LUT4
    generic map(
      INIT => X"8000",
      LOC => "CLB_R8C21.S1"
    )
    port map (
      ADR0 => CPU_IBUF_0,
      ADR1 => Counter_Module_Trigger_0_qtemp_582,
      ADR2 => CLK_Counter_module_temporal_654,
      ADR3 => Counter_Module_Trigger_3_qtemp_587,
      O => s_and_5_o_OBUF_1383
    );
  Counter_Module_notTCU1 : X_LUT4
    generic map(
      INIT => X"7FFF",
      LOC => "CLB_R8C21.S1"
    )
    port map (
      ADR0 => CPU_IBUF_0,
      ADR1 => Counter_Module_Trigger_3_qtemp_587,
      ADR2 => CLK_Counter_module_temporal_654,
      ADR3 => Counter_Module_Trigger_0_qtemp_582,
      O => notTCU_OBUF_1382
    );
  s_and_5_o_OBUF_XUSED : X_BUF
    generic map(
      LOC => "CLB_R8C21.S1"
    )
    port map (
      I => s_and_5_o_OBUF_1383,
      O => s_and_5_o_OBUF_0
    );
  Counter_Module_Trigger_3_qtemp_BXMUX : X_INV
    generic map(
      LOC => "CLB_R7C21.S0"
    )
    port map (
      I => Counter_Module_Trigger_3_qtemp_587,
      O => Counter_Module_Trigger_3_qtemp_BXMUXNOT
    );
  Counter_Module_Trigger_3_qtemp : X_FF
    generic map(
      LOC => "CLB_R7C21.S0",
      INIT => '0'
    )
    port map (
      I => Counter_Module_Trigger_3_qtemp_BXMUXNOT,
      CE => s_notT_o_3_OBUF_0,
      CLK => s_notT_o_3_OBUF_0,
      SET => Counter_Module_Trigger_3_qtemp_FFX_SET,
      RST => Counter_Module_Trigger_3_qtemp_FFX_RST,
      O => Counter_Module_Trigger_3_qtemp_587
    );
  Counter_Module_Trigger_3_qtemp_FFX_SETOR : X_BUF
    generic map(
      LOC => "CLB_R7C21.S0"
    )
    port map (
      I => Counter_Module_Trigger_3_S_inv_0,
      O => Counter_Module_Trigger_3_qtemp_FFX_SET
    );
  Counter_Module_Trigger_3_qtemp_FFX_RSTOR : X_BUF
    generic map(
      LOC => "CLB_R7C21.S0"
    )
    port map (
      I => Counter_Module_Trigger_3_R_inv_0,
      O => Counter_Module_Trigger_3_qtemp_FFX_RST
    );
  Counter_Module_Trigger_1_qbartemp_BXMUX : X_INV
    generic map(
      LOC => "CLB_R9C17.S1"
    )
    port map (
      I => Counter_Module_Trigger_1_qbartemp_592,
      O => Counter_Module_Trigger_1_qbartemp_BXMUXNOT
    );
  Counter_Module_Trigger_1_qbartemp : X_FF
    generic map(
      LOC => "CLB_R9C17.S1",
      INIT => '0'
    )
    port map (
      I => Counter_Module_Trigger_1_qbartemp_BXMUXNOT,
      CE => s_notT_o_1_OBUF_0,
      CLK => s_notT_o_1_OBUF_0,
      SET => Counter_Module_Trigger_1_qbartemp_FFX_SET,
      RST => Counter_Module_Trigger_1_qbartemp_FFX_RST,
      O => Counter_Module_Trigger_1_qbartemp_592
    );
  Counter_Module_Trigger_1_qbartemp_FFX_SETOR : X_BUF
    generic map(
      LOC => "CLB_R9C17.S1"
    )
    port map (
      I => Counter_Module_Trigger_1_R_inv_0,
      O => Counter_Module_Trigger_1_qbartemp_FFX_SET
    );
  Counter_Module_Trigger_1_qbartemp_FFX_RSTOR : X_BUF
    generic map(
      LOC => "CLB_R9C17.S1"
    )
    port map (
      I => Counter_Module_Trigger_1_S_inv_0,
      O => Counter_Module_Trigger_1_qbartemp_FFX_RST
    );
  Counter_Module_Trigger_1_S_inv1 : X_LUT4
    generic map(
      INIT => X"0050",
      LOC => "CLB_R9C14.S0"
    )
    port map (
      ADR0 => MR_IBUF_0,
      ADR1 => VCC,
      ADR2 => DATA_1_IBUF_0,
      ADR3 => notPL_IBUF_0,
      O => Counter_Module_Trigger_1_S_inv
    );
  Counter_Module_s_notRightR_1_not00001 : X_LUT4
    generic map(
      INIT => X"DCDC",
      LOC => "CLB_R9C14.S0"
    )
    port map (
      ADR0 => MR_IBUF_0,
      ADR1 => notPL_IBUF_0,
      ADR2 => DATA_1_IBUF_0,
      ADR3 => VCC,
      O => s_notRightR_o_1_OBUF_1422
    );
  Counter_Module_Trigger_1_S_inv_XUSED : X_BUF
    generic map(
      LOC => "CLB_R9C14.S0"
    )
    port map (
      I => Counter_Module_Trigger_1_S_inv,
      O => Counter_Module_Trigger_1_S_inv_0
    );
  Counter_Module_s_SET_2_not00001 : X_LUT4
    generic map(
      INIT => X"FFF5",
      LOC => "CLB_R1C18.S0"
    )
    port map (
      ADR0 => DATA_2_IBUF_0,
      ADR1 => VCC,
      ADR2 => notPL_IBUF_0,
      ADR3 => MR_IBUF_0,
      O => s_SET_o_2_OBUF_1435
    );
  Counter_Module_Trigger_2_R_inv1 : X_LUT4
    generic map(
      INIT => X"FF05",
      LOC => "CLB_R1C18.S0"
    )
    port map (
      ADR0 => DATA_2_IBUF_0,
      ADR1 => VCC,
      ADR2 => notPL_IBUF_0,
      ADR3 => MR_IBUF_0,
      O => Counter_Module_Trigger_2_R_inv
    );
  s_SET_o_2_OBUF_YUSED : X_BUF
    generic map(
      LOC => "CLB_R1C18.S0"
    )
    port map (
      I => Counter_Module_Trigger_2_R_inv,
      O => Counter_Module_Trigger_2_R_inv_0
    );
  Counter_Module_Trigger_2_qbartemp_BXMUX : X_INV
    generic map(
      LOC => "CLB_R8C18.S1"
    )
    port map (
      I => Counter_Module_Trigger_2_qbartemp_595,
      O => Counter_Module_Trigger_2_qbartemp_BXMUXNOT
    );
  Counter_Module_Trigger_2_qbartemp : X_FF
    generic map(
      LOC => "CLB_R8C18.S1",
      INIT => '0'
    )
    port map (
      I => Counter_Module_Trigger_2_qbartemp_BXMUXNOT,
      CE => s_notT_o_2_OBUF_0,
      CLK => s_notT_o_2_OBUF_0,
      SET => Counter_Module_Trigger_2_qbartemp_FFX_SET,
      RST => Counter_Module_Trigger_2_qbartemp_FFX_RST,
      O => Counter_Module_Trigger_2_qbartemp_595
    );
  Counter_Module_Trigger_2_qbartemp_FFX_SETOR : X_BUF
    generic map(
      LOC => "CLB_R8C18.S1"
    )
    port map (
      I => Counter_Module_Trigger_2_R_inv_0,
      O => Counter_Module_Trigger_2_qbartemp_FFX_SET
    );
  Counter_Module_Trigger_2_qbartemp_FFX_RSTOR : X_BUF
    generic map(
      LOC => "CLB_R8C18.S1"
    )
    port map (
      I => Counter_Module_Trigger_2_S_inv_0,
      O => Counter_Module_Trigger_2_qbartemp_FFX_RST
    );
  Counter_Module_Trigger_0_qtemp_BXMUX : X_INV
    generic map(
      LOC => "CLB_R11C17.S1"
    )
    port map (
      I => Counter_Module_Trigger_0_qtemp_582,
      O => Counter_Module_Trigger_0_qtemp_BXMUXNOT
    );
  Counter_Module_Trigger_0_qtemp : X_FF
    generic map(
      LOC => "CLB_R11C17.S1",
      INIT => '0'
    )
    port map (
      I => Counter_Module_Trigger_0_qtemp_BXMUXNOT,
      CE => s_notT_o_0_OBUF_0,
      CLK => s_notT_o_0_OBUF_0,
      SET => Counter_Module_Trigger_0_qtemp_FFX_SET,
      RST => Counter_Module_Trigger_0_qtemp_FFX_RST,
      O => Counter_Module_Trigger_0_qtemp_582
    );
  Counter_Module_Trigger_0_qtemp_FFX_SETOR : X_BUF
    generic map(
      LOC => "CLB_R11C17.S1"
    )
    port map (
      I => Counter_Module_Trigger_0_S_inv_0,
      O => Counter_Module_Trigger_0_qtemp_FFX_SET
    );
  Counter_Module_Trigger_0_qtemp_FFX_RSTOR : X_BUF
    generic map(
      LOC => "CLB_R11C17.S1"
    )
    port map (
      I => Counter_Module_Trigger_0_R_inv_0,
      O => Counter_Module_Trigger_0_qtemp_FFX_RST
    );
  Counter_Module_Trigger_2_S_inv1 : X_LUT4
    generic map(
      INIT => X"1100",
      LOC => "CLB_R1C18.S1"
    )
    port map (
      ADR0 => MR_IBUF_0,
      ADR1 => notPL_IBUF_0,
      ADR2 => VCC,
      ADR3 => DATA_2_IBUF_0,
      O => Counter_Module_Trigger_2_S_inv
    );
  Counter_Module_s_notRightR_2_not00001 : X_LUT4
    generic map(
      INIT => X"DDCC",
      LOC => "CLB_R1C18.S1"
    )
    port map (
      ADR0 => MR_IBUF_0,
      ADR1 => notPL_IBUF_0,
      ADR2 => VCC,
      ADR3 => DATA_2_IBUF_0,
      O => s_notRightR_o_2_OBUF_1476
    );
  Counter_Module_Trigger_2_S_inv_XUSED : X_BUF
    generic map(
      LOC => "CLB_R1C18.S1"
    )
    port map (
      I => Counter_Module_Trigger_2_S_inv,
      O => Counter_Module_Trigger_2_S_inv_0
    );
  Counter_Module_Trigger_3_qbartemp_BXMUX : X_INV
    generic map(
      LOC => "CLB_R7C21.S1"
    )
    port map (
      I => Counter_Module_Trigger_3_qbartemp_598,
      O => Counter_Module_Trigger_3_qbartemp_BXMUXNOT
    );
  Counter_Module_Trigger_3_qbartemp : X_FF
    generic map(
      LOC => "CLB_R7C21.S1",
      INIT => '0'
    )
    port map (
      I => Counter_Module_Trigger_3_qbartemp_BXMUXNOT,
      CE => s_notT_o_3_OBUF_0,
      CLK => s_notT_o_3_OBUF_0,
      SET => Counter_Module_Trigger_3_qbartemp_FFX_SET,
      RST => Counter_Module_Trigger_3_qbartemp_FFX_RST,
      O => Counter_Module_Trigger_3_qbartemp_598
    );
  Counter_Module_Trigger_3_qbartemp_FFX_SETOR : X_BUF
    generic map(
      LOC => "CLB_R7C21.S1"
    )
    port map (
      I => Counter_Module_Trigger_3_R_inv_0,
      O => Counter_Module_Trigger_3_qbartemp_FFX_SET
    );
  Counter_Module_Trigger_3_qbartemp_FFX_RSTOR : X_BUF
    generic map(
      LOC => "CLB_R7C21.S1"
    )
    port map (
      I => Counter_Module_Trigger_3_S_inv_0,
      O => Counter_Module_Trigger_3_qbartemp_FFX_RST
    );
  Counter_Module_Trigger_3_R_inv1 : X_LUT4
    generic map(
      INIT => X"FF05",
      LOC => "CLB_R5C21.S0"
    )
    port map (
      ADR0 => notPL_IBUF_0,
      ADR1 => VCC,
      ADR2 => DATA_3_IBUF_0,
      ADR3 => MR_IBUF_0,
      O => Counter_Module_Trigger_3_R_inv
    );
  Counter_Module_s_notRightR_3_not00001 : X_LUT4
    generic map(
      INIT => X"FF44",
      LOC => "CLB_R5C21.S0"
    )
    port map (
      ADR0 => MR_IBUF_0,
      ADR1 => DATA_3_IBUF_0,
      ADR2 => VCC,
      ADR3 => notPL_IBUF_0,
      O => s_notRightR_o_3_OBUF_1503
    );
  Counter_Module_Trigger_3_R_inv_XUSED : X_BUF
    generic map(
      LOC => "CLB_R5C21.S0"
    )
    port map (
      I => Counter_Module_Trigger_3_R_inv,
      O => Counter_Module_Trigger_3_R_inv_0
    );
  Counter_Module_s_notCPU1 : X_LUT4
    generic map(
      INIT => X"8888",
      LOC => "CLB_R8C19.S0"
    )
    port map (
      ADR0 => CPU_IBUF_0,
      ADR1 => CLK_Counter_module_temporal_654,
      ADR2 => VCC,
      ADR3 => VCC,
      O => s_notCPU_o_OBUF_1516
    );
  Counter_Module_s_and_01 : X_LUT4
    generic map(
      INIT => X"4000",
      LOC => "CLB_R8C19.S0"
    )
    port map (
      ADR0 => Counter_Module_s_notAnd_magic_and0000,
      ADR1 => Counter_Module_Trigger_0_qbartemp_590,
      ADR2 => CLK_Counter_module_temporal_654,
      ADR3 => CPD_IBUF_0,
      O => s_and_0_o_OBUF_1515
    );
  Counter_Module_s_notAnd_magic1 : X_LUT4
    generic map(
      INIT => X"77FF",
      LOC => "CLB_R8C20.S1"
    )
    port map (
      ADR0 => Counter_Module_Trigger_3_qbartemp_598,
      ADR1 => Counter_Module_Trigger_2_qbartemp_595,
      ADR2 => VCC,
      ADR3 => Counter_Module_Trigger_1_qbartemp_592,
      O => s_notAnd_magic_o_OBUF_1529
    );
  Counter_Module_s_and_11 : X_LUT4
    generic map(
      INIT => X"8000",
      LOC => "CLB_R8C20.S1"
    )
    port map (
      ADR0 => Counter_Module_Trigger_3_qbartemp_598,
      ADR1 => Counter_Module_Trigger_0_qtemp_582,
      ADR2 => CLK_Counter_module_temporal_654,
      ADR3 => CPU_IBUF_0,
      O => s_and_1_o_OBUF_1528
    );
  s_notAnd_magic_o_OBUF_YUSED : X_BUF
    generic map(
      LOC => "CLB_R8C20.S1"
    )
    port map (
      I => s_and_1_o_OBUF_1528,
      O => s_and_1_o_OBUF_0
    );
  Counter_Module_s_and_21 : X_LUT4
    generic map(
      INIT => X"0020",
      LOC => "CLB_R8C18.S0"
    )
    port map (
      ADR0 => Counter_Module_Trigger_1_qbartemp_592,
      ADR1 => Counter_Module_s_notAnd_magic_and0000,
      ADR2 => Counter_Module_Trigger_0_qbartemp_590,
      ADR3 => cpd_in,
      O => s_and_2_o_OBUF_pack_1
    );
  Counter_Module_s_notT_2_not00001 : X_LUT4
    generic map(
      INIT => X"00F7",
      LOC => "CLB_R8C18.S0"
    )
    port map (
      ADR0 => Counter_Module_Trigger_0_qtemp_582,
      ADR1 => Counter_Module_Trigger_1_qtemp_584,
      ADR2 => cpu_in,
      ADR3 => s_and_2_o_OBUF_579,
      O => s_notT_o_2_OBUF_1541
    );
  s_and_2_o_OBUF_XUSED : X_BUF
    generic map(
      LOC => "CLB_R8C18.S0"
    )
    port map (
      I => s_and_2_o_OBUF_pack_1,
      O => s_and_2_o_OBUF_579
    );
  s_and_2_o_OBUF_YUSED : X_BUF
    generic map(
      LOC => "CLB_R8C18.S0"
    )
    port map (
      I => s_notT_o_2_OBUF_1541,
      O => s_notT_o_2_OBUF_0
    );
  Counter_Module_Trigger_2_qtemp_BXMUX : X_INV
    generic map(
      LOC => "CLB_R7C18.S0"
    )
    port map (
      I => Counter_Module_Trigger_2_qtemp_585,
      O => Counter_Module_Trigger_2_qtemp_BXMUXNOT
    );
  Counter_Module_Trigger_2_qtemp : X_FF
    generic map(
      LOC => "CLB_R7C18.S0",
      INIT => '0'
    )
    port map (
      I => Counter_Module_Trigger_2_qtemp_BXMUXNOT,
      CE => s_notT_o_2_OBUF_0,
      CLK => s_notT_o_2_OBUF_0,
      SET => Counter_Module_Trigger_2_qtemp_FFX_SET,
      RST => Counter_Module_Trigger_2_qtemp_FFX_RST,
      O => Counter_Module_Trigger_2_qtemp_585
    );
  Counter_Module_Trigger_2_qtemp_FFX_SETOR : X_BUF
    generic map(
      LOC => "CLB_R7C18.S0"
    )
    port map (
      I => Counter_Module_Trigger_2_S_inv_0,
      O => Counter_Module_Trigger_2_qtemp_FFX_SET
    );
  Counter_Module_Trigger_2_qtemp_FFX_RSTOR : X_BUF
    generic map(
      LOC => "CLB_R7C18.S0"
    )
    port map (
      I => Counter_Module_Trigger_2_R_inv_0,
      O => Counter_Module_Trigger_2_qtemp_FFX_RST
    );
  s_SET_o_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD18"
    )
    port map (
      I => s_SET_o_0_OUTMUX_1561,
      O => s_SET_o(0)
    );
  s_SET_o_0_OUTMUX : X_BUF
    generic map(
      LOC => "PAD18"
    )
    port map (
      I => s_SET_o_0_OBUF_1234,
      O => s_SET_o_0_OUTMUX_1561
    );
  DATA_0_IMUX : X_BUF
    generic map(
      LOC => "PAD222"
    )
    port map (
      I => DATA_0_IBUF_1564,
      O => DATA_0_IBUF_0
    );
  DATA_0_IBUF : X_BUF
    generic map(
      LOC => "PAD222"
    )
    port map (
      I => DATA(0),
      O => DATA_0_IBUF_1564
    );
  CPU_IMUX : X_BUF
    generic map(
      LOC => "PAD202"
    )
    port map (
      I => CPU_IBUF_1567,
      O => CPU_IBUF_0
    );
  CPU_IBUF : X_BUF
    generic map(
      LOC => "PAD202"
    )
    port map (
      I => CPU,
      O => CPU_IBUF_1567
    );
  s_SET_o_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD21"
    )
    port map (
      I => s_SET_o_1_OUTMUX_1571,
      O => s_SET_o(1)
    );
  s_SET_o_1_OUTMUX : X_BUF
    generic map(
      LOC => "PAD21"
    )
    port map (
      I => s_SET_o_1_OBUF_1318,
      O => s_SET_o_1_OUTMUX_1571
    );
  DATA_1_IMUX : X_BUF
    generic map(
      LOC => "PAD236"
    )
    port map (
      I => DATA_1_IBUF_1574,
      O => DATA_1_IBUF_0
    );
  DATA_1_IBUF : X_BUF
    generic map(
      LOC => "PAD236"
    )
    port map (
      I => DATA(1),
      O => DATA_1_IBUF_1574
    );
  s_SET_o_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD22"
    )
    port map (
      I => s_SET_o_2_OUTMUX_1578,
      O => s_SET_o(2)
    );
  s_SET_o_2_OUTMUX : X_BUF
    generic map(
      LOC => "PAD22"
    )
    port map (
      I => s_SET_o_2_OBUF_1435,
      O => s_SET_o_2_OUTMUX_1578
    );
  CLK_Counter_module_counter_23 : X_SFF
    generic map(
      LOC => "CLB_R17C21.S0",
      INIT => '0'
    )
    port map (
      I => Result(23),
      CE => VCC,
      CLK => CLK_BUFGP,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => CLK_Counter_module_temporal_cmp_eq0000_0,
      O => CLK_Counter_module_counter(23)
    );
  CLK_Counter_module_counter_22_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "CLB_R17C21.S0"
    )
    port map (
      O => CLK_Counter_module_counter_22_LOGIC_ZERO_1113
    );
  CLK_Counter_module_Mcount_counter_cy_22_Q : X_MUX2
    generic map(
      LOC => "CLB_R17C21.S0"
    )
    port map (
      IA => CLK_Counter_module_counter_22_LOGIC_ZERO_1113,
      IB => CLK_Counter_module_counter_22_CYINIT_1110,
      SEL => CLK_Counter_module_counter_22_FROM,
      O => CLK_Counter_module_Mcount_counter_cy_22_Q_1111
    );
  CLK_Counter_module_Mcount_counter_xor_22_Q : X_XOR2
    generic map(
      LOC => "CLB_R17C21.S0"
    )
    port map (
      I0 => CLK_Counter_module_counter_22_CYINIT_1110,
      I1 => CLK_Counter_module_counter_22_FROM,
      O => Result(22)
    );
  CLK_Counter_module_counter_22_F : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "CLB_R17C21.S0"
    )
    port map (
      ADR0 => VCC,
      ADR1 => CLK_Counter_module_counter(22),
      ADR2 => VCC,
      ADR3 => VCC,
      O => CLK_Counter_module_counter_22_FROM
    );
  CLK_Counter_module_counter_22_G : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "CLB_R17C21.S0"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => CLK_Counter_module_counter(23),
      ADR3 => VCC,
      O => CLK_Counter_module_counter_22_GROM
    );
  CLK_Counter_module_Mcount_counter_cy_23_Q : X_MUX2
    generic map(
      LOC => "CLB_R17C21.S0"
    )
    port map (
      IA => CLK_Counter_module_counter_22_LOGIC_ZERO_1113,
      IB => CLK_Counter_module_Mcount_counter_cy_22_Q_1111,
      SEL => CLK_Counter_module_counter_22_GROM,
      O => CLK_Counter_module_counter_22_CYMUXG
    );
  CLK_Counter_module_Mcount_counter_xor_23_Q : X_XOR2
    generic map(
      LOC => "CLB_R17C21.S0"
    )
    port map (
      I0 => CLK_Counter_module_Mcount_counter_cy_22_Q_1111,
      I1 => CLK_Counter_module_counter_22_GROM,
      O => Result(23)
    );
  CLK_Counter_module_counter_22_CYINIT : X_BUF
    generic map(
      LOC => "CLB_R17C21.S0"
    )
    port map (
      I => CLK_Counter_module_counter_20_CYMUXG,
      O => CLK_Counter_module_counter_22_CYINIT_1110
    );
  CLK_Counter_module_counter_22 : X_SFF
    generic map(
      LOC => "CLB_R17C21.S0",
      INIT => '0'
    )
    port map (
      I => Result(22),
      CE => VCC,
      CLK => CLK_BUFGP,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => CLK_Counter_module_temporal_cmp_eq0000_0,
      O => CLK_Counter_module_counter(22)
    );
  CLK_Counter_module_counter_25 : X_SFF
    generic map(
      LOC => "CLB_R16C21.S0",
      INIT => '0'
    )
    port map (
      I => Result(25),
      CE => VCC,
      CLK => CLK_BUFGP,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => CLK_Counter_module_temporal_cmp_eq0000_0,
      O => CLK_Counter_module_counter(25)
    );
  CLK_Counter_module_counter_24_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "CLB_R16C21.S0"
    )
    port map (
      O => CLK_Counter_module_counter_24_LOGIC_ZERO_1154
    );
  CLK_Counter_module_Mcount_counter_cy_24_Q : X_MUX2
    generic map(
      LOC => "CLB_R16C21.S0"
    )
    port map (
      IA => CLK_Counter_module_counter_24_LOGIC_ZERO_1154,
      IB => CLK_Counter_module_counter_24_CYINIT_1139,
      SEL => CLK_Counter_module_counter_24_FROM,
      O => CLK_Counter_module_Mcount_counter_cy_24_Q_1140
    );
  CLK_Counter_module_Mcount_counter_xor_24_Q : X_XOR2
    generic map(
      LOC => "CLB_R16C21.S0"
    )
    port map (
      I0 => CLK_Counter_module_counter_24_CYINIT_1139,
      I1 => CLK_Counter_module_counter_24_FROM,
      O => Result(24)
    );
  CLK_Counter_module_counter_24_F : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "CLB_R16C21.S0"
    )
    port map (
      ADR0 => VCC,
      ADR1 => CLK_Counter_module_counter(24),
      ADR2 => VCC,
      ADR3 => VCC,
      O => CLK_Counter_module_counter_24_FROM
    );
  CLK_Counter_module_counter_25_rt : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "CLB_R16C21.S0"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => CLK_Counter_module_counter(25),
      ADR3 => VCC,
      O => CLK_Counter_module_counter_25_rt_1141
    );
  CLK_Counter_module_Mcount_counter_xor_25_Q : X_XOR2
    generic map(
      LOC => "CLB_R16C21.S0"
    )
    port map (
      I0 => CLK_Counter_module_Mcount_counter_cy_24_Q_1140,
      I1 => CLK_Counter_module_counter_25_rt_1141,
      O => Result(25)
    );
  CLK_Counter_module_counter_24_CYINIT : X_BUF
    generic map(
      LOC => "CLB_R16C21.S0"
    )
    port map (
      I => CLK_Counter_module_counter_22_CYMUXG,
      O => CLK_Counter_module_counter_24_CYINIT_1139
    );
  CLK_Counter_module_counter_24 : X_SFF
    generic map(
      LOC => "CLB_R16C21.S0",
      INIT => '0'
    )
    port map (
      I => Result(24),
      CE => VCC,
      CLK => CLK_BUFGP,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => CLK_Counter_module_temporal_cmp_eq0000_0,
      O => CLK_Counter_module_counter(24)
    );
  CLK_Counter_module_temporal_cmp_eq0000_wg_cy_1_LOGIC_ONE : X_ONE
    generic map(
      LOC => "CLB_R24C21.S1"
    )
    port map (
      O => CLK_Counter_module_temporal_cmp_eq0000_wg_cy_1_LOGIC_ONE_1162
    );
  CLK_Counter_module_temporal_cmp_eq0000_wg_cy_1_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "CLB_R24C21.S1"
    )
    port map (
      O => CLK_Counter_module_temporal_cmp_eq0000_wg_cy_1_LOGIC_ZERO_1164
    );
  CLK_Counter_module_temporal_cmp_eq0000_wg_cy_0_Q : X_MUX2
    generic map(
      LOC => "CLB_R24C21.S1"
    )
    port map (
      IA => CLK_Counter_module_temporal_cmp_eq0000_wg_cy_1_LOGIC_ZERO_1164,
      IB => CLK_Counter_module_temporal_cmp_eq0000_wg_cy_1_LOGIC_ONE_1162,
      SEL => CLK_Counter_module_temporal_cmp_eq0000_wg_lut(0),
      O => CLK_Counter_module_temporal_cmp_eq0000_wg_cy_0_Q_1165
    );
  CLK_Counter_module_temporal_cmp_eq0000_wg_lut_0_Q : X_LUT4
    generic map(
      INIT => X"000F",
      LOC => "CLB_R24C21.S1"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => CLK_Counter_module_counter(9),
      ADR3 => CLK_Counter_module_counter(5),
      O => CLK_Counter_module_temporal_cmp_eq0000_wg_lut(0)
    );
  CLK_Counter_module_temporal_cmp_eq0000_wg_lut_1_Q : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "CLB_R24C21.S1"
    )
    port map (
      ADR0 => CLK_Counter_module_counter(4),
      ADR1 => CLK_Counter_module_counter(8),
      ADR2 => CLK_Counter_module_counter(7),
      ADR3 => CLK_Counter_module_counter(12),
      O => CLK_Counter_module_temporal_cmp_eq0000_wg_lut(1)
    );
  CLK_Counter_module_temporal_cmp_eq0000_wg_cy_1_Q : X_MUX2
    generic map(
      LOC => "CLB_R24C21.S1"
    )
    port map (
      IA => CLK_Counter_module_temporal_cmp_eq0000_wg_cy_1_LOGIC_ZERO_1164,
      IB => CLK_Counter_module_temporal_cmp_eq0000_wg_cy_0_Q_1165,
      SEL => CLK_Counter_module_temporal_cmp_eq0000_wg_lut(1),
      O => CLK_Counter_module_temporal_cmp_eq0000_wg_cy_1_CYMUXG
    );
  CLK_Counter_module_temporal_cmp_eq0000_wg_cy_3_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "CLB_R23C21.S1"
    )
    port map (
      O => CLK_Counter_module_temporal_cmp_eq0000_wg_cy_3_LOGIC_ZERO_1182
    );
  CLK_Counter_module_temporal_cmp_eq0000_wg_cy_2_Q : X_MUX2
    generic map(
      LOC => "CLB_R23C21.S1"
    )
    port map (
      IA => CLK_Counter_module_temporal_cmp_eq0000_wg_cy_3_LOGIC_ZERO_1182,
      IB => CLK_Counter_module_temporal_cmp_eq0000_wg_cy_3_CYINIT_1181,
      SEL => CLK_Counter_module_temporal_cmp_eq0000_wg_lut(2),
      O => CLK_Counter_module_temporal_cmp_eq0000_wg_cy_2_Q_1183
    );
  CLK_Counter_module_temporal_cmp_eq0000_wg_lut_2_Q : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "CLB_R23C21.S1"
    )
    port map (
      ADR0 => CLK_Counter_module_counter(13),
      ADR1 => CLK_Counter_module_counter(6),
      ADR2 => CLK_Counter_module_counter(11),
      ADR3 => CLK_Counter_module_counter(10),
      O => CLK_Counter_module_temporal_cmp_eq0000_wg_lut(2)
    );
  CLK_Counter_module_temporal_cmp_eq0000_wg_lut_3_Q : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "CLB_R23C21.S1"
    )
    port map (
      ADR0 => CLK_Counter_module_counter(15),
      ADR1 => CLK_Counter_module_counter(14),
      ADR2 => CLK_Counter_module_counter(16),
      ADR3 => CLK_Counter_module_counter(3),
      O => CLK_Counter_module_temporal_cmp_eq0000_wg_lut(3)
    );
  CLK_Counter_module_temporal_cmp_eq0000_wg_cy_3_Q : X_MUX2
    generic map(
      LOC => "CLB_R23C21.S1"
    )
    port map (
      IA => CLK_Counter_module_temporal_cmp_eq0000_wg_cy_3_LOGIC_ZERO_1182,
      IB => CLK_Counter_module_temporal_cmp_eq0000_wg_cy_2_Q_1183,
      SEL => CLK_Counter_module_temporal_cmp_eq0000_wg_lut(3),
      O => CLK_Counter_module_temporal_cmp_eq0000_wg_cy_3_CYMUXG
    );
  CLK_Counter_module_temporal_cmp_eq0000_wg_cy_3_CYINIT : X_BUF
    generic map(
      LOC => "CLB_R23C21.S1"
    )
    port map (
      I => CLK_Counter_module_temporal_cmp_eq0000_wg_cy_1_CYMUXG,
      O => CLK_Counter_module_temporal_cmp_eq0000_wg_cy_3_CYINIT_1181
    );
  CLK_Counter_module_temporal_cmp_eq0000_wg_cy_5_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "CLB_R22C21.S1"
    )
    port map (
      O => CLK_Counter_module_temporal_cmp_eq0000_wg_cy_5_LOGIC_ZERO_1198
    );
  CLK_Counter_module_temporal_cmp_eq0000_wg_cy_4_Q : X_MUX2
    generic map(
      LOC => "CLB_R22C21.S1"
    )
    port map (
      IA => CLK_Counter_module_temporal_cmp_eq0000_wg_cy_5_LOGIC_ZERO_1198,
      IB => CLK_Counter_module_temporal_cmp_eq0000_wg_cy_5_CYINIT_1197,
      SEL => CLK_Counter_module_temporal_cmp_eq0000_wg_lut(4),
      O => CLK_Counter_module_temporal_cmp_eq0000_wg_cy_4_Q_1199
    );
  CLK_Counter_module_temporal_cmp_eq0000_wg_lut_4_Q : X_LUT4
    generic map(
      INIT => X"0010",
      LOC => "CLB_R22C21.S1"
    )
    port map (
      ADR0 => CLK_Counter_module_counter(18),
      ADR1 => CLK_Counter_module_counter(19),
      ADR2 => CLK_Counter_module_counter(2),
      ADR3 => CLK_Counter_module_counter(17),
      O => CLK_Counter_module_temporal_cmp_eq0000_wg_lut(4)
    );
  CLK_Counter_module_temporal_cmp_eq0000_wg_lut_5_Q : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "CLB_R22C21.S1"
    )
    port map (
      ADR0 => CLK_Counter_module_counter(21),
      ADR1 => CLK_Counter_module_counter(20),
      ADR2 => CLK_Counter_module_counter(22),
      ADR3 => CLK_Counter_module_counter(1),
      O => CLK_Counter_module_temporal_cmp_eq0000_wg_lut(5)
    );
  CLK_Counter_module_temporal_cmp_eq0000_wg_cy_5_Q : X_MUX2
    generic map(
      LOC => "CLB_R22C21.S1"
    )
    port map (
      IA => CLK_Counter_module_temporal_cmp_eq0000_wg_cy_5_LOGIC_ZERO_1198,
      IB => CLK_Counter_module_temporal_cmp_eq0000_wg_cy_4_Q_1199,
      SEL => CLK_Counter_module_temporal_cmp_eq0000_wg_lut(5),
      O => CLK_Counter_module_temporal_cmp_eq0000_wg_cy_5_CYMUXG
    );
  CLK_Counter_module_temporal_cmp_eq0000_wg_cy_5_CYINIT : X_BUF
    generic map(
      LOC => "CLB_R22C21.S1"
    )
    port map (
      I => CLK_Counter_module_temporal_cmp_eq0000_wg_cy_3_CYMUXG,
      O => CLK_Counter_module_temporal_cmp_eq0000_wg_cy_5_CYINIT_1197
    );
  CLK_Counter_module_temporal_cmp_eq0000_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "CLB_R21C21.S1"
    )
    port map (
      O => CLK_Counter_module_temporal_cmp_eq0000_LOGIC_ZERO_1212
    );
  CLK_Counter_module_temporal_cmp_eq0000_wg_cy_6_Q : X_MUX2
    generic map(
      LOC => "CLB_R21C21.S1"
    )
    port map (
      IA => CLK_Counter_module_temporal_cmp_eq0000_LOGIC_ZERO_1212,
      IB => CLK_Counter_module_temporal_cmp_eq0000_CYINIT_1209,
      SEL => CLK_Counter_module_temporal_cmp_eq0000_wg_lut(6),
      O => CLK_Counter_module_temporal_cmp_eq0000
    );
  CLK_Counter_module_temporal_cmp_eq0000_wg_lut_6_Q : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "CLB_R21C21.S1"
    )
    port map (
      ADR0 => CLK_Counter_module_counter(25),
      ADR1 => CLK_Counter_module_counter(0),
      ADR2 => CLK_Counter_module_counter(24),
      ADR3 => CLK_Counter_module_counter(23),
      O => CLK_Counter_module_temporal_cmp_eq0000_wg_lut(6)
    );
  CLK_Counter_module_temporal_cmp_eq0000_XBUSED : X_BUF
    generic map(
      LOC => "CLB_R21C21.S1"
    )
    port map (
      I => CLK_Counter_module_temporal_cmp_eq0000,
      O => CLK_Counter_module_temporal_cmp_eq0000_0
    );
  CLK_Counter_module_temporal_cmp_eq0000_CYINIT : X_BUF
    generic map(
      LOC => "CLB_R21C21.S1"
    )
    port map (
      I => CLK_Counter_module_temporal_cmp_eq0000_wg_cy_5_CYMUXG,
      O => CLK_Counter_module_temporal_cmp_eq0000_CYINIT_1209
    );
  Counter_Module_s_notAnd_magic_and00001 : X_LUT4
    generic map(
      INIT => X"A000",
      LOC => "CLB_R8C17.S0"
    )
    port map (
      ADR0 => Counter_Module_Trigger_3_qbartemp_598,
      ADR1 => VCC,
      ADR2 => Counter_Module_Trigger_2_qbartemp_595,
      ADR3 => Counter_Module_Trigger_1_qbartemp_592,
      O => Counter_Module_s_notAnd_magic_and0000_pack_1
    );
  Counter_Module_s_notT_1_not00001 : X_LUT4
    generic map(
      INIT => X"5551",
      LOC => "CLB_R8C17.S0"
    )
    port map (
      ADR0 => s_and_1_o_OBUF_0,
      ADR1 => Counter_Module_Trigger_0_qbartemp_590,
      ADR2 => cpd_in,
      ADR3 => Counter_Module_s_notAnd_magic_and0000,
      O => s_notT_o_1_OBUF_1222
    );
  Counter_Module_s_notAnd_magic_and0000_XUSED : X_BUF
    generic map(
      LOC => "CLB_R8C17.S0"
    )
    port map (
      I => Counter_Module_s_notAnd_magic_and0000_pack_1,
      O => Counter_Module_s_notAnd_magic_and0000
    );
  Counter_Module_s_notAnd_magic_and0000_YUSED : X_BUF
    generic map(
      LOC => "CLB_R8C17.S0"
    )
    port map (
      I => s_notT_o_1_OBUF_1222,
      O => s_notT_o_1_OBUF_0
    );
  Counter_Module_s_SET_0_not00001 : X_LUT4
    generic map(
      INIT => X"FCFF",
      LOC => "CLB_R10C16.S1"
    )
    port map (
      ADR0 => VCC,
      ADR1 => notPL_IBUF_0,
      ADR2 => MR_IBUF_0,
      ADR3 => DATA_0_IBUF_0,
      O => s_SET_o_0_OBUF_1234
    );
  Counter_Module_Trigger_0_R_inv1 : X_LUT4
    generic map(
      INIT => X"ABAB",
      LOC => "CLB_R10C16.S1"
    )
    port map (
      ADR0 => MR_IBUF_0,
      ADR1 => notPL_IBUF_0,
      ADR2 => DATA_0_IBUF_0,
      ADR3 => VCC,
      O => Counter_Module_Trigger_0_R_inv
    );
  s_SET_o_0_OBUF_YUSED : X_BUF
    generic map(
      LOC => "CLB_R10C16.S1"
    )
    port map (
      I => Counter_Module_Trigger_0_R_inv,
      O => Counter_Module_Trigger_0_R_inv_0
    );
  CLK_Counter_module_temporal_BYMUX : X_INV
    generic map(
      LOC => "CLB_R15C21.S0"
    )
    port map (
      I => CLK_Counter_module_temporal_654,
      O => CLK_Counter_module_temporal_BYMUXNOT
    );
  CLK_Counter_module_temporal : X_FF
    generic map(
      LOC => "CLB_R15C21.S0",
      INIT => '0'
    )
    port map (
      I => CLK_Counter_module_temporal_BYMUXNOT,
      CE => CLK_Counter_module_temporal_cmp_eq0000_0,
      CLK => CLK_BUFGP,
      SET => GND,
      RST => GND,
      O => CLK_Counter_module_temporal_654
    );
  cpu_in1 : X_LUT4
    generic map(
      INIT => X"3F3F",
      LOC => "CLB_R8C22.S1"
    )
    port map (
      ADR0 => VCC,
      ADR1 => CPU_IBUF_0,
      ADR2 => CLK_Counter_module_temporal_654,
      ADR3 => VCC,
      O => cpu_in_pack_1
    );
  Counter_Module_s_and_62 : X_LUT4
    generic map(
      INIT => X"0080",
      LOC => "CLB_R8C22.S1"
    )
    port map (
      ADR0 => Counter_Module_Trigger_2_qtemp_585,
      ADR1 => Counter_Module_Trigger_1_qtemp_584,
      ADR2 => Counter_Module_Trigger_0_qtemp_582,
      ADR3 => cpu_in,
      O => s_and_6_o_OBUF_1254
    );
  cpu_in_XUSED : X_BUF
    generic map(
      LOC => "CLB_R8C22.S1"
    )
    port map (
      I => cpu_in_pack_1,
      O => cpu_in
    );
  Counter_Module_s_SET_3_not00001 : X_LUT4
    generic map(
      INIT => X"FFF5",
      LOC => "CLB_R4C21.S1"
    )
    port map (
      ADR0 => DATA_3_IBUF_0,
      ADR1 => VCC,
      ADR2 => notPL_IBUF_0,
      ADR3 => MR_IBUF_0,
      O => s_SET_o_3_OBUF_1267
    );
  Counter_Module_Trigger_3_S_inv1 : X_LUT4
    generic map(
      INIT => X"0500",
      LOC => "CLB_R4C21.S1"
    )
    port map (
      ADR0 => notPL_IBUF_0,
      ADR1 => VCC,
      ADR2 => MR_IBUF_0,
      ADR3 => DATA_3_IBUF_0,
      O => Counter_Module_Trigger_3_S_inv
    );
  s_SET_o_3_OBUF_YUSED : X_BUF
    generic map(
      LOC => "CLB_R4C21.S1"
    )
    port map (
      I => Counter_Module_Trigger_3_S_inv,
      O => Counter_Module_Trigger_3_S_inv_0
    );
  Counter_Module_s_and_611 : X_LUT4
    generic map(
      INIT => X"8000",
      LOC => "CLB_R8C20.S0"
    )
    port map (
      ADR0 => Counter_Module_Trigger_1_qtemp_584,
      ADR1 => CLK_Counter_module_temporal_654,
      ADR2 => Counter_Module_Trigger_0_qtemp_582,
      ADR3 => CPU_IBUF_0,
      O => s_and_3_o_OBUF_pack_1
    );
  Counter_Module_s_notT_3_not00001 : X_LUT4
    generic map(
      INIT => X"0013",
      LOC => "CLB_R8C20.S0"
    )
    port map (
      ADR0 => s_and_3_o_OBUF_581,
      ADR1 => s_and_4_o_OBUF_0,
      ADR2 => Counter_Module_Trigger_2_qtemp_585,
      ADR3 => s_and_5_o_OBUF_0,
      O => s_notT_o_3_OBUF_1280
    );
  s_and_3_o_OBUF_XUSED : X_BUF
    generic map(
      LOC => "CLB_R8C20.S0"
    )
    port map (
      I => s_and_3_o_OBUF_pack_1,
      O => s_and_3_o_OBUF_581
    );
  s_and_3_o_OBUF_YUSED : X_BUF
    generic map(
      LOC => "CLB_R8C20.S0"
    )
    port map (
      I => s_notT_o_3_OBUF_1280,
      O => s_notT_o_3_OBUF_0
    );
  Counter_Module_Trigger_1_qtemp_BXMUX : X_INV
    generic map(
      LOC => "CLB_R9C17.S0"
    )
    port map (
      I => Counter_Module_Trigger_1_qtemp_584,
      O => Counter_Module_Trigger_1_qtemp_BXMUXNOT
    );
  Counter_Module_Trigger_1_qtemp : X_FF
    generic map(
      LOC => "CLB_R9C17.S0",
      INIT => '0'
    )
    port map (
      I => Counter_Module_Trigger_1_qtemp_BXMUXNOT,
      CE => s_notT_o_1_OBUF_0,
      CLK => s_notT_o_1_OBUF_0,
      SET => Counter_Module_Trigger_1_qtemp_FFX_SET,
      RST => Counter_Module_Trigger_1_qtemp_FFX_RST,
      O => Counter_Module_Trigger_1_qtemp_584
    );
  Counter_Module_Trigger_1_qtemp_FFX_SETOR : X_BUF
    generic map(
      LOC => "CLB_R9C17.S0"
    )
    port map (
      I => Counter_Module_Trigger_1_S_inv_0,
      O => Counter_Module_Trigger_1_qtemp_FFX_SET
    );
  Counter_Module_Trigger_1_qtemp_FFX_RSTOR : X_BUF
    generic map(
      LOC => "CLB_R9C17.S0"
    )
    port map (
      I => Counter_Module_Trigger_1_R_inv_0,
      O => Counter_Module_Trigger_1_qtemp_FFX_RST
    );
  Counter_Module_notTCD_SW0 : X_LUT4
    generic map(
      INIT => X"3FFF",
      LOC => "CLB_R10C17.S0"
    )
    port map (
      ADR0 => VCC,
      ADR1 => Counter_Module_Trigger_0_qbartemp_590,
      ADR2 => CPD_IBUF_0,
      ADR3 => CLK_Counter_module_temporal_654,
      O => N0_pack_1
    );
  Counter_Module_notTCD : X_LUT4
    generic map(
      INIT => X"FF7F",
      LOC => "CLB_R10C17.S0"
    )
    port map (
      ADR0 => Counter_Module_Trigger_2_qbartemp_595,
      ADR1 => Counter_Module_Trigger_3_qbartemp_598,
      ADR2 => Counter_Module_Trigger_1_qbartemp_592,
      ADR3 => N0,
      O => notTCD_OBUF_1306
    );
  N0_XUSED : X_BUF
    generic map(
      LOC => "CLB_R10C17.S0"
    )
    port map (
      I => N0_pack_1,
      O => N0
    );
  CLK_Counter_module_counter_7 : X_SFF
    generic map(
      LOC => "CLB_R25C21.S0",
      INIT => '0'
    )
    port map (
      I => Result(7),
      CE => VCC,
      CLK => CLK_BUFGP,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => CLK_Counter_module_temporal_cmp_eq0000_0,
      O => CLK_Counter_module_counter(7)
    );
  CLK_Counter_module_counter_6_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "CLB_R25C21.S0"
    )
    port map (
      O => CLK_Counter_module_counter_6_LOGIC_ZERO_873
    );
  CLK_Counter_module_Mcount_counter_cy_6_Q : X_MUX2
    generic map(
      LOC => "CLB_R25C21.S0"
    )
    port map (
      IA => CLK_Counter_module_counter_6_LOGIC_ZERO_873,
      IB => CLK_Counter_module_counter_6_CYINIT_870,
      SEL => CLK_Counter_module_counter_6_FROM,
      O => CLK_Counter_module_Mcount_counter_cy_6_Q_871
    );
  CLK_Counter_module_Mcount_counter_xor_6_Q : X_XOR2
    generic map(
      LOC => "CLB_R25C21.S0"
    )
    port map (
      I0 => CLK_Counter_module_counter_6_CYINIT_870,
      I1 => CLK_Counter_module_counter_6_FROM,
      O => Result(6)
    );
  CLK_Counter_module_counter_6_F : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "CLB_R25C21.S0"
    )
    port map (
      ADR0 => VCC,
      ADR1 => CLK_Counter_module_counter(6),
      ADR2 => VCC,
      ADR3 => VCC,
      O => CLK_Counter_module_counter_6_FROM
    );
  CLK_Counter_module_counter_6_G : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "CLB_R25C21.S0"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => CLK_Counter_module_counter(7),
      ADR3 => VCC,
      O => CLK_Counter_module_counter_6_GROM
    );
  CLK_Counter_module_Mcount_counter_cy_7_Q : X_MUX2
    generic map(
      LOC => "CLB_R25C21.S0"
    )
    port map (
      IA => CLK_Counter_module_counter_6_LOGIC_ZERO_873,
      IB => CLK_Counter_module_Mcount_counter_cy_6_Q_871,
      SEL => CLK_Counter_module_counter_6_GROM,
      O => CLK_Counter_module_counter_6_CYMUXG
    );
  CLK_Counter_module_Mcount_counter_xor_7_Q : X_XOR2
    generic map(
      LOC => "CLB_R25C21.S0"
    )
    port map (
      I0 => CLK_Counter_module_Mcount_counter_cy_6_Q_871,
      I1 => CLK_Counter_module_counter_6_GROM,
      O => Result(7)
    );
  CLK_Counter_module_counter_6_CYINIT : X_BUF
    generic map(
      LOC => "CLB_R25C21.S0"
    )
    port map (
      I => CLK_Counter_module_counter_4_CYMUXG,
      O => CLK_Counter_module_counter_6_CYINIT_870
    );
  CLK_Counter_module_counter_6 : X_SFF
    generic map(
      LOC => "CLB_R25C21.S0",
      INIT => '0'
    )
    port map (
      I => Result(6),
      CE => VCC,
      CLK => CLK_BUFGP,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => CLK_Counter_module_temporal_cmp_eq0000_0,
      O => CLK_Counter_module_counter(6)
    );
  CLK_Counter_module_counter_9 : X_SFF
    generic map(
      LOC => "CLB_R24C21.S0",
      INIT => '0'
    )
    port map (
      I => Result(9),
      CE => VCC,
      CLK => CLK_BUFGP,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => CLK_Counter_module_temporal_cmp_eq0000_0,
      O => CLK_Counter_module_counter(9)
    );
  CLK_Counter_module_counter_8_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "CLB_R24C21.S0"
    )
    port map (
      O => CLK_Counter_module_counter_8_LOGIC_ZERO_903
    );
  CLK_Counter_module_Mcount_counter_cy_8_Q : X_MUX2
    generic map(
      LOC => "CLB_R24C21.S0"
    )
    port map (
      IA => CLK_Counter_module_counter_8_LOGIC_ZERO_903,
      IB => CLK_Counter_module_counter_8_CYINIT_900,
      SEL => CLK_Counter_module_counter_8_FROM,
      O => CLK_Counter_module_Mcount_counter_cy_8_Q_901
    );
  CLK_Counter_module_Mcount_counter_xor_8_Q : X_XOR2
    generic map(
      LOC => "CLB_R24C21.S0"
    )
    port map (
      I0 => CLK_Counter_module_counter_8_CYINIT_900,
      I1 => CLK_Counter_module_counter_8_FROM,
      O => Result(8)
    );
  CLK_Counter_module_counter_8_F : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "CLB_R24C21.S0"
    )
    port map (
      ADR0 => VCC,
      ADR1 => CLK_Counter_module_counter(8),
      ADR2 => VCC,
      ADR3 => VCC,
      O => CLK_Counter_module_counter_8_FROM
    );
  CLK_Counter_module_counter_8_G : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "CLB_R24C21.S0"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => CLK_Counter_module_counter(9),
      ADR3 => VCC,
      O => CLK_Counter_module_counter_8_GROM
    );
  CLK_Counter_module_Mcount_counter_cy_9_Q : X_MUX2
    generic map(
      LOC => "CLB_R24C21.S0"
    )
    port map (
      IA => CLK_Counter_module_counter_8_LOGIC_ZERO_903,
      IB => CLK_Counter_module_Mcount_counter_cy_8_Q_901,
      SEL => CLK_Counter_module_counter_8_GROM,
      O => CLK_Counter_module_counter_8_CYMUXG
    );
  CLK_Counter_module_Mcount_counter_xor_9_Q : X_XOR2
    generic map(
      LOC => "CLB_R24C21.S0"
    )
    port map (
      I0 => CLK_Counter_module_Mcount_counter_cy_8_Q_901,
      I1 => CLK_Counter_module_counter_8_GROM,
      O => Result(9)
    );
  CLK_Counter_module_counter_8_CYINIT : X_BUF
    generic map(
      LOC => "CLB_R24C21.S0"
    )
    port map (
      I => CLK_Counter_module_counter_6_CYMUXG,
      O => CLK_Counter_module_counter_8_CYINIT_900
    );
  CLK_Counter_module_counter_8 : X_SFF
    generic map(
      LOC => "CLB_R24C21.S0",
      INIT => '0'
    )
    port map (
      I => Result(8),
      CE => VCC,
      CLK => CLK_BUFGP,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => CLK_Counter_module_temporal_cmp_eq0000_0,
      O => CLK_Counter_module_counter(8)
    );
  CLK_Counter_module_counter_11 : X_SFF
    generic map(
      LOC => "CLB_R23C21.S0",
      INIT => '0'
    )
    port map (
      I => Result(11),
      CE => VCC,
      CLK => CLK_BUFGP,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => CLK_Counter_module_temporal_cmp_eq0000_0,
      O => CLK_Counter_module_counter(11)
    );
  CLK_Counter_module_counter_10_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "CLB_R23C21.S0"
    )
    port map (
      O => CLK_Counter_module_counter_10_LOGIC_ZERO_933
    );
  CLK_Counter_module_Mcount_counter_cy_10_Q : X_MUX2
    generic map(
      LOC => "CLB_R23C21.S0"
    )
    port map (
      IA => CLK_Counter_module_counter_10_LOGIC_ZERO_933,
      IB => CLK_Counter_module_counter_10_CYINIT_930,
      SEL => CLK_Counter_module_counter_10_FROM,
      O => CLK_Counter_module_Mcount_counter_cy_10_Q_931
    );
  CLK_Counter_module_Mcount_counter_xor_10_Q : X_XOR2
    generic map(
      LOC => "CLB_R23C21.S0"
    )
    port map (
      I0 => CLK_Counter_module_counter_10_CYINIT_930,
      I1 => CLK_Counter_module_counter_10_FROM,
      O => Result(10)
    );
  CLK_Counter_module_counter_10_F : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "CLB_R23C21.S0"
    )
    port map (
      ADR0 => VCC,
      ADR1 => CLK_Counter_module_counter(10),
      ADR2 => VCC,
      ADR3 => VCC,
      O => CLK_Counter_module_counter_10_FROM
    );
  CLK_Counter_module_counter_10_G : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "CLB_R23C21.S0"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => CLK_Counter_module_counter(11),
      ADR3 => VCC,
      O => CLK_Counter_module_counter_10_GROM
    );
  CLK_Counter_module_Mcount_counter_cy_11_Q : X_MUX2
    generic map(
      LOC => "CLB_R23C21.S0"
    )
    port map (
      IA => CLK_Counter_module_counter_10_LOGIC_ZERO_933,
      IB => CLK_Counter_module_Mcount_counter_cy_10_Q_931,
      SEL => CLK_Counter_module_counter_10_GROM,
      O => CLK_Counter_module_counter_10_CYMUXG
    );
  CLK_Counter_module_Mcount_counter_xor_11_Q : X_XOR2
    generic map(
      LOC => "CLB_R23C21.S0"
    )
    port map (
      I0 => CLK_Counter_module_Mcount_counter_cy_10_Q_931,
      I1 => CLK_Counter_module_counter_10_GROM,
      O => Result(11)
    );
  CLK_Counter_module_counter_10_CYINIT : X_BUF
    generic map(
      LOC => "CLB_R23C21.S0"
    )
    port map (
      I => CLK_Counter_module_counter_8_CYMUXG,
      O => CLK_Counter_module_counter_10_CYINIT_930
    );
  CLK_Counter_module_counter_10 : X_SFF
    generic map(
      LOC => "CLB_R23C21.S0",
      INIT => '0'
    )
    port map (
      I => Result(10),
      CE => VCC,
      CLK => CLK_BUFGP,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => CLK_Counter_module_temporal_cmp_eq0000_0,
      O => CLK_Counter_module_counter(10)
    );
  CLK_Counter_module_counter_13 : X_SFF
    generic map(
      LOC => "CLB_R22C21.S0",
      INIT => '0'
    )
    port map (
      I => Result(13),
      CE => VCC,
      CLK => CLK_BUFGP,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => CLK_Counter_module_temporal_cmp_eq0000_0,
      O => CLK_Counter_module_counter(13)
    );
  CLK_Counter_module_counter_12_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "CLB_R22C21.S0"
    )
    port map (
      O => CLK_Counter_module_counter_12_LOGIC_ZERO_963
    );
  CLK_Counter_module_Mcount_counter_cy_12_Q : X_MUX2
    generic map(
      LOC => "CLB_R22C21.S0"
    )
    port map (
      IA => CLK_Counter_module_counter_12_LOGIC_ZERO_963,
      IB => CLK_Counter_module_counter_12_CYINIT_960,
      SEL => CLK_Counter_module_counter_12_FROM,
      O => CLK_Counter_module_Mcount_counter_cy_12_Q_961
    );
  CLK_Counter_module_Mcount_counter_xor_12_Q : X_XOR2
    generic map(
      LOC => "CLB_R22C21.S0"
    )
    port map (
      I0 => CLK_Counter_module_counter_12_CYINIT_960,
      I1 => CLK_Counter_module_counter_12_FROM,
      O => Result(12)
    );
  CLK_Counter_module_counter_12_F : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "CLB_R22C21.S0"
    )
    port map (
      ADR0 => VCC,
      ADR1 => CLK_Counter_module_counter(12),
      ADR2 => VCC,
      ADR3 => VCC,
      O => CLK_Counter_module_counter_12_FROM
    );
  CLK_Counter_module_counter_12_G : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "CLB_R22C21.S0"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => CLK_Counter_module_counter(13),
      ADR3 => VCC,
      O => CLK_Counter_module_counter_12_GROM
    );
  CLK_Counter_module_Mcount_counter_cy_13_Q : X_MUX2
    generic map(
      LOC => "CLB_R22C21.S0"
    )
    port map (
      IA => CLK_Counter_module_counter_12_LOGIC_ZERO_963,
      IB => CLK_Counter_module_Mcount_counter_cy_12_Q_961,
      SEL => CLK_Counter_module_counter_12_GROM,
      O => CLK_Counter_module_counter_12_CYMUXG
    );
  CLK_Counter_module_Mcount_counter_xor_13_Q : X_XOR2
    generic map(
      LOC => "CLB_R22C21.S0"
    )
    port map (
      I0 => CLK_Counter_module_Mcount_counter_cy_12_Q_961,
      I1 => CLK_Counter_module_counter_12_GROM,
      O => Result(13)
    );
  CLK_Counter_module_counter_12_CYINIT : X_BUF
    generic map(
      LOC => "CLB_R22C21.S0"
    )
    port map (
      I => CLK_Counter_module_counter_10_CYMUXG,
      O => CLK_Counter_module_counter_12_CYINIT_960
    );
  CLK_Counter_module_counter_12 : X_SFF
    generic map(
      LOC => "CLB_R22C21.S0",
      INIT => '0'
    )
    port map (
      I => Result(12),
      CE => VCC,
      CLK => CLK_BUFGP,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => CLK_Counter_module_temporal_cmp_eq0000_0,
      O => CLK_Counter_module_counter(12)
    );
  CLK_Counter_module_counter_15 : X_SFF
    generic map(
      LOC => "CLB_R21C21.S0",
      INIT => '0'
    )
    port map (
      I => Result(15),
      CE => VCC,
      CLK => CLK_BUFGP,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => CLK_Counter_module_temporal_cmp_eq0000_0,
      O => CLK_Counter_module_counter(15)
    );
  CLK_Counter_module_counter_14_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "CLB_R21C21.S0"
    )
    port map (
      O => CLK_Counter_module_counter_14_LOGIC_ZERO_993
    );
  CLK_Counter_module_Mcount_counter_cy_14_Q : X_MUX2
    generic map(
      LOC => "CLB_R21C21.S0"
    )
    port map (
      IA => CLK_Counter_module_counter_14_LOGIC_ZERO_993,
      IB => CLK_Counter_module_counter_14_CYINIT_990,
      SEL => CLK_Counter_module_counter_14_FROM,
      O => CLK_Counter_module_Mcount_counter_cy_14_Q_991
    );
  CLK_Counter_module_Mcount_counter_xor_14_Q : X_XOR2
    generic map(
      LOC => "CLB_R21C21.S0"
    )
    port map (
      I0 => CLK_Counter_module_counter_14_CYINIT_990,
      I1 => CLK_Counter_module_counter_14_FROM,
      O => Result(14)
    );
  CLK_Counter_module_counter_14_F : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "CLB_R21C21.S0"
    )
    port map (
      ADR0 => VCC,
      ADR1 => CLK_Counter_module_counter(14),
      ADR2 => VCC,
      ADR3 => VCC,
      O => CLK_Counter_module_counter_14_FROM
    );
  CLK_Counter_module_counter_14_G : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "CLB_R21C21.S0"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => CLK_Counter_module_counter(15),
      ADR3 => VCC,
      O => CLK_Counter_module_counter_14_GROM
    );
  CLK_Counter_module_Mcount_counter_cy_15_Q : X_MUX2
    generic map(
      LOC => "CLB_R21C21.S0"
    )
    port map (
      IA => CLK_Counter_module_counter_14_LOGIC_ZERO_993,
      IB => CLK_Counter_module_Mcount_counter_cy_14_Q_991,
      SEL => CLK_Counter_module_counter_14_GROM,
      O => CLK_Counter_module_counter_14_CYMUXG
    );
  CLK_Counter_module_Mcount_counter_xor_15_Q : X_XOR2
    generic map(
      LOC => "CLB_R21C21.S0"
    )
    port map (
      I0 => CLK_Counter_module_Mcount_counter_cy_14_Q_991,
      I1 => CLK_Counter_module_counter_14_GROM,
      O => Result(15)
    );
  CLK_Counter_module_counter_14_CYINIT : X_BUF
    generic map(
      LOC => "CLB_R21C21.S0"
    )
    port map (
      I => CLK_Counter_module_counter_12_CYMUXG,
      O => CLK_Counter_module_counter_14_CYINIT_990
    );
  CLK_Counter_module_counter_14 : X_SFF
    generic map(
      LOC => "CLB_R21C21.S0",
      INIT => '0'
    )
    port map (
      I => Result(14),
      CE => VCC,
      CLK => CLK_BUFGP,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => CLK_Counter_module_temporal_cmp_eq0000_0,
      O => CLK_Counter_module_counter(14)
    );
  CLK_Counter_module_counter_17 : X_SFF
    generic map(
      LOC => "CLB_R20C21.S0",
      INIT => '0'
    )
    port map (
      I => Result(17),
      CE => VCC,
      CLK => CLK_BUFGP,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => CLK_Counter_module_temporal_cmp_eq0000_0,
      O => CLK_Counter_module_counter(17)
    );
  CLK_Counter_module_counter_16_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "CLB_R20C21.S0"
    )
    port map (
      O => CLK_Counter_module_counter_16_LOGIC_ZERO_1023
    );
  CLK_Counter_module_Mcount_counter_cy_16_Q : X_MUX2
    generic map(
      LOC => "CLB_R20C21.S0"
    )
    port map (
      IA => CLK_Counter_module_counter_16_LOGIC_ZERO_1023,
      IB => CLK_Counter_module_counter_16_CYINIT_1020,
      SEL => CLK_Counter_module_counter_16_FROM,
      O => CLK_Counter_module_Mcount_counter_cy_16_Q_1021
    );
  CLK_Counter_module_Mcount_counter_xor_16_Q : X_XOR2
    generic map(
      LOC => "CLB_R20C21.S0"
    )
    port map (
      I0 => CLK_Counter_module_counter_16_CYINIT_1020,
      I1 => CLK_Counter_module_counter_16_FROM,
      O => Result(16)
    );
  CLK_Counter_module_counter_16_F : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "CLB_R20C21.S0"
    )
    port map (
      ADR0 => VCC,
      ADR1 => CLK_Counter_module_counter(16),
      ADR2 => VCC,
      ADR3 => VCC,
      O => CLK_Counter_module_counter_16_FROM
    );
  CLK_Counter_module_counter_16_G : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "CLB_R20C21.S0"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => CLK_Counter_module_counter(17),
      ADR3 => VCC,
      O => CLK_Counter_module_counter_16_GROM
    );
  CLK_Counter_module_Mcount_counter_cy_17_Q : X_MUX2
    generic map(
      LOC => "CLB_R20C21.S0"
    )
    port map (
      IA => CLK_Counter_module_counter_16_LOGIC_ZERO_1023,
      IB => CLK_Counter_module_Mcount_counter_cy_16_Q_1021,
      SEL => CLK_Counter_module_counter_16_GROM,
      O => CLK_Counter_module_counter_16_CYMUXG
    );
  CLK_Counter_module_Mcount_counter_xor_17_Q : X_XOR2
    generic map(
      LOC => "CLB_R20C21.S0"
    )
    port map (
      I0 => CLK_Counter_module_Mcount_counter_cy_16_Q_1021,
      I1 => CLK_Counter_module_counter_16_GROM,
      O => Result(17)
    );
  CLK_Counter_module_counter_16_CYINIT : X_BUF
    generic map(
      LOC => "CLB_R20C21.S0"
    )
    port map (
      I => CLK_Counter_module_counter_14_CYMUXG,
      O => CLK_Counter_module_counter_16_CYINIT_1020
    );
  CLK_Counter_module_counter_16 : X_SFF
    generic map(
      LOC => "CLB_R20C21.S0",
      INIT => '0'
    )
    port map (
      I => Result(16),
      CE => VCC,
      CLK => CLK_BUFGP,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => CLK_Counter_module_temporal_cmp_eq0000_0,
      O => CLK_Counter_module_counter(16)
    );
  CLK_Counter_module_counter_19 : X_SFF
    generic map(
      LOC => "CLB_R19C21.S0",
      INIT => '0'
    )
    port map (
      I => Result(19),
      CE => VCC,
      CLK => CLK_BUFGP,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => CLK_Counter_module_temporal_cmp_eq0000_0,
      O => CLK_Counter_module_counter(19)
    );
  CLK_Counter_module_counter_18_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "CLB_R19C21.S0"
    )
    port map (
      O => CLK_Counter_module_counter_18_LOGIC_ZERO_1053
    );
  CLK_Counter_module_Mcount_counter_cy_18_Q : X_MUX2
    generic map(
      LOC => "CLB_R19C21.S0"
    )
    port map (
      IA => CLK_Counter_module_counter_18_LOGIC_ZERO_1053,
      IB => CLK_Counter_module_counter_18_CYINIT_1050,
      SEL => CLK_Counter_module_counter_18_FROM,
      O => CLK_Counter_module_Mcount_counter_cy_18_Q_1051
    );
  CLK_Counter_module_Mcount_counter_xor_18_Q : X_XOR2
    generic map(
      LOC => "CLB_R19C21.S0"
    )
    port map (
      I0 => CLK_Counter_module_counter_18_CYINIT_1050,
      I1 => CLK_Counter_module_counter_18_FROM,
      O => Result(18)
    );
  CLK_Counter_module_counter_18_F : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "CLB_R19C21.S0"
    )
    port map (
      ADR0 => VCC,
      ADR1 => CLK_Counter_module_counter(18),
      ADR2 => VCC,
      ADR3 => VCC,
      O => CLK_Counter_module_counter_18_FROM
    );
  CLK_Counter_module_counter_18_G : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "CLB_R19C21.S0"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => CLK_Counter_module_counter(19),
      ADR3 => VCC,
      O => CLK_Counter_module_counter_18_GROM
    );
  CLK_Counter_module_Mcount_counter_cy_19_Q : X_MUX2
    generic map(
      LOC => "CLB_R19C21.S0"
    )
    port map (
      IA => CLK_Counter_module_counter_18_LOGIC_ZERO_1053,
      IB => CLK_Counter_module_Mcount_counter_cy_18_Q_1051,
      SEL => CLK_Counter_module_counter_18_GROM,
      O => CLK_Counter_module_counter_18_CYMUXG
    );
  CLK_Counter_module_Mcount_counter_xor_19_Q : X_XOR2
    generic map(
      LOC => "CLB_R19C21.S0"
    )
    port map (
      I0 => CLK_Counter_module_Mcount_counter_cy_18_Q_1051,
      I1 => CLK_Counter_module_counter_18_GROM,
      O => Result(19)
    );
  CLK_Counter_module_counter_18_CYINIT : X_BUF
    generic map(
      LOC => "CLB_R19C21.S0"
    )
    port map (
      I => CLK_Counter_module_counter_16_CYMUXG,
      O => CLK_Counter_module_counter_18_CYINIT_1050
    );
  CLK_Counter_module_counter_18 : X_SFF
    generic map(
      LOC => "CLB_R19C21.S0",
      INIT => '0'
    )
    port map (
      I => Result(18),
      CE => VCC,
      CLK => CLK_BUFGP,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => CLK_Counter_module_temporal_cmp_eq0000_0,
      O => CLK_Counter_module_counter(18)
    );
  CLK_Counter_module_counter_20 : X_SFF
    generic map(
      LOC => "CLB_R18C21.S0",
      INIT => '0'
    )
    port map (
      I => Result(20),
      CE => VCC,
      CLK => CLK_BUFGP,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => CLK_Counter_module_temporal_cmp_eq0000_0,
      O => CLK_Counter_module_counter(20)
    );
  CLK_Counter_module_counter_21 : X_SFF
    generic map(
      LOC => "CLB_R18C21.S0",
      INIT => '0'
    )
    port map (
      I => Result(21),
      CE => VCC,
      CLK => CLK_BUFGP,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => CLK_Counter_module_temporal_cmp_eq0000_0,
      O => CLK_Counter_module_counter(21)
    );
  CLK_Counter_module_counter_20_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "CLB_R18C21.S0"
    )
    port map (
      O => CLK_Counter_module_counter_20_LOGIC_ZERO_1083
    );
  CLK_Counter_module_Mcount_counter_cy_20_Q : X_MUX2
    generic map(
      LOC => "CLB_R18C21.S0"
    )
    port map (
      IA => CLK_Counter_module_counter_20_LOGIC_ZERO_1083,
      IB => CLK_Counter_module_counter_20_CYINIT_1080,
      SEL => CLK_Counter_module_counter_20_FROM,
      O => CLK_Counter_module_Mcount_counter_cy_20_Q_1081
    );
  CLK_Counter_module_Mcount_counter_xor_20_Q : X_XOR2
    generic map(
      LOC => "CLB_R18C21.S0"
    )
    port map (
      I0 => CLK_Counter_module_counter_20_CYINIT_1080,
      I1 => CLK_Counter_module_counter_20_FROM,
      O => Result(20)
    );
  CLK_Counter_module_counter_20_F : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "CLB_R18C21.S0"
    )
    port map (
      ADR0 => VCC,
      ADR1 => CLK_Counter_module_counter(20),
      ADR2 => VCC,
      ADR3 => VCC,
      O => CLK_Counter_module_counter_20_FROM
    );
  CLK_Counter_module_counter_20_G : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "CLB_R18C21.S0"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => CLK_Counter_module_counter(21),
      ADR3 => VCC,
      O => CLK_Counter_module_counter_20_GROM
    );
  CLK_Counter_module_Mcount_counter_cy_21_Q : X_MUX2
    generic map(
      LOC => "CLB_R18C21.S0"
    )
    port map (
      IA => CLK_Counter_module_counter_20_LOGIC_ZERO_1083,
      IB => CLK_Counter_module_Mcount_counter_cy_20_Q_1081,
      SEL => CLK_Counter_module_counter_20_GROM,
      O => CLK_Counter_module_counter_20_CYMUXG
    );
  CLK_Counter_module_Mcount_counter_xor_21_Q : X_XOR2
    generic map(
      LOC => "CLB_R18C21.S0"
    )
    port map (
      I0 => CLK_Counter_module_Mcount_counter_cy_20_Q_1081,
      I1 => CLK_Counter_module_counter_20_GROM,
      O => Result(21)
    );
  CLK_Counter_module_counter_20_CYINIT : X_BUF
    generic map(
      LOC => "CLB_R18C21.S0"
    )
    port map (
      I => CLK_Counter_module_counter_18_CYMUXG,
      O => CLK_Counter_module_counter_20_CYINIT_1080
    );
  s_PL_o_OBUF : X_OBUF
    generic map(
      LOC => "PAD53"
    )
    port map (
      I => s_PL_o_OUTMUX_721,
      O => s_PL_o
    );
  s_PL_o_OUTMUX : X_INV
    generic map(
      LOC => "PAD53"
    )
    port map (
      I => notPL_IBUF_0,
      O => s_PL_o_OUTMUX_721
    );
  s_notOUTPUT_o_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD12"
    )
    port map (
      I => s_notOUTPUT_o_0_OUTMUX_725,
      O => s_notOUTPUT_o(0)
    );
  s_notOUTPUT_o_0_OUTMUX : X_BUF
    generic map(
      LOC => "PAD12"
    )
    port map (
      I => Counter_Module_Trigger_0_qbartemp_590,
      O => s_notOUTPUT_o_0_OUTMUX_725
    );
  s_notCPD_o_OBUF : X_OBUF
    generic map(
      LOC => "PAD48"
    )
    port map (
      I => s_notCPD_o_OUTMUX_729,
      O => s_notCPD_o
    );
  s_notCPD_o_OUTMUX : X_BUF
    generic map(
      LOC => "PAD48"
    )
    port map (
      I => s_notCPD_o_OBUF_1341,
      O => s_notCPD_o_OUTMUX_729
    );
  s_notOUTPUT_o_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD13"
    )
    port map (
      I => s_notOUTPUT_o_1_OUTMUX_733,
      O => s_notOUTPUT_o(1)
    );
  s_notOUTPUT_o_1_OUTMUX : X_BUF
    generic map(
      LOC => "PAD13"
    )
    port map (
      I => Counter_Module_Trigger_1_qbartemp_592,
      O => s_notOUTPUT_o_1_OUTMUX_733
    );
  s_notT_o_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD28"
    )
    port map (
      I => s_notT_o_0_OUTMUX_739,
      O => s_notT_o(0)
    );
  s_notT_o_0_OUTMUX : X_BUF
    generic map(
      LOC => "PAD28"
    )
    port map (
      I => s_notT_o_0_OBUF_0,
      O => s_notT_o_0_OUTMUX_739
    );
  s_notOUTPUT_o_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD14"
    )
    port map (
      I => s_notOUTPUT_o_2_OUTMUX_743,
      O => s_notOUTPUT_o(2)
    );
  s_notOUTPUT_o_2_OUTMUX : X_BUF
    generic map(
      LOC => "PAD14"
    )
    port map (
      I => Counter_Module_Trigger_2_qbartemp_595,
      O => s_notOUTPUT_o_2_OUTMUX_743
    );
  CPD_IMUX : X_BUF
    generic map(
      LOC => "PAD192"
    )
    port map (
      I => CPD_IBUF_746,
      O => CPD_IBUF_0
    );
  CPD_IBUF : X_BUF
    generic map(
      LOC => "PAD192"
    )
    port map (
      I => CPD,
      O => CPD_IBUF_746
    );
  s_notT_o_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD23"
    )
    port map (
      I => s_notT_o_1_OUTMUX_750,
      O => s_notT_o(1)
    );
  s_notT_o_1_OUTMUX : X_BUF
    generic map(
      LOC => "PAD23"
    )
    port map (
      I => s_notT_o_1_OBUF_0,
      O => s_notT_o_1_OUTMUX_750
    );
  s_notOUTPUT_o_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD17"
    )
    port map (
      I => s_notOUTPUT_o_3_OUTMUX_754,
      O => s_notOUTPUT_o(3)
    );
  s_notOUTPUT_o_3_OUTMUX : X_BUF
    generic map(
      LOC => "PAD17"
    )
    port map (
      I => Counter_Module_Trigger_3_qbartemp_598,
      O => s_notOUTPUT_o_3_OUTMUX_754
    );
  s_notT_o_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD32"
    )
    port map (
      I => s_notT_o_2_OUTMUX_758,
      O => s_notT_o(2)
    );
  s_notT_o_2_OUTMUX : X_BUF
    generic map(
      LOC => "PAD32"
    )
    port map (
      I => s_notT_o_2_OBUF_0,
      O => s_notT_o_2_OUTMUX_758
    );
  notTCD_OBUF : X_OBUF
    generic map(
      LOC => "PAD235"
    )
    port map (
      I => notTCD_OUTMUX_762,
      O => notTCD
    );
  notTCD_OUTMUX : X_BUF
    generic map(
      LOC => "PAD235"
    )
    port map (
      I => notTCD_OBUF_1306,
      O => notTCD_OUTMUX_762
    );
  s_notT_o_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD31"
    )
    port map (
      I => s_notT_o_3_OUTMUX_766,
      O => s_notT_o(3)
    );
  s_notT_o_3_OUTMUX : X_BUF
    generic map(
      LOC => "PAD31"
    )
    port map (
      I => s_notT_o_3_OBUF_0,
      O => s_notT_o_3_OUTMUX_766
    );
  CLK_Counter_module_counter_1 : X_SFF
    generic map(
      LOC => "CLB_R28C21.S0",
      INIT => '0'
    )
    port map (
      I => Result(1),
      CE => VCC,
      CLK => CLK_BUFGP,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => CLK_Counter_module_temporal_cmp_eq0000_0,
      O => CLK_Counter_module_counter(1)
    );
  CLK_Counter_module_counter_0_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "CLB_R28C21.S0"
    )
    port map (
      O => CLK_Counter_module_counter_0_LOGIC_ZERO_783
    );
  CLK_Counter_module_Mcount_counter_cy_0_Q : X_MUX2
    generic map(
      LOC => "CLB_R28C21.S0"
    )
    port map (
      IA => GLOBAL_LOGIC1,
      IB => CLK_Counter_module_counter_0_LOGIC_ZERO_783,
      SEL => CLK_Counter_module_Mcount_counter_lut(0),
      O => CLK_Counter_module_Mcount_counter_cy_0_Q_785
    );
  CLK_Counter_module_Mcount_counter_lut_0_INV_0 : X_LUT4
    generic map(
      INIT => X"3333",
      LOC => "CLB_R28C21.S0"
    )
    port map (
      ADR0 => GLOBAL_LOGIC1,
      ADR1 => CLK_Counter_module_counter(0),
      ADR2 => VCC,
      ADR3 => VCC,
      O => CLK_Counter_module_Mcount_counter_lut(0)
    );
  CLK_Counter_module_counter_0_G : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "CLB_R28C21.S0"
    )
    port map (
      ADR0 => GLOBAL_LOGIC0,
      ADR1 => VCC,
      ADR2 => CLK_Counter_module_counter(1),
      ADR3 => VCC,
      O => CLK_Counter_module_counter_0_GROM
    );
  CLK_Counter_module_Mcount_counter_cy_1_Q : X_MUX2
    generic map(
      LOC => "CLB_R28C21.S0"
    )
    port map (
      IA => GLOBAL_LOGIC0,
      IB => CLK_Counter_module_Mcount_counter_cy_0_Q_785,
      SEL => CLK_Counter_module_counter_0_GROM,
      O => CLK_Counter_module_counter_0_CYMUXG
    );
  CLK_Counter_module_Mcount_counter_xor_1_Q : X_XOR2
    generic map(
      LOC => "CLB_R28C21.S0"
    )
    port map (
      I0 => CLK_Counter_module_Mcount_counter_cy_0_Q_785,
      I1 => CLK_Counter_module_counter_0_GROM,
      O => Result(1)
    );
  CLK_Counter_module_counter_0 : X_SFF
    generic map(
      LOC => "CLB_R28C21.S0",
      INIT => '0'
    )
    port map (
      I => CLK_Counter_module_Mcount_counter_lut(0),
      CE => VCC,
      CLK => CLK_BUFGP,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => CLK_Counter_module_temporal_cmp_eq0000_0,
      O => CLK_Counter_module_counter(0)
    );
  CLK_Counter_module_counter_3 : X_SFF
    generic map(
      LOC => "CLB_R27C21.S0",
      INIT => '0'
    )
    port map (
      I => Result(3),
      CE => VCC,
      CLK => CLK_BUFGP,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => CLK_Counter_module_temporal_cmp_eq0000_0,
      O => CLK_Counter_module_counter(3)
    );
  CLK_Counter_module_counter_2_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "CLB_R27C21.S0"
    )
    port map (
      O => CLK_Counter_module_counter_2_LOGIC_ZERO_813
    );
  CLK_Counter_module_Mcount_counter_cy_2_Q : X_MUX2
    generic map(
      LOC => "CLB_R27C21.S0"
    )
    port map (
      IA => CLK_Counter_module_counter_2_LOGIC_ZERO_813,
      IB => CLK_Counter_module_counter_2_CYINIT_810,
      SEL => CLK_Counter_module_counter_2_FROM,
      O => CLK_Counter_module_Mcount_counter_cy_2_Q_811
    );
  CLK_Counter_module_Mcount_counter_xor_2_Q : X_XOR2
    generic map(
      LOC => "CLB_R27C21.S0"
    )
    port map (
      I0 => CLK_Counter_module_counter_2_CYINIT_810,
      I1 => CLK_Counter_module_counter_2_FROM,
      O => Result(2)
    );
  CLK_Counter_module_counter_2_F : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "CLB_R27C21.S0"
    )
    port map (
      ADR0 => VCC,
      ADR1 => CLK_Counter_module_counter(2),
      ADR2 => VCC,
      ADR3 => VCC,
      O => CLK_Counter_module_counter_2_FROM
    );
  CLK_Counter_module_counter_2_G : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "CLB_R27C21.S0"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => CLK_Counter_module_counter(3),
      ADR3 => VCC,
      O => CLK_Counter_module_counter_2_GROM
    );
  CLK_Counter_module_Mcount_counter_cy_3_Q : X_MUX2
    generic map(
      LOC => "CLB_R27C21.S0"
    )
    port map (
      IA => CLK_Counter_module_counter_2_LOGIC_ZERO_813,
      IB => CLK_Counter_module_Mcount_counter_cy_2_Q_811,
      SEL => CLK_Counter_module_counter_2_GROM,
      O => CLK_Counter_module_counter_2_CYMUXG
    );
  CLK_Counter_module_Mcount_counter_xor_3_Q : X_XOR2
    generic map(
      LOC => "CLB_R27C21.S0"
    )
    port map (
      I0 => CLK_Counter_module_Mcount_counter_cy_2_Q_811,
      I1 => CLK_Counter_module_counter_2_GROM,
      O => Result(3)
    );
  CLK_Counter_module_counter_2_CYINIT : X_BUF
    generic map(
      LOC => "CLB_R27C21.S0"
    )
    port map (
      I => CLK_Counter_module_counter_0_CYMUXG,
      O => CLK_Counter_module_counter_2_CYINIT_810
    );
  CLK_Counter_module_counter_2 : X_SFF
    generic map(
      LOC => "CLB_R27C21.S0",
      INIT => '0'
    )
    port map (
      I => Result(2),
      CE => VCC,
      CLK => CLK_BUFGP,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => CLK_Counter_module_temporal_cmp_eq0000_0,
      O => CLK_Counter_module_counter(2)
    );
  CLK_Counter_module_counter_5 : X_SFF
    generic map(
      LOC => "CLB_R26C21.S0",
      INIT => '0'
    )
    port map (
      I => Result(5),
      CE => VCC,
      CLK => CLK_BUFGP,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => CLK_Counter_module_temporal_cmp_eq0000_0,
      O => CLK_Counter_module_counter(5)
    );
  CLK_Counter_module_counter_4_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "CLB_R26C21.S0"
    )
    port map (
      O => CLK_Counter_module_counter_4_LOGIC_ZERO_843
    );
  CLK_Counter_module_Mcount_counter_cy_4_Q : X_MUX2
    generic map(
      LOC => "CLB_R26C21.S0"
    )
    port map (
      IA => CLK_Counter_module_counter_4_LOGIC_ZERO_843,
      IB => CLK_Counter_module_counter_4_CYINIT_840,
      SEL => CLK_Counter_module_counter_4_FROM,
      O => CLK_Counter_module_Mcount_counter_cy_4_Q_841
    );
  CLK_Counter_module_Mcount_counter_xor_4_Q : X_XOR2
    generic map(
      LOC => "CLB_R26C21.S0"
    )
    port map (
      I0 => CLK_Counter_module_counter_4_CYINIT_840,
      I1 => CLK_Counter_module_counter_4_FROM,
      O => Result(4)
    );
  CLK_Counter_module_counter_4_F : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "CLB_R26C21.S0"
    )
    port map (
      ADR0 => VCC,
      ADR1 => CLK_Counter_module_counter(4),
      ADR2 => VCC,
      ADR3 => VCC,
      O => CLK_Counter_module_counter_4_FROM
    );
  CLK_Counter_module_counter_4_G : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "CLB_R26C21.S0"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => CLK_Counter_module_counter(5),
      ADR3 => VCC,
      O => CLK_Counter_module_counter_4_GROM
    );
  CLK_Counter_module_Mcount_counter_cy_5_Q : X_MUX2
    generic map(
      LOC => "CLB_R26C21.S0"
    )
    port map (
      IA => CLK_Counter_module_counter_4_LOGIC_ZERO_843,
      IB => CLK_Counter_module_Mcount_counter_cy_4_Q_841,
      SEL => CLK_Counter_module_counter_4_GROM,
      O => CLK_Counter_module_counter_4_CYMUXG
    );
  CLK_Counter_module_Mcount_counter_xor_5_Q : X_XOR2
    generic map(
      LOC => "CLB_R26C21.S0"
    )
    port map (
      I0 => CLK_Counter_module_Mcount_counter_cy_4_Q_841,
      I1 => CLK_Counter_module_counter_4_GROM,
      O => Result(5)
    );
  CLK_Counter_module_counter_4_CYINIT : X_BUF
    generic map(
      LOC => "CLB_R26C21.S0"
    )
    port map (
      I => CLK_Counter_module_counter_2_CYMUXG,
      O => CLK_Counter_module_counter_4_CYINIT_840
    );
  CLK_Counter_module_counter_4 : X_SFF
    generic map(
      LOC => "CLB_R26C21.S0",
      INIT => '0'
    )
    port map (
      I => Result(4),
      CE => VCC,
      CLK => CLK_BUFGP,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => CLK_Counter_module_temporal_cmp_eq0000_0,
      O => CLK_Counter_module_counter(4)
    );
  s_and_2_o_OBUF : X_OBUF
    generic map(
      LOC => "PAD33"
    )
    port map (
      I => s_and_2_o_OUTMUX_681,
      O => s_and_2_o
    );
  s_and_2_o_OUTMUX : X_BUF
    generic map(
      LOC => "PAD33"
    )
    port map (
      I => s_and_2_o_OBUF_579,
      O => s_and_2_o_OUTMUX_681
    );
  s_notCPU_o_OBUF : X_OBUF
    generic map(
      LOC => "PAD34"
    )
    port map (
      I => s_notCPU_o_OUTMUX_685,
      O => s_notCPU_o
    );
  s_notCPU_o_OUTMUX : X_BUF
    generic map(
      LOC => "PAD34"
    )
    port map (
      I => s_notCPU_o_OBUF_1516,
      O => s_notCPU_o_OUTMUX_685
    );
  s_and_3_o_OBUF : X_OBUF
    generic map(
      LOC => "PAD37"
    )
    port map (
      I => s_and_3_o_OUTMUX_689,
      O => s_and_3_o
    );
  s_and_3_o_OUTMUX : X_BUF
    generic map(
      LOC => "PAD37"
    )
    port map (
      I => s_and_3_o_OBUF_581,
      O => s_and_3_o_OUTMUX_689
    );
  OUTPUT_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD127"
    )
    port map (
      I => OUTPUT_0_OUTMUX_693,
      O => OUTPUT(0)
    );
  OUTPUT_0_OUTMUX : X_BUF
    generic map(
      LOC => "PAD127"
    )
    port map (
      I => Counter_Module_Trigger_0_qtemp_582,
      O => OUTPUT_0_OUTMUX_693
    );
  s_and_4_o_OBUF : X_OBUF
    generic map(
      LOC => "PAD38"
    )
    port map (
      I => s_and_4_o_OUTMUX_697,
      O => s_and_4_o
    );
  s_and_4_o_OUTMUX : X_BUF
    generic map(
      LOC => "PAD38"
    )
    port map (
      I => s_and_4_o_OBUF_0,
      O => s_and_4_o_OUTMUX_697
    );
  OUTPUT_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD126"
    )
    port map (
      I => OUTPUT_1_OUTMUX_701,
      O => OUTPUT(1)
    );
  OUTPUT_1_OUTMUX : X_BUF
    generic map(
      LOC => "PAD126"
    )
    port map (
      I => Counter_Module_Trigger_1_qtemp_584,
      O => OUTPUT_1_OUTMUX_701
    );
  OUTPUT_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD85"
    )
    port map (
      I => OUTPUT_2_OUTMUX_705,
      O => OUTPUT(2)
    );
  OUTPUT_2_OUTMUX : X_BUF
    generic map(
      LOC => "PAD85"
    )
    port map (
      I => Counter_Module_Trigger_2_qtemp_585,
      O => OUTPUT_2_OUTMUX_705
    );
  s_and_5_o_OBUF : X_OBUF
    generic map(
      LOC => "PAD44"
    )
    port map (
      I => s_and_5_o_OUTMUX_709,
      O => s_and_5_o
    );
  s_and_5_o_OUTMUX : X_BUF
    generic map(
      LOC => "PAD44"
    )
    port map (
      I => s_and_5_o_OBUF_0,
      O => s_and_5_o_OUTMUX_709
    );
  OUTPUT_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD98"
    )
    port map (
      I => OUTPUT_3_OUTMUX_713,
      O => OUTPUT(3)
    );
  OUTPUT_3_OUTMUX : X_BUF
    generic map(
      LOC => "PAD98"
    )
    port map (
      I => Counter_Module_Trigger_3_qtemp_587,
      O => OUTPUT_3_OUTMUX_713
    );
  s_and_6_o_OBUF : X_OBUF
    generic map(
      LOC => "PAD47"
    )
    port map (
      I => s_and_6_o_OUTMUX_717,
      O => s_and_6_o
    );
  s_and_6_o_OUTMUX : X_BUF
    generic map(
      LOC => "PAD47"
    )
    port map (
      I => s_and_6_o_OBUF_1254,
      O => s_and_6_o_OUTMUX_717
    );
  GLOBAL_LOGIC1_VCC : X_ONE
    port map (
      O => GLOBAL_LOGIC1
    );
  GLOBAL_LOGIC0_GND : X_ZERO
    port map (
      O => GLOBAL_LOGIC0
    );
  CLK_BUFGP_BUFG_BUF : X_CKBUF
    generic map(
      LOC => "GCLKBUF1"
    )
    port map (
      I => CLK,
      O => CLK_BUFGP
    );
  NlwBlock_Full_Device_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlock_Full_Device_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

