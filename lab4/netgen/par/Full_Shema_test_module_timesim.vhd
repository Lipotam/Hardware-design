--------------------------------------------------------------------------------
-- Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: K.31
--  \   \         Application: netgen
--  /   /         Filename: Full_Shema_test_module_timesim.vhd
-- /___/   /\     Timestamp: Thu Nov 14 14:26:29 2013
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 5 -pcf Full_Device.pcf -rpw 100 -tpw 0 -ar Structure -tm Full_Device -insert_pp_buffers false -w -dir netgen/par -ofmt vhdl -sim Full_Device.ncd Full_Shema_test_module_timesim.vhd 
-- Device	: 2s200fg256-5 (PRODUCTION 1.27 2008-01-09)
-- Input file	: Full_Device.ncd
-- Output file	: D:\OwnProjects\HardwareDesign\lab4\netgen\par\Full_Shema_test_module_timesim.vhd
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
  signal DATA_0_IBUF_0 : STD_LOGIC; 
  signal CPU_IBUF_0 : STD_LOGIC; 
  signal DATA_1_IBUF_0 : STD_LOGIC; 
  signal DATA_2_IBUF_0 : STD_LOGIC; 
  signal DATA_3_IBUF_0 : STD_LOGIC; 
  signal notPL_IBUF_0 : STD_LOGIC; 
  signal MR_IBUF_0 : STD_LOGIC; 
  signal Counter_Module_Trigger_0_jk_qtemp_444 : STD_LOGIC; 
  signal Counter_Module_Trigger_1_jk_qtemp_445 : STD_LOGIC; 
  signal Counter_Module_Trigger_2_jk_qtemp_446 : STD_LOGIC; 
  signal Counter_Module_Trigger_3_jk_qtemp_447 : STD_LOGIC; 
  signal CPD_IBUF_0 : STD_LOGIC; 
  signal CLK_BUFGP : STD_LOGIC; 
  signal GLOBAL_LOGIC1 : STD_LOGIC; 
  signal GLOBAL_LOGIC0 : STD_LOGIC; 
  signal CLK_Counter_module_temporal_cmp_eq0000_0 : STD_LOGIC; 
  signal cpu_in_0 : STD_LOGIC; 
  signal Counter_Module_N9 : STD_LOGIC; 
  signal Counter_Module_Trigger_2_jk_qbartemp_498 : STD_LOGIC; 
  signal Counter_Module_Trigger_3_T_SW0_O : STD_LOGIC; 
  signal Counter_Module_Trigger_3_T_0 : STD_LOGIC; 
  signal N8 : STD_LOGIC; 
  signal Counter_Module_Trigger_1_jk_qbartemp_502 : STD_LOGIC; 
  signal Counter_Module_Trigger_3_jk_qbartemp_503 : STD_LOGIC; 
  signal Counter_Module_Trigger_1_T12_O : STD_LOGIC; 
  signal N6_0 : STD_LOGIC; 
  signal Counter_Module_Trigger_1_T_0 : STD_LOGIC; 
  signal CLK_Counter_module_temporal_507 : STD_LOGIC; 
  signal Counter_Module_Trigger_3_jk_R_inv_0 : STD_LOGIC; 
  signal Counter_Module_Trigger_3_jk_S_inv_0 : STD_LOGIC; 
  signal Counter_Module_Trigger_0_T_0 : STD_LOGIC; 
  signal Counter_Module_Trigger_0_jk_qbartemp_511 : STD_LOGIC; 
  signal Counter_Module_Trigger_0_jk_R_inv_0 : STD_LOGIC; 
  signal Counter_Module_Trigger_0_jk_S_inv_0 : STD_LOGIC; 
  signal Counter_Module_Trigger_2_jk_R_inv_0 : STD_LOGIC; 
  signal Counter_Module_Trigger_2_T_0 : STD_LOGIC; 
  signal Counter_Module_Trigger_2_jk_S_inv_0 : STD_LOGIC; 
  signal Counter_Module_Trigger_1_jk_S_inv_0 : STD_LOGIC; 
  signal Counter_Module_Trigger_1_jk_R_inv_0 : STD_LOGIC; 
  signal N21_0 : STD_LOGIC; 
  signal OUTPUT_1_OUTMUX_552 : STD_LOGIC; 
  signal OUTPUT_2_OUTMUX_556 : STD_LOGIC; 
  signal OUTPUT_3_OUTMUX_560 : STD_LOGIC; 
  signal CPD_IBUF_565 : STD_LOGIC; 
  signal notTCD_OUTMUX_569 : STD_LOGIC; 
  signal CLK_Counter_module_counter_0_CYMUXG : STD_LOGIC; 
  signal CLK_Counter_module_counter_0_GROM : STD_LOGIC; 
  signal CLK_Counter_module_Mcount_counter_cy_0_Q_588 : STD_LOGIC; 
  signal CLK_Counter_module_counter_0_LOGIC_ZERO_586 : STD_LOGIC; 
  signal CLK_Counter_module_counter_2_FROM : STD_LOGIC; 
  signal CLK_Counter_module_counter_2_CYMUXG : STD_LOGIC; 
  signal CLK_Counter_module_counter_2_LOGIC_ZERO_616 : STD_LOGIC; 
  signal CLK_Counter_module_counter_2_GROM : STD_LOGIC; 
  signal CLK_Counter_module_Mcount_counter_cy_2_Q_614 : STD_LOGIC; 
  signal CLK_Counter_module_counter_2_CYINIT_613 : STD_LOGIC; 
  signal CLK_Counter_module_counter_4_FROM : STD_LOGIC; 
  signal CLK_Counter_module_counter_4_CYMUXG : STD_LOGIC; 
  signal CLK_Counter_module_counter_4_LOGIC_ZERO_646 : STD_LOGIC; 
  signal CLK_Counter_module_counter_4_GROM : STD_LOGIC; 
  signal CLK_Counter_module_Mcount_counter_cy_4_Q_644 : STD_LOGIC; 
  signal CLK_Counter_module_counter_4_CYINIT_643 : STD_LOGIC; 
  signal CLK_Counter_module_counter_6_FROM : STD_LOGIC; 
  signal CLK_Counter_module_counter_6_CYMUXG : STD_LOGIC; 
  signal CLK_Counter_module_counter_6_LOGIC_ZERO_676 : STD_LOGIC; 
  signal CLK_Counter_module_counter_6_GROM : STD_LOGIC; 
  signal CLK_Counter_module_Mcount_counter_cy_6_Q_674 : STD_LOGIC; 
  signal CLK_Counter_module_counter_6_CYINIT_673 : STD_LOGIC; 
  signal CLK_Counter_module_counter_8_FROM : STD_LOGIC; 
  signal CLK_Counter_module_counter_8_CYMUXG : STD_LOGIC; 
  signal CLK_Counter_module_counter_8_LOGIC_ZERO_706 : STD_LOGIC; 
  signal CLK_Counter_module_counter_8_GROM : STD_LOGIC; 
  signal CLK_Counter_module_Mcount_counter_cy_8_Q_704 : STD_LOGIC; 
  signal CLK_Counter_module_counter_8_CYINIT_703 : STD_LOGIC; 
  signal CLK_Counter_module_counter_10_FROM : STD_LOGIC; 
  signal CLK_Counter_module_counter_10_CYMUXG : STD_LOGIC; 
  signal CLK_Counter_module_counter_10_LOGIC_ZERO_736 : STD_LOGIC; 
  signal CLK_Counter_module_counter_10_GROM : STD_LOGIC; 
  signal CLK_Counter_module_Mcount_counter_cy_10_Q_734 : STD_LOGIC; 
  signal CLK_Counter_module_counter_10_CYINIT_733 : STD_LOGIC; 
  signal DATA_0_IBUF_522 : STD_LOGIC; 
  signal CPU_IBUF_525 : STD_LOGIC; 
  signal DATA_1_IBUF_528 : STD_LOGIC; 
  signal notTCU_OUTMUX_532 : STD_LOGIC; 
  signal DATA_2_IBUF_535 : STD_LOGIC; 
  signal DATA_3_IBUF_538 : STD_LOGIC; 
  signal notPL_IBUF_541 : STD_LOGIC; 
  signal MR_IBUF_544 : STD_LOGIC; 
  signal OUTPUT_0_OUTMUX_548 : STD_LOGIC; 
  signal Counter_Module_Trigger_3_jk_qbartemp_BXMUXNOT : STD_LOGIC; 
  signal Counter_Module_Trigger_3_jk_qbartemp_FFX_SET : STD_LOGIC; 
  signal Counter_Module_Trigger_3_jk_qbartemp_FFX_RST : STD_LOGIC; 
  signal Counter_Module_N9_pack_1 : STD_LOGIC; 
  signal Counter_Module_Trigger_2_T_1263 : STD_LOGIC; 
  signal N6 : STD_LOGIC; 
  signal CLK_Counter_module_temporal_cmp_eq0000_wg_cy_1_CYMUXG : STD_LOGIC; 
  signal CLK_Counter_module_temporal_cmp_eq0000_wg_cy_0_Q_968 : STD_LOGIC; 
  signal CLK_Counter_module_temporal_cmp_eq0000_wg_cy_1_LOGIC_ZERO_967 : STD_LOGIC; 
  signal CLK_Counter_module_temporal_cmp_eq0000_wg_cy_1_LOGIC_ONE_965 : STD_LOGIC; 
  signal CLK_Counter_module_temporal_cmp_eq0000_wg_cy_3_CYMUXG : STD_LOGIC; 
  signal CLK_Counter_module_temporal_cmp_eq0000_wg_cy_2_Q_986 : STD_LOGIC; 
  signal CLK_Counter_module_temporal_cmp_eq0000_wg_cy_3_LOGIC_ZERO_985 : STD_LOGIC; 
  signal CLK_Counter_module_temporal_cmp_eq0000_wg_cy_3_CYINIT_984 : STD_LOGIC; 
  signal CLK_Counter_module_temporal_cmp_eq0000_wg_cy_5_CYMUXG : STD_LOGIC; 
  signal CLK_Counter_module_temporal_cmp_eq0000_wg_cy_4_Q_1002 : STD_LOGIC; 
  signal CLK_Counter_module_temporal_cmp_eq0000_wg_cy_5_LOGIC_ZERO_1001 : STD_LOGIC; 
  signal CLK_Counter_module_temporal_cmp_eq0000_wg_cy_5_CYINIT_1000 : STD_LOGIC; 
  signal CLK_Counter_module_temporal_cmp_eq0000_LOGIC_ZERO_1015 : STD_LOGIC; 
  signal CLK_Counter_module_temporal_cmp_eq0000 : STD_LOGIC; 
  signal CLK_Counter_module_temporal_cmp_eq0000_CYINIT_1012 : STD_LOGIC; 
  signal Counter_Module_Trigger_3_T_SW0_O_pack_1 : STD_LOGIC; 
  signal Counter_Module_Trigger_3_T_1026 : STD_LOGIC; 
  signal Counter_Module_Trigger_1_T12_O_pack_1 : STD_LOGIC; 
  signal Counter_Module_Trigger_1_T : STD_LOGIC; 
  signal CLK_Counter_module_temporal_BYMUXNOT : STD_LOGIC; 
  signal Counter_Module_Trigger_3_jk_R_inv : STD_LOGIC; 
  signal Counter_Module_Trigger_3_jk_S_inv : STD_LOGIC; 
  signal Counter_Module_Trigger_0_T : STD_LOGIC; 
  signal cpu_in : STD_LOGIC; 
  signal Counter_Module_Trigger_0_jk_qbartemp_BXMUXNOT : STD_LOGIC; 
  signal Counter_Module_Trigger_0_jk_qbartemp_FFX_SET : STD_LOGIC; 
  signal Counter_Module_Trigger_0_jk_qbartemp_FFX_RST : STD_LOGIC; 
  signal Counter_Module_Trigger_0_jk_qtemp_BXMUXNOT : STD_LOGIC; 
  signal Counter_Module_Trigger_0_jk_qtemp_FFX_SET : STD_LOGIC; 
  signal Counter_Module_Trigger_0_jk_qtemp_FFX_RST : STD_LOGIC; 
  signal Counter_Module_Trigger_2_jk_qbartemp_BXMUXNOT : STD_LOGIC; 
  signal Counter_Module_Trigger_2_jk_qbartemp_FFX_SET : STD_LOGIC; 
  signal Counter_Module_Trigger_2_jk_qbartemp_FFX_RST : STD_LOGIC; 
  signal Counter_Module_Trigger_1_jk_qtemp_BXMUXNOT : STD_LOGIC; 
  signal Counter_Module_Trigger_1_jk_qtemp_FFX_SET : STD_LOGIC; 
  signal Counter_Module_Trigger_1_jk_qtemp_FFX_RST : STD_LOGIC; 
  signal Counter_Module_Trigger_0_jk_S_inv : STD_LOGIC; 
  signal Counter_Module_Trigger_0_jk_R_inv : STD_LOGIC; 
  signal Counter_Module_Trigger_2_jk_qtemp_BXMUXNOT : STD_LOGIC; 
  signal Counter_Module_Trigger_2_jk_qtemp_FFX_SET : STD_LOGIC; 
  signal Counter_Module_Trigger_2_jk_qtemp_FFX_RST : STD_LOGIC; 
  signal N21 : STD_LOGIC; 
  signal notTCU_OBUF_1170 : STD_LOGIC; 
  signal Counter_Module_Trigger_3_jk_qtemp_BXMUXNOT : STD_LOGIC; 
  signal Counter_Module_Trigger_3_jk_qtemp_FFX_SET : STD_LOGIC; 
  signal Counter_Module_Trigger_3_jk_qtemp_FFX_RST : STD_LOGIC; 
  signal Counter_Module_Trigger_1_jk_S_inv : STD_LOGIC; 
  signal Counter_Module_Trigger_1_jk_R_inv : STD_LOGIC; 
  signal N8_pack_1 : STD_LOGIC; 
  signal notTCD_OBUF_1208 : STD_LOGIC; 
  signal Counter_Module_Trigger_2_jk_S_inv : STD_LOGIC; 
  signal Counter_Module_Trigger_2_jk_R_inv : STD_LOGIC; 
  signal Counter_Module_Trigger_1_jk_qbartemp_FFX_RST : STD_LOGIC; 
  signal Counter_Module_Trigger_1_jk_qbartemp_FFX_SET : STD_LOGIC; 
  signal Counter_Module_Trigger_1_jk_qbartemp_BXMUXNOT : STD_LOGIC; 
  signal CLK_Counter_module_counter_12_FROM : STD_LOGIC; 
  signal CLK_Counter_module_counter_12_CYMUXG : STD_LOGIC; 
  signal CLK_Counter_module_counter_12_LOGIC_ZERO_766 : STD_LOGIC; 
  signal CLK_Counter_module_counter_12_GROM : STD_LOGIC; 
  signal CLK_Counter_module_Mcount_counter_cy_12_Q_764 : STD_LOGIC; 
  signal CLK_Counter_module_counter_12_CYINIT_763 : STD_LOGIC; 
  signal CLK_Counter_module_counter_14_FROM : STD_LOGIC; 
  signal CLK_Counter_module_counter_14_CYMUXG : STD_LOGIC; 
  signal CLK_Counter_module_counter_14_LOGIC_ZERO_796 : STD_LOGIC; 
  signal CLK_Counter_module_counter_14_GROM : STD_LOGIC; 
  signal CLK_Counter_module_Mcount_counter_cy_14_Q_794 : STD_LOGIC; 
  signal CLK_Counter_module_counter_14_CYINIT_793 : STD_LOGIC; 
  signal CLK_Counter_module_counter_16_FROM : STD_LOGIC; 
  signal CLK_Counter_module_counter_16_CYMUXG : STD_LOGIC; 
  signal CLK_Counter_module_counter_16_LOGIC_ZERO_826 : STD_LOGIC; 
  signal CLK_Counter_module_counter_16_GROM : STD_LOGIC; 
  signal CLK_Counter_module_Mcount_counter_cy_16_Q_824 : STD_LOGIC; 
  signal CLK_Counter_module_counter_16_CYINIT_823 : STD_LOGIC; 
  signal CLK_Counter_module_counter_18_FROM : STD_LOGIC; 
  signal CLK_Counter_module_counter_18_CYMUXG : STD_LOGIC; 
  signal CLK_Counter_module_counter_18_LOGIC_ZERO_856 : STD_LOGIC; 
  signal CLK_Counter_module_counter_18_GROM : STD_LOGIC; 
  signal CLK_Counter_module_Mcount_counter_cy_18_Q_854 : STD_LOGIC; 
  signal CLK_Counter_module_counter_18_CYINIT_853 : STD_LOGIC; 
  signal CLK_Counter_module_counter_20_FROM : STD_LOGIC; 
  signal CLK_Counter_module_counter_20_CYMUXG : STD_LOGIC; 
  signal CLK_Counter_module_counter_20_LOGIC_ZERO_886 : STD_LOGIC; 
  signal CLK_Counter_module_counter_20_GROM : STD_LOGIC; 
  signal CLK_Counter_module_Mcount_counter_cy_20_Q_884 : STD_LOGIC; 
  signal CLK_Counter_module_counter_20_CYINIT_883 : STD_LOGIC; 
  signal CLK_Counter_module_counter_22_FROM : STD_LOGIC; 
  signal CLK_Counter_module_counter_22_CYMUXG : STD_LOGIC; 
  signal CLK_Counter_module_counter_22_LOGIC_ZERO_916 : STD_LOGIC; 
  signal CLK_Counter_module_counter_22_GROM : STD_LOGIC; 
  signal CLK_Counter_module_Mcount_counter_cy_22_Q_914 : STD_LOGIC; 
  signal CLK_Counter_module_counter_22_CYINIT_913 : STD_LOGIC; 
  signal CLK_Counter_module_counter_24_LOGIC_ZERO_957 : STD_LOGIC; 
  signal CLK_Counter_module_counter_24_FROM : STD_LOGIC; 
  signal CLK_Counter_module_counter_25_rt_944 : STD_LOGIC; 
  signal CLK_Counter_module_Mcount_counter_cy_24_Q_943 : STD_LOGIC; 
  signal CLK_Counter_module_counter_24_CYINIT_942 : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal CLK_Counter_module_counter : STD_LOGIC_VECTOR ( 25 downto 0 ); 
  signal CLK_Counter_module_Mcount_counter_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal Result : STD_LOGIC_VECTOR ( 25 downto 1 ); 
  signal CLK_Counter_module_temporal_cmp_eq0000_wg_lut : STD_LOGIC_VECTOR ( 6 downto 0 ); 
begin
  OUTPUT_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD126"
    )
    port map (
      I => OUTPUT_1_OUTMUX_552,
      O => OUTPUT(1)
    );
  OUTPUT_1_OUTMUX : X_BUF
    generic map(
      LOC => "PAD126"
    )
    port map (
      I => Counter_Module_Trigger_1_jk_qtemp_445,
      O => OUTPUT_1_OUTMUX_552
    );
  OUTPUT_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD85"
    )
    port map (
      I => OUTPUT_2_OUTMUX_556,
      O => OUTPUT(2)
    );
  OUTPUT_2_OUTMUX : X_BUF
    generic map(
      LOC => "PAD85"
    )
    port map (
      I => Counter_Module_Trigger_2_jk_qtemp_446,
      O => OUTPUT_2_OUTMUX_556
    );
  OUTPUT_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD98"
    )
    port map (
      I => OUTPUT_3_OUTMUX_560,
      O => OUTPUT(3)
    );
  OUTPUT_3_OUTMUX : X_BUF
    generic map(
      LOC => "PAD98"
    )
    port map (
      I => Counter_Module_Trigger_3_jk_qtemp_447,
      O => OUTPUT_3_OUTMUX_560
    );
  CPD_IMUX : X_BUF
    generic map(
      LOC => "PAD192"
    )
    port map (
      I => CPD_IBUF_565,
      O => CPD_IBUF_0
    );
  CPD_IBUF : X_BUF
    generic map(
      LOC => "PAD192"
    )
    port map (
      I => CPD,
      O => CPD_IBUF_565
    );
  notTCD_OBUF : X_OBUF
    generic map(
      LOC => "PAD235"
    )
    port map (
      I => notTCD_OUTMUX_569,
      O => notTCD
    );
  notTCD_OUTMUX : X_BUF
    generic map(
      LOC => "PAD235"
    )
    port map (
      I => notTCD_OBUF_1208,
      O => notTCD_OUTMUX_569
    );
  CLK_Counter_module_counter_0_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "CLB_R28C22.S0"
    )
    port map (
      O => CLK_Counter_module_counter_0_LOGIC_ZERO_586
    );
  CLK_Counter_module_Mcount_counter_cy_0_Q : X_MUX2
    generic map(
      LOC => "CLB_R28C22.S0"
    )
    port map (
      IA => GLOBAL_LOGIC1,
      IB => CLK_Counter_module_counter_0_LOGIC_ZERO_586,
      SEL => CLK_Counter_module_Mcount_counter_lut(0),
      O => CLK_Counter_module_Mcount_counter_cy_0_Q_588
    );
  CLK_Counter_module_Mcount_counter_lut_0_INV_0 : X_LUT4
    generic map(
      INIT => X"3333",
      LOC => "CLB_R28C22.S0"
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
      LOC => "CLB_R28C22.S0"
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
      LOC => "CLB_R28C22.S0"
    )
    port map (
      IA => GLOBAL_LOGIC0,
      IB => CLK_Counter_module_Mcount_counter_cy_0_Q_588,
      SEL => CLK_Counter_module_counter_0_GROM,
      O => CLK_Counter_module_counter_0_CYMUXG
    );
  CLK_Counter_module_Mcount_counter_xor_1_Q : X_XOR2
    generic map(
      LOC => "CLB_R28C22.S0"
    )
    port map (
      I0 => CLK_Counter_module_Mcount_counter_cy_0_Q_588,
      I1 => CLK_Counter_module_counter_0_GROM,
      O => Result(1)
    );
  CLK_Counter_module_counter_2_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "CLB_R27C22.S0"
    )
    port map (
      O => CLK_Counter_module_counter_2_LOGIC_ZERO_616
    );
  CLK_Counter_module_Mcount_counter_cy_2_Q : X_MUX2
    generic map(
      LOC => "CLB_R27C22.S0"
    )
    port map (
      IA => CLK_Counter_module_counter_2_LOGIC_ZERO_616,
      IB => CLK_Counter_module_counter_2_CYINIT_613,
      SEL => CLK_Counter_module_counter_2_FROM,
      O => CLK_Counter_module_Mcount_counter_cy_2_Q_614
    );
  CLK_Counter_module_Mcount_counter_xor_2_Q : X_XOR2
    generic map(
      LOC => "CLB_R27C22.S0"
    )
    port map (
      I0 => CLK_Counter_module_counter_2_CYINIT_613,
      I1 => CLK_Counter_module_counter_2_FROM,
      O => Result(2)
    );
  CLK_Counter_module_counter_2_F : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "CLB_R27C22.S0"
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
      INIT => X"CCCC",
      LOC => "CLB_R27C22.S0"
    )
    port map (
      ADR0 => VCC,
      ADR1 => CLK_Counter_module_counter(3),
      ADR2 => VCC,
      ADR3 => VCC,
      O => CLK_Counter_module_counter_2_GROM
    );
  CLK_Counter_module_Mcount_counter_cy_3_Q : X_MUX2
    generic map(
      LOC => "CLB_R27C22.S0"
    )
    port map (
      IA => CLK_Counter_module_counter_2_LOGIC_ZERO_616,
      IB => CLK_Counter_module_Mcount_counter_cy_2_Q_614,
      SEL => CLK_Counter_module_counter_2_GROM,
      O => CLK_Counter_module_counter_2_CYMUXG
    );
  CLK_Counter_module_Mcount_counter_xor_3_Q : X_XOR2
    generic map(
      LOC => "CLB_R27C22.S0"
    )
    port map (
      I0 => CLK_Counter_module_Mcount_counter_cy_2_Q_614,
      I1 => CLK_Counter_module_counter_2_GROM,
      O => Result(3)
    );
  CLK_Counter_module_counter_2_CYINIT : X_BUF
    generic map(
      LOC => "CLB_R27C22.S0"
    )
    port map (
      I => CLK_Counter_module_counter_0_CYMUXG,
      O => CLK_Counter_module_counter_2_CYINIT_613
    );
  CLK_Counter_module_counter_2 : X_SFF
    generic map(
      LOC => "CLB_R27C22.S0",
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
  CLK_Counter_module_counter_4_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "CLB_R26C22.S0"
    )
    port map (
      O => CLK_Counter_module_counter_4_LOGIC_ZERO_646
    );
  CLK_Counter_module_Mcount_counter_cy_4_Q : X_MUX2
    generic map(
      LOC => "CLB_R26C22.S0"
    )
    port map (
      IA => CLK_Counter_module_counter_4_LOGIC_ZERO_646,
      IB => CLK_Counter_module_counter_4_CYINIT_643,
      SEL => CLK_Counter_module_counter_4_FROM,
      O => CLK_Counter_module_Mcount_counter_cy_4_Q_644
    );
  CLK_Counter_module_Mcount_counter_xor_4_Q : X_XOR2
    generic map(
      LOC => "CLB_R26C22.S0"
    )
    port map (
      I0 => CLK_Counter_module_counter_4_CYINIT_643,
      I1 => CLK_Counter_module_counter_4_FROM,
      O => Result(4)
    );
  CLK_Counter_module_counter_4_F : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "CLB_R26C22.S0"
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
      LOC => "CLB_R26C22.S0"
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
      LOC => "CLB_R26C22.S0"
    )
    port map (
      IA => CLK_Counter_module_counter_4_LOGIC_ZERO_646,
      IB => CLK_Counter_module_Mcount_counter_cy_4_Q_644,
      SEL => CLK_Counter_module_counter_4_GROM,
      O => CLK_Counter_module_counter_4_CYMUXG
    );
  CLK_Counter_module_Mcount_counter_xor_5_Q : X_XOR2
    generic map(
      LOC => "CLB_R26C22.S0"
    )
    port map (
      I0 => CLK_Counter_module_Mcount_counter_cy_4_Q_644,
      I1 => CLK_Counter_module_counter_4_GROM,
      O => Result(5)
    );
  CLK_Counter_module_counter_4_CYINIT : X_BUF
    generic map(
      LOC => "CLB_R26C22.S0"
    )
    port map (
      I => CLK_Counter_module_counter_2_CYMUXG,
      O => CLK_Counter_module_counter_4_CYINIT_643
    );
  CLK_Counter_module_counter_4 : X_SFF
    generic map(
      LOC => "CLB_R26C22.S0",
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
  CLK_Counter_module_counter_6_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "CLB_R25C22.S0"
    )
    port map (
      O => CLK_Counter_module_counter_6_LOGIC_ZERO_676
    );
  CLK_Counter_module_Mcount_counter_cy_6_Q : X_MUX2
    generic map(
      LOC => "CLB_R25C22.S0"
    )
    port map (
      IA => CLK_Counter_module_counter_6_LOGIC_ZERO_676,
      IB => CLK_Counter_module_counter_6_CYINIT_673,
      SEL => CLK_Counter_module_counter_6_FROM,
      O => CLK_Counter_module_Mcount_counter_cy_6_Q_674
    );
  CLK_Counter_module_Mcount_counter_xor_6_Q : X_XOR2
    generic map(
      LOC => "CLB_R25C22.S0"
    )
    port map (
      I0 => CLK_Counter_module_counter_6_CYINIT_673,
      I1 => CLK_Counter_module_counter_6_FROM,
      O => Result(6)
    );
  CLK_Counter_module_counter_6_F : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "CLB_R25C22.S0"
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
      LOC => "CLB_R25C22.S0"
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
      LOC => "CLB_R25C22.S0"
    )
    port map (
      IA => CLK_Counter_module_counter_6_LOGIC_ZERO_676,
      IB => CLK_Counter_module_Mcount_counter_cy_6_Q_674,
      SEL => CLK_Counter_module_counter_6_GROM,
      O => CLK_Counter_module_counter_6_CYMUXG
    );
  CLK_Counter_module_Mcount_counter_xor_7_Q : X_XOR2
    generic map(
      LOC => "CLB_R25C22.S0"
    )
    port map (
      I0 => CLK_Counter_module_Mcount_counter_cy_6_Q_674,
      I1 => CLK_Counter_module_counter_6_GROM,
      O => Result(7)
    );
  CLK_Counter_module_counter_6_CYINIT : X_BUF
    generic map(
      LOC => "CLB_R25C22.S0"
    )
    port map (
      I => CLK_Counter_module_counter_4_CYMUXG,
      O => CLK_Counter_module_counter_6_CYINIT_673
    );
  CLK_Counter_module_counter_6 : X_SFF
    generic map(
      LOC => "CLB_R25C22.S0",
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
  CLK_Counter_module_counter_8_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "CLB_R24C22.S0"
    )
    port map (
      O => CLK_Counter_module_counter_8_LOGIC_ZERO_706
    );
  CLK_Counter_module_Mcount_counter_cy_8_Q : X_MUX2
    generic map(
      LOC => "CLB_R24C22.S0"
    )
    port map (
      IA => CLK_Counter_module_counter_8_LOGIC_ZERO_706,
      IB => CLK_Counter_module_counter_8_CYINIT_703,
      SEL => CLK_Counter_module_counter_8_FROM,
      O => CLK_Counter_module_Mcount_counter_cy_8_Q_704
    );
  CLK_Counter_module_Mcount_counter_xor_8_Q : X_XOR2
    generic map(
      LOC => "CLB_R24C22.S0"
    )
    port map (
      I0 => CLK_Counter_module_counter_8_CYINIT_703,
      I1 => CLK_Counter_module_counter_8_FROM,
      O => Result(8)
    );
  CLK_Counter_module_counter_8_F : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "CLB_R24C22.S0"
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
      LOC => "CLB_R24C22.S0"
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
      LOC => "CLB_R24C22.S0"
    )
    port map (
      IA => CLK_Counter_module_counter_8_LOGIC_ZERO_706,
      IB => CLK_Counter_module_Mcount_counter_cy_8_Q_704,
      SEL => CLK_Counter_module_counter_8_GROM,
      O => CLK_Counter_module_counter_8_CYMUXG
    );
  CLK_Counter_module_Mcount_counter_xor_9_Q : X_XOR2
    generic map(
      LOC => "CLB_R24C22.S0"
    )
    port map (
      I0 => CLK_Counter_module_Mcount_counter_cy_8_Q_704,
      I1 => CLK_Counter_module_counter_8_GROM,
      O => Result(9)
    );
  CLK_Counter_module_counter_8_CYINIT : X_BUF
    generic map(
      LOC => "CLB_R24C22.S0"
    )
    port map (
      I => CLK_Counter_module_counter_6_CYMUXG,
      O => CLK_Counter_module_counter_8_CYINIT_703
    );
  CLK_Counter_module_counter_8 : X_SFF
    generic map(
      LOC => "CLB_R24C22.S0",
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
  CLK_Counter_module_counter_10_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "CLB_R23C22.S0"
    )
    port map (
      O => CLK_Counter_module_counter_10_LOGIC_ZERO_736
    );
  CLK_Counter_module_Mcount_counter_cy_10_Q : X_MUX2
    generic map(
      LOC => "CLB_R23C22.S0"
    )
    port map (
      IA => CLK_Counter_module_counter_10_LOGIC_ZERO_736,
      IB => CLK_Counter_module_counter_10_CYINIT_733,
      SEL => CLK_Counter_module_counter_10_FROM,
      O => CLK_Counter_module_Mcount_counter_cy_10_Q_734
    );
  CLK_Counter_module_Mcount_counter_xor_10_Q : X_XOR2
    generic map(
      LOC => "CLB_R23C22.S0"
    )
    port map (
      I0 => CLK_Counter_module_counter_10_CYINIT_733,
      I1 => CLK_Counter_module_counter_10_FROM,
      O => Result(10)
    );
  CLK_Counter_module_counter_10_F : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "CLB_R23C22.S0"
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
      LOC => "CLB_R23C22.S0"
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
      LOC => "CLB_R23C22.S0"
    )
    port map (
      IA => CLK_Counter_module_counter_10_LOGIC_ZERO_736,
      IB => CLK_Counter_module_Mcount_counter_cy_10_Q_734,
      SEL => CLK_Counter_module_counter_10_GROM,
      O => CLK_Counter_module_counter_10_CYMUXG
    );
  CLK_Counter_module_Mcount_counter_xor_11_Q : X_XOR2
    generic map(
      LOC => "CLB_R23C22.S0"
    )
    port map (
      I0 => CLK_Counter_module_Mcount_counter_cy_10_Q_734,
      I1 => CLK_Counter_module_counter_10_GROM,
      O => Result(11)
    );
  CLK_Counter_module_counter_10_CYINIT : X_BUF
    generic map(
      LOC => "CLB_R23C22.S0"
    )
    port map (
      I => CLK_Counter_module_counter_8_CYMUXG,
      O => CLK_Counter_module_counter_10_CYINIT_733
    );
  DATA_0_IMUX : X_BUF
    generic map(
      LOC => "PAD222"
    )
    port map (
      I => DATA_0_IBUF_522,
      O => DATA_0_IBUF_0
    );
  DATA_0_IBUF : X_BUF
    generic map(
      LOC => "PAD222"
    )
    port map (
      I => DATA(0),
      O => DATA_0_IBUF_522
    );
  CPU_IMUX : X_BUF
    generic map(
      LOC => "PAD202"
    )
    port map (
      I => CPU_IBUF_525,
      O => CPU_IBUF_0
    );
  CPU_IBUF : X_BUF
    generic map(
      LOC => "PAD202"
    )
    port map (
      I => CPU,
      O => CPU_IBUF_525
    );
  DATA_1_IMUX : X_BUF
    generic map(
      LOC => "PAD236"
    )
    port map (
      I => DATA_1_IBUF_528,
      O => DATA_1_IBUF_0
    );
  DATA_1_IBUF : X_BUF
    generic map(
      LOC => "PAD236"
    )
    port map (
      I => DATA(1),
      O => DATA_1_IBUF_528
    );
  notTCU_OBUF : X_OBUF
    generic map(
      LOC => "PAD242"
    )
    port map (
      I => notTCU_OUTMUX_532,
      O => notTCU
    );
  notTCU_OUTMUX : X_BUF
    generic map(
      LOC => "PAD242"
    )
    port map (
      I => notTCU_OBUF_1170,
      O => notTCU_OUTMUX_532
    );
  DATA_2_IMUX : X_BUF
    generic map(
      LOC => "PAD83"
    )
    port map (
      I => DATA_2_IBUF_535,
      O => DATA_2_IBUF_0
    );
  DATA_2_IBUF : X_BUF
    generic map(
      LOC => "PAD83"
    )
    port map (
      I => DATA(2),
      O => DATA_2_IBUF_535
    );
  DATA_3_IMUX : X_BUF
    generic map(
      LOC => "PAD84"
    )
    port map (
      I => DATA_3_IBUF_538,
      O => DATA_3_IBUF_0
    );
  DATA_3_IBUF : X_BUF
    generic map(
      LOC => "PAD84"
    )
    port map (
      I => DATA(3),
      O => DATA_3_IBUF_538
    );
  notPL_IMUX : X_BUF
    generic map(
      LOC => "PAD216"
    )
    port map (
      I => notPL_IBUF_541,
      O => notPL_IBUF_0
    );
  notPL_IBUF : X_BUF
    generic map(
      LOC => "PAD216"
    )
    port map (
      I => notPL,
      O => notPL_IBUF_541
    );
  MR_IMUX : X_BUF
    generic map(
      LOC => "PAD215"
    )
    port map (
      I => MR_IBUF_544,
      O => MR_IBUF_0
    );
  MR_IBUF : X_BUF
    generic map(
      LOC => "PAD215"
    )
    port map (
      I => MR,
      O => MR_IBUF_544
    );
  OUTPUT_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD127"
    )
    port map (
      I => OUTPUT_0_OUTMUX_548,
      O => OUTPUT(0)
    );
  OUTPUT_0_OUTMUX : X_BUF
    generic map(
      LOC => "PAD127"
    )
    port map (
      I => Counter_Module_Trigger_0_jk_qtemp_444,
      O => OUTPUT_0_OUTMUX_548
    );
  CLK_Counter_module_counter_0 : X_SFF
    generic map(
      LOC => "CLB_R28C22.S0",
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
  CLK_Counter_module_counter_1 : X_SFF
    generic map(
      LOC => "CLB_R28C22.S0",
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
  CLK_Counter_module_counter_3 : X_SFF
    generic map(
      LOC => "CLB_R27C22.S0",
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
  CLK_Counter_module_counter_5 : X_SFF
    generic map(
      LOC => "CLB_R26C22.S0",
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
  CLK_Counter_module_counter_7 : X_SFF
    generic map(
      LOC => "CLB_R25C22.S0",
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
  CLK_Counter_module_counter_9 : X_SFF
    generic map(
      LOC => "CLB_R24C22.S0",
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
  CLK_Counter_module_counter_11 : X_SFF
    generic map(
      LOC => "CLB_R23C22.S0",
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
  Counter_Module_Trigger_3_jk_qbartemp_BXMUX : X_INV
    generic map(
      LOC => "CLB_R19C27.S1"
    )
    port map (
      I => Counter_Module_Trigger_3_jk_qbartemp_503,
      O => Counter_Module_Trigger_3_jk_qbartemp_BXMUXNOT
    );
  Counter_Module_Trigger_3_jk_qbartemp : X_FF
    generic map(
      LOC => "CLB_R19C27.S1",
      INIT => '0'
    )
    port map (
      I => Counter_Module_Trigger_3_jk_qbartemp_BXMUXNOT,
      CE => Counter_Module_Trigger_3_T_0,
      CLK => Counter_Module_Trigger_3_T_0,
      SET => Counter_Module_Trigger_3_jk_qbartemp_FFX_SET,
      RST => Counter_Module_Trigger_3_jk_qbartemp_FFX_RST,
      O => Counter_Module_Trigger_3_jk_qbartemp_503
    );
  Counter_Module_Trigger_3_jk_qbartemp_FFX_SETOR : X_BUF
    generic map(
      LOC => "CLB_R19C27.S1"
    )
    port map (
      I => Counter_Module_Trigger_3_jk_R_inv_0,
      O => Counter_Module_Trigger_3_jk_qbartemp_FFX_SET
    );
  Counter_Module_Trigger_3_jk_qbartemp_FFX_RSTOR : X_BUF
    generic map(
      LOC => "CLB_R19C27.S1"
    )
    port map (
      I => Counter_Module_Trigger_3_jk_S_inv_0,
      O => Counter_Module_Trigger_3_jk_qbartemp_FFX_RST
    );
  Counter_Module_Trigger_2_T211 : X_LUT4
    generic map(
      INIT => X"7FFF",
      LOC => "CLB_R25C30.S1"
    )
    port map (
      ADR0 => CPD_IBUF_0,
      ADR1 => Counter_Module_Trigger_0_jk_qbartemp_511,
      ADR2 => Counter_Module_Trigger_1_jk_qbartemp_502,
      ADR3 => CLK_Counter_module_temporal_507,
      O => Counter_Module_N9_pack_1
    );
  Counter_Module_Trigger_2_T : X_LUT4
    generic map(
      INIT => X"C8C0",
      LOC => "CLB_R25C30.S1"
    )
    port map (
      ADR0 => Counter_Module_Trigger_3_jk_qbartemp_503,
      ADR1 => N21_0,
      ADR2 => Counter_Module_N9,
      ADR3 => Counter_Module_Trigger_2_jk_qbartemp_498,
      O => Counter_Module_Trigger_2_T_1263
    );
  Counter_Module_N9_XUSED : X_BUF
    generic map(
      LOC => "CLB_R25C30.S1"
    )
    port map (
      I => Counter_Module_N9_pack_1,
      O => Counter_Module_N9
    );
  Counter_Module_N9_YUSED : X_BUF
    generic map(
      LOC => "CLB_R25C30.S1"
    )
    port map (
      I => Counter_Module_Trigger_2_T_1263,
      O => Counter_Module_Trigger_2_T_0
    );
  Counter_Module_Trigger_1_T31_SW0 : X_LUT4
    generic map(
      INIT => X"007F",
      LOC => "CLB_R25C25.S1"
    )
    port map (
      ADR0 => CLK_Counter_module_temporal_507,
      ADR1 => CPD_IBUF_0,
      ADR2 => Counter_Module_Trigger_0_jk_qbartemp_511,
      ADR3 => Counter_Module_Trigger_3_jk_qbartemp_503,
      O => N6
    );
  N6_YUSED : X_BUF
    generic map(
      LOC => "CLB_R25C25.S1"
    )
    port map (
      I => N6,
      O => N6_0
    );
  CLK_Counter_module_temporal_cmp_eq0000_wg_cy_1_LOGIC_ONE : X_ONE
    generic map(
      LOC => "CLB_R24C22.S1"
    )
    port map (
      O => CLK_Counter_module_temporal_cmp_eq0000_wg_cy_1_LOGIC_ONE_965
    );
  CLK_Counter_module_temporal_cmp_eq0000_wg_cy_1_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "CLB_R24C22.S1"
    )
    port map (
      O => CLK_Counter_module_temporal_cmp_eq0000_wg_cy_1_LOGIC_ZERO_967
    );
  CLK_Counter_module_temporal_cmp_eq0000_wg_cy_0_Q : X_MUX2
    generic map(
      LOC => "CLB_R24C22.S1"
    )
    port map (
      IA => CLK_Counter_module_temporal_cmp_eq0000_wg_cy_1_LOGIC_ZERO_967,
      IB => CLK_Counter_module_temporal_cmp_eq0000_wg_cy_1_LOGIC_ONE_965,
      SEL => CLK_Counter_module_temporal_cmp_eq0000_wg_lut(0),
      O => CLK_Counter_module_temporal_cmp_eq0000_wg_cy_0_Q_968
    );
  CLK_Counter_module_temporal_cmp_eq0000_wg_lut_0_Q : X_LUT4
    generic map(
      INIT => X"000F",
      LOC => "CLB_R24C22.S1"
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
      LOC => "CLB_R24C22.S1"
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
      LOC => "CLB_R24C22.S1"
    )
    port map (
      IA => CLK_Counter_module_temporal_cmp_eq0000_wg_cy_1_LOGIC_ZERO_967,
      IB => CLK_Counter_module_temporal_cmp_eq0000_wg_cy_0_Q_968,
      SEL => CLK_Counter_module_temporal_cmp_eq0000_wg_lut(1),
      O => CLK_Counter_module_temporal_cmp_eq0000_wg_cy_1_CYMUXG
    );
  CLK_Counter_module_temporal_cmp_eq0000_wg_cy_3_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "CLB_R23C22.S1"
    )
    port map (
      O => CLK_Counter_module_temporal_cmp_eq0000_wg_cy_3_LOGIC_ZERO_985
    );
  CLK_Counter_module_temporal_cmp_eq0000_wg_cy_2_Q : X_MUX2
    generic map(
      LOC => "CLB_R23C22.S1"
    )
    port map (
      IA => CLK_Counter_module_temporal_cmp_eq0000_wg_cy_3_LOGIC_ZERO_985,
      IB => CLK_Counter_module_temporal_cmp_eq0000_wg_cy_3_CYINIT_984,
      SEL => CLK_Counter_module_temporal_cmp_eq0000_wg_lut(2),
      O => CLK_Counter_module_temporal_cmp_eq0000_wg_cy_2_Q_986
    );
  CLK_Counter_module_temporal_cmp_eq0000_wg_lut_2_Q : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "CLB_R23C22.S1"
    )
    port map (
      ADR0 => CLK_Counter_module_counter(13),
      ADR1 => CLK_Counter_module_counter(6),
      ADR2 => CLK_Counter_module_counter(10),
      ADR3 => CLK_Counter_module_counter(11),
      O => CLK_Counter_module_temporal_cmp_eq0000_wg_lut(2)
    );
  CLK_Counter_module_temporal_cmp_eq0000_wg_lut_3_Q : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "CLB_R23C22.S1"
    )
    port map (
      ADR0 => CLK_Counter_module_counter(15),
      ADR1 => CLK_Counter_module_counter(14),
      ADR2 => CLK_Counter_module_counter(3),
      ADR3 => CLK_Counter_module_counter(16),
      O => CLK_Counter_module_temporal_cmp_eq0000_wg_lut(3)
    );
  CLK_Counter_module_temporal_cmp_eq0000_wg_cy_3_Q : X_MUX2
    generic map(
      LOC => "CLB_R23C22.S1"
    )
    port map (
      IA => CLK_Counter_module_temporal_cmp_eq0000_wg_cy_3_LOGIC_ZERO_985,
      IB => CLK_Counter_module_temporal_cmp_eq0000_wg_cy_2_Q_986,
      SEL => CLK_Counter_module_temporal_cmp_eq0000_wg_lut(3),
      O => CLK_Counter_module_temporal_cmp_eq0000_wg_cy_3_CYMUXG
    );
  CLK_Counter_module_temporal_cmp_eq0000_wg_cy_3_CYINIT : X_BUF
    generic map(
      LOC => "CLB_R23C22.S1"
    )
    port map (
      I => CLK_Counter_module_temporal_cmp_eq0000_wg_cy_1_CYMUXG,
      O => CLK_Counter_module_temporal_cmp_eq0000_wg_cy_3_CYINIT_984
    );
  CLK_Counter_module_temporal_cmp_eq0000_wg_cy_5_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "CLB_R22C22.S1"
    )
    port map (
      O => CLK_Counter_module_temporal_cmp_eq0000_wg_cy_5_LOGIC_ZERO_1001
    );
  CLK_Counter_module_temporal_cmp_eq0000_wg_cy_4_Q : X_MUX2
    generic map(
      LOC => "CLB_R22C22.S1"
    )
    port map (
      IA => CLK_Counter_module_temporal_cmp_eq0000_wg_cy_5_LOGIC_ZERO_1001,
      IB => CLK_Counter_module_temporal_cmp_eq0000_wg_cy_5_CYINIT_1000,
      SEL => CLK_Counter_module_temporal_cmp_eq0000_wg_lut(4),
      O => CLK_Counter_module_temporal_cmp_eq0000_wg_cy_4_Q_1002
    );
  CLK_Counter_module_temporal_cmp_eq0000_wg_lut_4_Q : X_LUT4
    generic map(
      INIT => X"0002",
      LOC => "CLB_R22C22.S1"
    )
    port map (
      ADR0 => CLK_Counter_module_counter(2),
      ADR1 => CLK_Counter_module_counter(18),
      ADR2 => CLK_Counter_module_counter(19),
      ADR3 => CLK_Counter_module_counter(17),
      O => CLK_Counter_module_temporal_cmp_eq0000_wg_lut(4)
    );
  CLK_Counter_module_temporal_cmp_eq0000_wg_lut_5_Q : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "CLB_R22C22.S1"
    )
    port map (
      ADR0 => CLK_Counter_module_counter(22),
      ADR1 => CLK_Counter_module_counter(20),
      ADR2 => CLK_Counter_module_counter(21),
      ADR3 => CLK_Counter_module_counter(1),
      O => CLK_Counter_module_temporal_cmp_eq0000_wg_lut(5)
    );
  CLK_Counter_module_temporal_cmp_eq0000_wg_cy_5_Q : X_MUX2
    generic map(
      LOC => "CLB_R22C22.S1"
    )
    port map (
      IA => CLK_Counter_module_temporal_cmp_eq0000_wg_cy_5_LOGIC_ZERO_1001,
      IB => CLK_Counter_module_temporal_cmp_eq0000_wg_cy_4_Q_1002,
      SEL => CLK_Counter_module_temporal_cmp_eq0000_wg_lut(5),
      O => CLK_Counter_module_temporal_cmp_eq0000_wg_cy_5_CYMUXG
    );
  CLK_Counter_module_temporal_cmp_eq0000_wg_cy_5_CYINIT : X_BUF
    generic map(
      LOC => "CLB_R22C22.S1"
    )
    port map (
      I => CLK_Counter_module_temporal_cmp_eq0000_wg_cy_3_CYMUXG,
      O => CLK_Counter_module_temporal_cmp_eq0000_wg_cy_5_CYINIT_1000
    );
  CLK_Counter_module_temporal_cmp_eq0000_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "CLB_R21C22.S1"
    )
    port map (
      O => CLK_Counter_module_temporal_cmp_eq0000_LOGIC_ZERO_1015
    );
  CLK_Counter_module_temporal_cmp_eq0000_wg_cy_6_Q : X_MUX2
    generic map(
      LOC => "CLB_R21C22.S1"
    )
    port map (
      IA => CLK_Counter_module_temporal_cmp_eq0000_LOGIC_ZERO_1015,
      IB => CLK_Counter_module_temporal_cmp_eq0000_CYINIT_1012,
      SEL => CLK_Counter_module_temporal_cmp_eq0000_wg_lut(6),
      O => CLK_Counter_module_temporal_cmp_eq0000
    );
  CLK_Counter_module_temporal_cmp_eq0000_wg_lut_6_Q : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "CLB_R21C22.S1"
    )
    port map (
      ADR0 => CLK_Counter_module_counter(0),
      ADR1 => CLK_Counter_module_counter(25),
      ADR2 => CLK_Counter_module_counter(23),
      ADR3 => CLK_Counter_module_counter(24),
      O => CLK_Counter_module_temporal_cmp_eq0000_wg_lut(6)
    );
  CLK_Counter_module_temporal_cmp_eq0000_XBUSED : X_BUF
    generic map(
      LOC => "CLB_R21C22.S1"
    )
    port map (
      I => CLK_Counter_module_temporal_cmp_eq0000,
      O => CLK_Counter_module_temporal_cmp_eq0000_0
    );
  CLK_Counter_module_temporal_cmp_eq0000_CYINIT : X_BUF
    generic map(
      LOC => "CLB_R21C22.S1"
    )
    port map (
      I => CLK_Counter_module_temporal_cmp_eq0000_wg_cy_5_CYMUXG,
      O => CLK_Counter_module_temporal_cmp_eq0000_CYINIT_1012
    );
  Counter_Module_Trigger_3_T_SW0 : X_LUT4
    generic map(
      INIT => X"FF07",
      LOC => "CLB_R25C27.S0"
    )
    port map (
      ADR0 => Counter_Module_Trigger_1_jk_qtemp_445,
      ADR1 => Counter_Module_Trigger_2_jk_qtemp_446,
      ADR2 => Counter_Module_Trigger_3_jk_qtemp_447,
      ADR3 => cpu_in_0,
      O => Counter_Module_Trigger_3_T_SW0_O_pack_1
    );
  Counter_Module_Trigger_3_T : X_LUT4
    generic map(
      INIT => X"F531",
      LOC => "CLB_R25C27.S0"
    )
    port map (
      ADR0 => Counter_Module_Trigger_2_jk_qbartemp_498,
      ADR1 => Counter_Module_Trigger_0_jk_qtemp_444,
      ADR2 => Counter_Module_N9,
      ADR3 => Counter_Module_Trigger_3_T_SW0_O,
      O => Counter_Module_Trigger_3_T_1026
    );
  Counter_Module_Trigger_3_T_SW0_O_XUSED : X_BUF
    generic map(
      LOC => "CLB_R25C27.S0"
    )
    port map (
      I => Counter_Module_Trigger_3_T_SW0_O_pack_1,
      O => Counter_Module_Trigger_3_T_SW0_O
    );
  Counter_Module_Trigger_3_T_SW0_O_YUSED : X_BUF
    generic map(
      LOC => "CLB_R25C27.S0"
    )
    port map (
      I => Counter_Module_Trigger_3_T_1026,
      O => Counter_Module_Trigger_3_T_0
    );
  Counter_Module_Trigger_1_T12 : X_LUT4
    generic map(
      INIT => X"F8F0",
      LOC => "CLB_R25C24.S0"
    )
    port map (
      ADR0 => Counter_Module_Trigger_2_jk_qbartemp_498,
      ADR1 => Counter_Module_Trigger_3_jk_qbartemp_503,
      ADR2 => N8,
      ADR3 => Counter_Module_Trigger_1_jk_qbartemp_502,
      O => Counter_Module_Trigger_1_T12_O_pack_1
    );
  Counter_Module_Trigger_1_T31 : X_LUT4
    generic map(
      INIT => X"FDF0",
      LOC => "CLB_R25C24.S0"
    )
    port map (
      ADR0 => Counter_Module_Trigger_0_jk_qtemp_444,
      ADR1 => cpu_in_0,
      ADR2 => N6_0,
      ADR3 => Counter_Module_Trigger_1_T12_O,
      O => Counter_Module_Trigger_1_T
    );
  Counter_Module_Trigger_1_T12_O_XUSED : X_BUF
    generic map(
      LOC => "CLB_R25C24.S0"
    )
    port map (
      I => Counter_Module_Trigger_1_T12_O_pack_1,
      O => Counter_Module_Trigger_1_T12_O
    );
  Counter_Module_Trigger_1_T12_O_YUSED : X_BUF
    generic map(
      LOC => "CLB_R25C24.S0"
    )
    port map (
      I => Counter_Module_Trigger_1_T,
      O => Counter_Module_Trigger_1_T_0
    );
  CLK_Counter_module_temporal_BYMUX : X_INV
    generic map(
      LOC => "CLB_R25C22.S1"
    )
    port map (
      I => CLK_Counter_module_temporal_507,
      O => CLK_Counter_module_temporal_BYMUXNOT
    );
  CLK_Counter_module_temporal : X_FF
    generic map(
      LOC => "CLB_R25C22.S1",
      INIT => '0'
    )
    port map (
      I => CLK_Counter_module_temporal_BYMUXNOT,
      CE => CLK_Counter_module_temporal_cmp_eq0000_0,
      CLK => CLK_BUFGP,
      SET => GND,
      RST => GND,
      O => CLK_Counter_module_temporal_507
    );
  Counter_Module_Trigger_3_jk_R_inv1 : X_LUT4
    generic map(
      INIT => X"CDCD",
      LOC => "CLB_R19C28.S1"
    )
    port map (
      ADR0 => notPL_IBUF_0,
      ADR1 => MR_IBUF_0,
      ADR2 => DATA_3_IBUF_0,
      ADR3 => VCC,
      O => Counter_Module_Trigger_3_jk_R_inv
    );
  Counter_Module_Trigger_3_jk_S_inv1 : X_LUT4
    generic map(
      INIT => X"0500",
      LOC => "CLB_R19C28.S1"
    )
    port map (
      ADR0 => notPL_IBUF_0,
      ADR1 => VCC,
      ADR2 => MR_IBUF_0,
      ADR3 => DATA_3_IBUF_0,
      O => Counter_Module_Trigger_3_jk_S_inv
    );
  Counter_Module_Trigger_3_jk_R_inv_XUSED : X_BUF
    generic map(
      LOC => "CLB_R19C28.S1"
    )
    port map (
      I => Counter_Module_Trigger_3_jk_R_inv,
      O => Counter_Module_Trigger_3_jk_R_inv_0
    );
  Counter_Module_Trigger_3_jk_R_inv_YUSED : X_BUF
    generic map(
      LOC => "CLB_R19C28.S1"
    )
    port map (
      I => Counter_Module_Trigger_3_jk_S_inv,
      O => Counter_Module_Trigger_3_jk_S_inv_0
    );
  Counter_Module_Trigger_0_T1 : X_LUT4
    generic map(
      INIT => X"5757",
      LOC => "CLB_R25C24.S1"
    )
    port map (
      ADR0 => CLK_Counter_module_temporal_507,
      ADR1 => CPU_IBUF_0,
      ADR2 => CPD_IBUF_0,
      ADR3 => VCC,
      O => Counter_Module_Trigger_0_T
    );
  cpu_in1 : X_LUT4
    generic map(
      INIT => X"0FFF",
      LOC => "CLB_R25C24.S1"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => CLK_Counter_module_temporal_507,
      ADR3 => CPU_IBUF_0,
      O => cpu_in
    );
  Counter_Module_Trigger_0_T_XUSED : X_BUF
    generic map(
      LOC => "CLB_R25C24.S1"
    )
    port map (
      I => Counter_Module_Trigger_0_T,
      O => Counter_Module_Trigger_0_T_0
    );
  Counter_Module_Trigger_0_T_YUSED : X_BUF
    generic map(
      LOC => "CLB_R25C24.S1"
    )
    port map (
      I => cpu_in,
      O => cpu_in_0
    );
  Counter_Module_Trigger_0_jk_qbartemp_BXMUX : X_INV
    generic map(
      LOC => "CLB_R26C24.S1"
    )
    port map (
      I => Counter_Module_Trigger_0_jk_qbartemp_511,
      O => Counter_Module_Trigger_0_jk_qbartemp_BXMUXNOT
    );
  Counter_Module_Trigger_0_jk_qbartemp : X_FF
    generic map(
      LOC => "CLB_R26C24.S1",
      INIT => '0'
    )
    port map (
      I => Counter_Module_Trigger_0_jk_qbartemp_BXMUXNOT,
      CE => Counter_Module_Trigger_0_T_0,
      CLK => Counter_Module_Trigger_0_T_0,
      SET => Counter_Module_Trigger_0_jk_qbartemp_FFX_SET,
      RST => Counter_Module_Trigger_0_jk_qbartemp_FFX_RST,
      O => Counter_Module_Trigger_0_jk_qbartemp_511
    );
  Counter_Module_Trigger_0_jk_qbartemp_FFX_SETOR : X_BUF
    generic map(
      LOC => "CLB_R26C24.S1"
    )
    port map (
      I => Counter_Module_Trigger_0_jk_R_inv_0,
      O => Counter_Module_Trigger_0_jk_qbartemp_FFX_SET
    );
  Counter_Module_Trigger_0_jk_qbartemp_FFX_RSTOR : X_BUF
    generic map(
      LOC => "CLB_R26C24.S1"
    )
    port map (
      I => Counter_Module_Trigger_0_jk_S_inv_0,
      O => Counter_Module_Trigger_0_jk_qbartemp_FFX_RST
    );
  Counter_Module_Trigger_0_jk_qtemp_BXMUX : X_INV
    generic map(
      LOC => "CLB_R26C24.S0"
    )
    port map (
      I => Counter_Module_Trigger_0_jk_qtemp_444,
      O => Counter_Module_Trigger_0_jk_qtemp_BXMUXNOT
    );
  Counter_Module_Trigger_0_jk_qtemp : X_FF
    generic map(
      LOC => "CLB_R26C24.S0",
      INIT => '0'
    )
    port map (
      I => Counter_Module_Trigger_0_jk_qtemp_BXMUXNOT,
      CE => Counter_Module_Trigger_0_T_0,
      CLK => Counter_Module_Trigger_0_T_0,
      SET => Counter_Module_Trigger_0_jk_qtemp_FFX_SET,
      RST => Counter_Module_Trigger_0_jk_qtemp_FFX_RST,
      O => Counter_Module_Trigger_0_jk_qtemp_444
    );
  Counter_Module_Trigger_0_jk_qtemp_FFX_SETOR : X_BUF
    generic map(
      LOC => "CLB_R26C24.S0"
    )
    port map (
      I => Counter_Module_Trigger_0_jk_S_inv_0,
      O => Counter_Module_Trigger_0_jk_qtemp_FFX_SET
    );
  Counter_Module_Trigger_0_jk_qtemp_FFX_RSTOR : X_BUF
    generic map(
      LOC => "CLB_R26C24.S0"
    )
    port map (
      I => Counter_Module_Trigger_0_jk_R_inv_0,
      O => Counter_Module_Trigger_0_jk_qtemp_FFX_RST
    );
  Counter_Module_Trigger_2_jk_qbartemp_BXMUX : X_INV
    generic map(
      LOC => "CLB_R20C30.S1"
    )
    port map (
      I => Counter_Module_Trigger_2_jk_qbartemp_498,
      O => Counter_Module_Trigger_2_jk_qbartemp_BXMUXNOT
    );
  Counter_Module_Trigger_2_jk_qbartemp : X_FF
    generic map(
      LOC => "CLB_R20C30.S1",
      INIT => '0'
    )
    port map (
      I => Counter_Module_Trigger_2_jk_qbartemp_BXMUXNOT,
      CE => Counter_Module_Trigger_2_T_0,
      CLK => Counter_Module_Trigger_2_T_0,
      SET => Counter_Module_Trigger_2_jk_qbartemp_FFX_SET,
      RST => Counter_Module_Trigger_2_jk_qbartemp_FFX_RST,
      O => Counter_Module_Trigger_2_jk_qbartemp_498
    );
  Counter_Module_Trigger_2_jk_qbartemp_FFX_SETOR : X_BUF
    generic map(
      LOC => "CLB_R20C30.S1"
    )
    port map (
      I => Counter_Module_Trigger_2_jk_R_inv_0,
      O => Counter_Module_Trigger_2_jk_qbartemp_FFX_SET
    );
  Counter_Module_Trigger_2_jk_qbartemp_FFX_RSTOR : X_BUF
    generic map(
      LOC => "CLB_R20C30.S1"
    )
    port map (
      I => Counter_Module_Trigger_2_jk_S_inv_0,
      O => Counter_Module_Trigger_2_jk_qbartemp_FFX_RST
    );
  Counter_Module_Trigger_1_jk_qtemp_BXMUX : X_INV
    generic map(
      LOC => "CLB_R24C24.S1"
    )
    port map (
      I => Counter_Module_Trigger_1_jk_qtemp_445,
      O => Counter_Module_Trigger_1_jk_qtemp_BXMUXNOT
    );
  Counter_Module_Trigger_1_jk_qtemp : X_FF
    generic map(
      LOC => "CLB_R24C24.S1",
      INIT => '0'
    )
    port map (
      I => Counter_Module_Trigger_1_jk_qtemp_BXMUXNOT,
      CE => Counter_Module_Trigger_1_T_0,
      CLK => Counter_Module_Trigger_1_T_0,
      SET => Counter_Module_Trigger_1_jk_qtemp_FFX_SET,
      RST => Counter_Module_Trigger_1_jk_qtemp_FFX_RST,
      O => Counter_Module_Trigger_1_jk_qtemp_445
    );
  Counter_Module_Trigger_1_jk_qtemp_FFX_SETOR : X_BUF
    generic map(
      LOC => "CLB_R24C24.S1"
    )
    port map (
      I => Counter_Module_Trigger_1_jk_S_inv_0,
      O => Counter_Module_Trigger_1_jk_qtemp_FFX_SET
    );
  Counter_Module_Trigger_1_jk_qtemp_FFX_RSTOR : X_BUF
    generic map(
      LOC => "CLB_R24C24.S1"
    )
    port map (
      I => Counter_Module_Trigger_1_jk_R_inv_0,
      O => Counter_Module_Trigger_1_jk_qtemp_FFX_RST
    );
  Counter_Module_Trigger_0_jk_S_inv1 : X_LUT4
    generic map(
      INIT => X"000A",
      LOC => "CLB_R26C23.S1"
    )
    port map (
      ADR0 => DATA_0_IBUF_0,
      ADR1 => VCC,
      ADR2 => MR_IBUF_0,
      ADR3 => notPL_IBUF_0,
      O => Counter_Module_Trigger_0_jk_S_inv
    );
  Counter_Module_Trigger_0_jk_R_inv1 : X_LUT4
    generic map(
      INIT => X"F0F5",
      LOC => "CLB_R26C23.S1"
    )
    port map (
      ADR0 => DATA_0_IBUF_0,
      ADR1 => VCC,
      ADR2 => MR_IBUF_0,
      ADR3 => notPL_IBUF_0,
      O => Counter_Module_Trigger_0_jk_R_inv
    );
  Counter_Module_Trigger_0_jk_S_inv_XUSED : X_BUF
    generic map(
      LOC => "CLB_R26C23.S1"
    )
    port map (
      I => Counter_Module_Trigger_0_jk_S_inv,
      O => Counter_Module_Trigger_0_jk_S_inv_0
    );
  Counter_Module_Trigger_0_jk_S_inv_YUSED : X_BUF
    generic map(
      LOC => "CLB_R26C23.S1"
    )
    port map (
      I => Counter_Module_Trigger_0_jk_R_inv,
      O => Counter_Module_Trigger_0_jk_R_inv_0
    );
  Counter_Module_Trigger_2_jk_qtemp_BXMUX : X_INV
    generic map(
      LOC => "CLB_R20C30.S0"
    )
    port map (
      I => Counter_Module_Trigger_2_jk_qtemp_446,
      O => Counter_Module_Trigger_2_jk_qtemp_BXMUXNOT
    );
  Counter_Module_Trigger_2_jk_qtemp : X_FF
    generic map(
      LOC => "CLB_R20C30.S0",
      INIT => '0'
    )
    port map (
      I => Counter_Module_Trigger_2_jk_qtemp_BXMUXNOT,
      CE => Counter_Module_Trigger_2_T_0,
      CLK => Counter_Module_Trigger_2_T_0,
      SET => Counter_Module_Trigger_2_jk_qtemp_FFX_SET,
      RST => Counter_Module_Trigger_2_jk_qtemp_FFX_RST,
      O => Counter_Module_Trigger_2_jk_qtemp_446
    );
  Counter_Module_Trigger_2_jk_qtemp_FFX_SETOR : X_BUF
    generic map(
      LOC => "CLB_R20C30.S0"
    )
    port map (
      I => Counter_Module_Trigger_2_jk_S_inv_0,
      O => Counter_Module_Trigger_2_jk_qtemp_FFX_SET
    );
  Counter_Module_Trigger_2_jk_qtemp_FFX_RSTOR : X_BUF
    generic map(
      LOC => "CLB_R20C30.S0"
    )
    port map (
      I => Counter_Module_Trigger_2_jk_R_inv_0,
      O => Counter_Module_Trigger_2_jk_qtemp_FFX_RST
    );
  Counter_Module_Trigger_2_T_SW0 : X_LUT4
    generic map(
      INIT => X"7FFF",
      LOC => "CLB_R25C26.S1"
    )
    port map (
      ADR0 => CLK_Counter_module_temporal_507,
      ADR1 => Counter_Module_Trigger_0_jk_qtemp_444,
      ADR2 => Counter_Module_Trigger_1_jk_qtemp_445,
      ADR3 => CPU_IBUF_0,
      O => N21
    );
  Counter_Module_notTCU1 : X_LUT4
    generic map(
      INIT => X"7FFF",
      LOC => "CLB_R25C26.S1"
    )
    port map (
      ADR0 => CPU_IBUF_0,
      ADR1 => Counter_Module_Trigger_3_jk_qtemp_447,
      ADR2 => Counter_Module_Trigger_0_jk_qtemp_444,
      ADR3 => CLK_Counter_module_temporal_507,
      O => notTCU_OBUF_1170
    );
  N21_XUSED : X_BUF
    generic map(
      LOC => "CLB_R25C26.S1"
    )
    port map (
      I => N21,
      O => N21_0
    );
  Counter_Module_Trigger_3_jk_qtemp_BXMUX : X_INV
    generic map(
      LOC => "CLB_R19C27.S0"
    )
    port map (
      I => Counter_Module_Trigger_3_jk_qtemp_447,
      O => Counter_Module_Trigger_3_jk_qtemp_BXMUXNOT
    );
  Counter_Module_Trigger_3_jk_qtemp : X_FF
    generic map(
      LOC => "CLB_R19C27.S0",
      INIT => '0'
    )
    port map (
      I => Counter_Module_Trigger_3_jk_qtemp_BXMUXNOT,
      CE => Counter_Module_Trigger_3_T_0,
      CLK => Counter_Module_Trigger_3_T_0,
      SET => Counter_Module_Trigger_3_jk_qtemp_FFX_SET,
      RST => Counter_Module_Trigger_3_jk_qtemp_FFX_RST,
      O => Counter_Module_Trigger_3_jk_qtemp_447
    );
  Counter_Module_Trigger_3_jk_qtemp_FFX_SETOR : X_BUF
    generic map(
      LOC => "CLB_R19C27.S0"
    )
    port map (
      I => Counter_Module_Trigger_3_jk_S_inv_0,
      O => Counter_Module_Trigger_3_jk_qtemp_FFX_SET
    );
  Counter_Module_Trigger_3_jk_qtemp_FFX_RSTOR : X_BUF
    generic map(
      LOC => "CLB_R19C27.S0"
    )
    port map (
      I => Counter_Module_Trigger_3_jk_R_inv_0,
      O => Counter_Module_Trigger_3_jk_qtemp_FFX_RST
    );
  Counter_Module_Trigger_1_jk_S_inv1 : X_LUT4
    generic map(
      INIT => X"1100",
      LOC => "CLB_R24C23.S0"
    )
    port map (
      ADR0 => notPL_IBUF_0,
      ADR1 => MR_IBUF_0,
      ADR2 => VCC,
      ADR3 => DATA_1_IBUF_0,
      O => Counter_Module_Trigger_1_jk_S_inv
    );
  Counter_Module_Trigger_1_jk_R_inv1 : X_LUT4
    generic map(
      INIT => X"CCDD",
      LOC => "CLB_R24C23.S0"
    )
    port map (
      ADR0 => notPL_IBUF_0,
      ADR1 => MR_IBUF_0,
      ADR2 => VCC,
      ADR3 => DATA_1_IBUF_0,
      O => Counter_Module_Trigger_1_jk_R_inv
    );
  Counter_Module_Trigger_1_jk_S_inv_XUSED : X_BUF
    generic map(
      LOC => "CLB_R24C23.S0"
    )
    port map (
      I => Counter_Module_Trigger_1_jk_S_inv,
      O => Counter_Module_Trigger_1_jk_S_inv_0
    );
  Counter_Module_Trigger_1_jk_S_inv_YUSED : X_BUF
    generic map(
      LOC => "CLB_R24C23.S0"
    )
    port map (
      I => Counter_Module_Trigger_1_jk_R_inv,
      O => Counter_Module_Trigger_1_jk_R_inv_0
    );
  Counter_Module_Trigger_1_T12_SW0 : X_LUT4
    generic map(
      INIT => X"3FFF",
      LOC => "CLB_R25C25.S0"
    )
    port map (
      ADR0 => VCC,
      ADR1 => CLK_Counter_module_temporal_507,
      ADR2 => Counter_Module_Trigger_0_jk_qbartemp_511,
      ADR3 => CPD_IBUF_0,
      O => N8_pack_1
    );
  Counter_Module_notTCD : X_LUT4
    generic map(
      INIT => X"FF7F",
      LOC => "CLB_R25C25.S0"
    )
    port map (
      ADR0 => Counter_Module_Trigger_3_jk_qbartemp_503,
      ADR1 => Counter_Module_Trigger_1_jk_qbartemp_502,
      ADR2 => Counter_Module_Trigger_2_jk_qbartemp_498,
      ADR3 => N8,
      O => notTCD_OBUF_1208
    );
  N8_XUSED : X_BUF
    generic map(
      LOC => "CLB_R25C25.S0"
    )
    port map (
      I => N8_pack_1,
      O => N8
    );
  Counter_Module_Trigger_2_jk_S_inv1 : X_LUT4
    generic map(
      INIT => X"0044",
      LOC => "CLB_R19C30.S0"
    )
    port map (
      ADR0 => MR_IBUF_0,
      ADR1 => DATA_2_IBUF_0,
      ADR2 => VCC,
      ADR3 => notPL_IBUF_0,
      O => Counter_Module_Trigger_2_jk_S_inv
    );
  Counter_Module_Trigger_2_jk_R_inv1 : X_LUT4
    generic map(
      INIT => X"F1F1",
      LOC => "CLB_R19C30.S0"
    )
    port map (
      ADR0 => notPL_IBUF_0,
      ADR1 => DATA_2_IBUF_0,
      ADR2 => MR_IBUF_0,
      ADR3 => VCC,
      O => Counter_Module_Trigger_2_jk_R_inv
    );
  Counter_Module_Trigger_2_jk_S_inv_XUSED : X_BUF
    generic map(
      LOC => "CLB_R19C30.S0"
    )
    port map (
      I => Counter_Module_Trigger_2_jk_S_inv,
      O => Counter_Module_Trigger_2_jk_S_inv_0
    );
  Counter_Module_Trigger_2_jk_S_inv_YUSED : X_BUF
    generic map(
      LOC => "CLB_R19C30.S0"
    )
    port map (
      I => Counter_Module_Trigger_2_jk_R_inv,
      O => Counter_Module_Trigger_2_jk_R_inv_0
    );
  Counter_Module_Trigger_1_jk_qbartemp_FFX_RSTOR : X_BUF
    generic map(
      LOC => "CLB_R24C24.S0"
    )
    port map (
      I => Counter_Module_Trigger_1_jk_S_inv_0,
      O => Counter_Module_Trigger_1_jk_qbartemp_FFX_RST
    );
  Counter_Module_Trigger_1_jk_qbartemp_FFX_SETOR : X_BUF
    generic map(
      LOC => "CLB_R24C24.S0"
    )
    port map (
      I => Counter_Module_Trigger_1_jk_R_inv_0,
      O => Counter_Module_Trigger_1_jk_qbartemp_FFX_SET
    );
  Counter_Module_Trigger_1_jk_qbartemp : X_FF
    generic map(
      LOC => "CLB_R24C24.S0",
      INIT => '0'
    )
    port map (
      I => Counter_Module_Trigger_1_jk_qbartemp_BXMUXNOT,
      CE => Counter_Module_Trigger_1_T_0,
      CLK => Counter_Module_Trigger_1_T_0,
      SET => Counter_Module_Trigger_1_jk_qbartemp_FFX_SET,
      RST => Counter_Module_Trigger_1_jk_qbartemp_FFX_RST,
      O => Counter_Module_Trigger_1_jk_qbartemp_502
    );
  Counter_Module_Trigger_1_jk_qbartemp_BXMUX : X_INV
    generic map(
      LOC => "CLB_R24C24.S0"
    )
    port map (
      I => Counter_Module_Trigger_1_jk_qbartemp_502,
      O => Counter_Module_Trigger_1_jk_qbartemp_BXMUXNOT
    );
  CLK_Counter_module_counter_10 : X_SFF
    generic map(
      LOC => "CLB_R23C22.S0",
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
      LOC => "CLB_R22C22.S0",
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
      LOC => "CLB_R22C22.S0"
    )
    port map (
      O => CLK_Counter_module_counter_12_LOGIC_ZERO_766
    );
  CLK_Counter_module_Mcount_counter_cy_12_Q : X_MUX2
    generic map(
      LOC => "CLB_R22C22.S0"
    )
    port map (
      IA => CLK_Counter_module_counter_12_LOGIC_ZERO_766,
      IB => CLK_Counter_module_counter_12_CYINIT_763,
      SEL => CLK_Counter_module_counter_12_FROM,
      O => CLK_Counter_module_Mcount_counter_cy_12_Q_764
    );
  CLK_Counter_module_Mcount_counter_xor_12_Q : X_XOR2
    generic map(
      LOC => "CLB_R22C22.S0"
    )
    port map (
      I0 => CLK_Counter_module_counter_12_CYINIT_763,
      I1 => CLK_Counter_module_counter_12_FROM,
      O => Result(12)
    );
  CLK_Counter_module_counter_12_F : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "CLB_R22C22.S0"
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
      LOC => "CLB_R22C22.S0"
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
      LOC => "CLB_R22C22.S0"
    )
    port map (
      IA => CLK_Counter_module_counter_12_LOGIC_ZERO_766,
      IB => CLK_Counter_module_Mcount_counter_cy_12_Q_764,
      SEL => CLK_Counter_module_counter_12_GROM,
      O => CLK_Counter_module_counter_12_CYMUXG
    );
  CLK_Counter_module_Mcount_counter_xor_13_Q : X_XOR2
    generic map(
      LOC => "CLB_R22C22.S0"
    )
    port map (
      I0 => CLK_Counter_module_Mcount_counter_cy_12_Q_764,
      I1 => CLK_Counter_module_counter_12_GROM,
      O => Result(13)
    );
  CLK_Counter_module_counter_12_CYINIT : X_BUF
    generic map(
      LOC => "CLB_R22C22.S0"
    )
    port map (
      I => CLK_Counter_module_counter_10_CYMUXG,
      O => CLK_Counter_module_counter_12_CYINIT_763
    );
  CLK_Counter_module_counter_12 : X_SFF
    generic map(
      LOC => "CLB_R22C22.S0",
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
      LOC => "CLB_R21C22.S0",
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
      LOC => "CLB_R21C22.S0"
    )
    port map (
      O => CLK_Counter_module_counter_14_LOGIC_ZERO_796
    );
  CLK_Counter_module_Mcount_counter_cy_14_Q : X_MUX2
    generic map(
      LOC => "CLB_R21C22.S0"
    )
    port map (
      IA => CLK_Counter_module_counter_14_LOGIC_ZERO_796,
      IB => CLK_Counter_module_counter_14_CYINIT_793,
      SEL => CLK_Counter_module_counter_14_FROM,
      O => CLK_Counter_module_Mcount_counter_cy_14_Q_794
    );
  CLK_Counter_module_Mcount_counter_xor_14_Q : X_XOR2
    generic map(
      LOC => "CLB_R21C22.S0"
    )
    port map (
      I0 => CLK_Counter_module_counter_14_CYINIT_793,
      I1 => CLK_Counter_module_counter_14_FROM,
      O => Result(14)
    );
  CLK_Counter_module_counter_14_F : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "CLB_R21C22.S0"
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
      LOC => "CLB_R21C22.S0"
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
      LOC => "CLB_R21C22.S0"
    )
    port map (
      IA => CLK_Counter_module_counter_14_LOGIC_ZERO_796,
      IB => CLK_Counter_module_Mcount_counter_cy_14_Q_794,
      SEL => CLK_Counter_module_counter_14_GROM,
      O => CLK_Counter_module_counter_14_CYMUXG
    );
  CLK_Counter_module_Mcount_counter_xor_15_Q : X_XOR2
    generic map(
      LOC => "CLB_R21C22.S0"
    )
    port map (
      I0 => CLK_Counter_module_Mcount_counter_cy_14_Q_794,
      I1 => CLK_Counter_module_counter_14_GROM,
      O => Result(15)
    );
  CLK_Counter_module_counter_14_CYINIT : X_BUF
    generic map(
      LOC => "CLB_R21C22.S0"
    )
    port map (
      I => CLK_Counter_module_counter_12_CYMUXG,
      O => CLK_Counter_module_counter_14_CYINIT_793
    );
  CLK_Counter_module_counter_14 : X_SFF
    generic map(
      LOC => "CLB_R21C22.S0",
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
      LOC => "CLB_R20C22.S0",
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
      LOC => "CLB_R20C22.S0"
    )
    port map (
      O => CLK_Counter_module_counter_16_LOGIC_ZERO_826
    );
  CLK_Counter_module_Mcount_counter_cy_16_Q : X_MUX2
    generic map(
      LOC => "CLB_R20C22.S0"
    )
    port map (
      IA => CLK_Counter_module_counter_16_LOGIC_ZERO_826,
      IB => CLK_Counter_module_counter_16_CYINIT_823,
      SEL => CLK_Counter_module_counter_16_FROM,
      O => CLK_Counter_module_Mcount_counter_cy_16_Q_824
    );
  CLK_Counter_module_Mcount_counter_xor_16_Q : X_XOR2
    generic map(
      LOC => "CLB_R20C22.S0"
    )
    port map (
      I0 => CLK_Counter_module_counter_16_CYINIT_823,
      I1 => CLK_Counter_module_counter_16_FROM,
      O => Result(16)
    );
  CLK_Counter_module_counter_16_F : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "CLB_R20C22.S0"
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
      LOC => "CLB_R20C22.S0"
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
      LOC => "CLB_R20C22.S0"
    )
    port map (
      IA => CLK_Counter_module_counter_16_LOGIC_ZERO_826,
      IB => CLK_Counter_module_Mcount_counter_cy_16_Q_824,
      SEL => CLK_Counter_module_counter_16_GROM,
      O => CLK_Counter_module_counter_16_CYMUXG
    );
  CLK_Counter_module_Mcount_counter_xor_17_Q : X_XOR2
    generic map(
      LOC => "CLB_R20C22.S0"
    )
    port map (
      I0 => CLK_Counter_module_Mcount_counter_cy_16_Q_824,
      I1 => CLK_Counter_module_counter_16_GROM,
      O => Result(17)
    );
  CLK_Counter_module_counter_16_CYINIT : X_BUF
    generic map(
      LOC => "CLB_R20C22.S0"
    )
    port map (
      I => CLK_Counter_module_counter_14_CYMUXG,
      O => CLK_Counter_module_counter_16_CYINIT_823
    );
  CLK_Counter_module_counter_16 : X_SFF
    generic map(
      LOC => "CLB_R20C22.S0",
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
      LOC => "CLB_R19C22.S0",
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
      LOC => "CLB_R19C22.S0"
    )
    port map (
      O => CLK_Counter_module_counter_18_LOGIC_ZERO_856
    );
  CLK_Counter_module_Mcount_counter_cy_18_Q : X_MUX2
    generic map(
      LOC => "CLB_R19C22.S0"
    )
    port map (
      IA => CLK_Counter_module_counter_18_LOGIC_ZERO_856,
      IB => CLK_Counter_module_counter_18_CYINIT_853,
      SEL => CLK_Counter_module_counter_18_FROM,
      O => CLK_Counter_module_Mcount_counter_cy_18_Q_854
    );
  CLK_Counter_module_Mcount_counter_xor_18_Q : X_XOR2
    generic map(
      LOC => "CLB_R19C22.S0"
    )
    port map (
      I0 => CLK_Counter_module_counter_18_CYINIT_853,
      I1 => CLK_Counter_module_counter_18_FROM,
      O => Result(18)
    );
  CLK_Counter_module_counter_18_F : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "CLB_R19C22.S0"
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
      LOC => "CLB_R19C22.S0"
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
      LOC => "CLB_R19C22.S0"
    )
    port map (
      IA => CLK_Counter_module_counter_18_LOGIC_ZERO_856,
      IB => CLK_Counter_module_Mcount_counter_cy_18_Q_854,
      SEL => CLK_Counter_module_counter_18_GROM,
      O => CLK_Counter_module_counter_18_CYMUXG
    );
  CLK_Counter_module_Mcount_counter_xor_19_Q : X_XOR2
    generic map(
      LOC => "CLB_R19C22.S0"
    )
    port map (
      I0 => CLK_Counter_module_Mcount_counter_cy_18_Q_854,
      I1 => CLK_Counter_module_counter_18_GROM,
      O => Result(19)
    );
  CLK_Counter_module_counter_18_CYINIT : X_BUF
    generic map(
      LOC => "CLB_R19C22.S0"
    )
    port map (
      I => CLK_Counter_module_counter_16_CYMUXG,
      O => CLK_Counter_module_counter_18_CYINIT_853
    );
  CLK_Counter_module_counter_18 : X_SFF
    generic map(
      LOC => "CLB_R19C22.S0",
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
  CLK_Counter_module_counter_21 : X_SFF
    generic map(
      LOC => "CLB_R18C22.S0",
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
      LOC => "CLB_R18C22.S0"
    )
    port map (
      O => CLK_Counter_module_counter_20_LOGIC_ZERO_886
    );
  CLK_Counter_module_Mcount_counter_cy_20_Q : X_MUX2
    generic map(
      LOC => "CLB_R18C22.S0"
    )
    port map (
      IA => CLK_Counter_module_counter_20_LOGIC_ZERO_886,
      IB => CLK_Counter_module_counter_20_CYINIT_883,
      SEL => CLK_Counter_module_counter_20_FROM,
      O => CLK_Counter_module_Mcount_counter_cy_20_Q_884
    );
  CLK_Counter_module_Mcount_counter_xor_20_Q : X_XOR2
    generic map(
      LOC => "CLB_R18C22.S0"
    )
    port map (
      I0 => CLK_Counter_module_counter_20_CYINIT_883,
      I1 => CLK_Counter_module_counter_20_FROM,
      O => Result(20)
    );
  CLK_Counter_module_counter_20_F : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "CLB_R18C22.S0"
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
      LOC => "CLB_R18C22.S0"
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
      LOC => "CLB_R18C22.S0"
    )
    port map (
      IA => CLK_Counter_module_counter_20_LOGIC_ZERO_886,
      IB => CLK_Counter_module_Mcount_counter_cy_20_Q_884,
      SEL => CLK_Counter_module_counter_20_GROM,
      O => CLK_Counter_module_counter_20_CYMUXG
    );
  CLK_Counter_module_Mcount_counter_xor_21_Q : X_XOR2
    generic map(
      LOC => "CLB_R18C22.S0"
    )
    port map (
      I0 => CLK_Counter_module_Mcount_counter_cy_20_Q_884,
      I1 => CLK_Counter_module_counter_20_GROM,
      O => Result(21)
    );
  CLK_Counter_module_counter_20_CYINIT : X_BUF
    generic map(
      LOC => "CLB_R18C22.S0"
    )
    port map (
      I => CLK_Counter_module_counter_18_CYMUXG,
      O => CLK_Counter_module_counter_20_CYINIT_883
    );
  CLK_Counter_module_counter_20 : X_SFF
    generic map(
      LOC => "CLB_R18C22.S0",
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
  CLK_Counter_module_counter_23 : X_SFF
    generic map(
      LOC => "CLB_R17C22.S0",
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
      LOC => "CLB_R17C22.S0"
    )
    port map (
      O => CLK_Counter_module_counter_22_LOGIC_ZERO_916
    );
  CLK_Counter_module_Mcount_counter_cy_22_Q : X_MUX2
    generic map(
      LOC => "CLB_R17C22.S0"
    )
    port map (
      IA => CLK_Counter_module_counter_22_LOGIC_ZERO_916,
      IB => CLK_Counter_module_counter_22_CYINIT_913,
      SEL => CLK_Counter_module_counter_22_FROM,
      O => CLK_Counter_module_Mcount_counter_cy_22_Q_914
    );
  CLK_Counter_module_Mcount_counter_xor_22_Q : X_XOR2
    generic map(
      LOC => "CLB_R17C22.S0"
    )
    port map (
      I0 => CLK_Counter_module_counter_22_CYINIT_913,
      I1 => CLK_Counter_module_counter_22_FROM,
      O => Result(22)
    );
  CLK_Counter_module_counter_22_F : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "CLB_R17C22.S0"
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
      LOC => "CLB_R17C22.S0"
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
      LOC => "CLB_R17C22.S0"
    )
    port map (
      IA => CLK_Counter_module_counter_22_LOGIC_ZERO_916,
      IB => CLK_Counter_module_Mcount_counter_cy_22_Q_914,
      SEL => CLK_Counter_module_counter_22_GROM,
      O => CLK_Counter_module_counter_22_CYMUXG
    );
  CLK_Counter_module_Mcount_counter_xor_23_Q : X_XOR2
    generic map(
      LOC => "CLB_R17C22.S0"
    )
    port map (
      I0 => CLK_Counter_module_Mcount_counter_cy_22_Q_914,
      I1 => CLK_Counter_module_counter_22_GROM,
      O => Result(23)
    );
  CLK_Counter_module_counter_22_CYINIT : X_BUF
    generic map(
      LOC => "CLB_R17C22.S0"
    )
    port map (
      I => CLK_Counter_module_counter_20_CYMUXG,
      O => CLK_Counter_module_counter_22_CYINIT_913
    );
  CLK_Counter_module_counter_22 : X_SFF
    generic map(
      LOC => "CLB_R17C22.S0",
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
      LOC => "CLB_R16C22.S0",
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
      LOC => "CLB_R16C22.S0"
    )
    port map (
      O => CLK_Counter_module_counter_24_LOGIC_ZERO_957
    );
  CLK_Counter_module_Mcount_counter_cy_24_Q : X_MUX2
    generic map(
      LOC => "CLB_R16C22.S0"
    )
    port map (
      IA => CLK_Counter_module_counter_24_LOGIC_ZERO_957,
      IB => CLK_Counter_module_counter_24_CYINIT_942,
      SEL => CLK_Counter_module_counter_24_FROM,
      O => CLK_Counter_module_Mcount_counter_cy_24_Q_943
    );
  CLK_Counter_module_Mcount_counter_xor_24_Q : X_XOR2
    generic map(
      LOC => "CLB_R16C22.S0"
    )
    port map (
      I0 => CLK_Counter_module_counter_24_CYINIT_942,
      I1 => CLK_Counter_module_counter_24_FROM,
      O => Result(24)
    );
  CLK_Counter_module_counter_24_F : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "CLB_R16C22.S0"
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
      LOC => "CLB_R16C22.S0"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => CLK_Counter_module_counter(25),
      ADR3 => VCC,
      O => CLK_Counter_module_counter_25_rt_944
    );
  CLK_Counter_module_Mcount_counter_xor_25_Q : X_XOR2
    generic map(
      LOC => "CLB_R16C22.S0"
    )
    port map (
      I0 => CLK_Counter_module_Mcount_counter_cy_24_Q_943,
      I1 => CLK_Counter_module_counter_25_rt_944,
      O => Result(25)
    );
  CLK_Counter_module_counter_24_CYINIT : X_BUF
    generic map(
      LOC => "CLB_R16C22.S0"
    )
    port map (
      I => CLK_Counter_module_counter_22_CYMUXG,
      O => CLK_Counter_module_counter_24_CYINIT_942
    );
  CLK_Counter_module_counter_24 : X_SFF
    generic map(
      LOC => "CLB_R16C22.S0",
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

