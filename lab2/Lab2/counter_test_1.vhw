--------------------------------------------------------------------------------
-- Copyright (c) 1995-2003 Xilinx, Inc.
-- All Right Reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 10.1
--  \   \         Application : ISE
--  /   /         Filename : counter_test_1.vhw
-- /___/   /\     Timestamp : Tue Oct 08 17:11:59 2013
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: 
--Design Name: counter_test_1
--Device: Xilinx
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_TEXTIO.ALL;
USE STD.TEXTIO.ALL;

ENTITY counter_test_1 IS
END counter_test_1;

ARCHITECTURE testbench_arch OF counter_test_1 IS
    FILE RESULTS: TEXT OPEN WRITE_MODE IS "results.txt";

    COMPONENT Up_Down_counter
        PORT (
            DATA : In std_logic_vector (3 DownTo 0);
            CPD : In std_logic;
            CPU : In std_logic;
            MR : In std_logic;
            notPL : In std_logic;
            OUTPUT : Out std_logic_vector (3 DownTo 0);
            T : Out std_logic_vector (3 DownTo 0);
            magic : Out std_logic;
            notTCD : Out std_logic;
            notTCU : Out std_logic
        );
    END COMPONENT;

    SIGNAL DATA : std_logic_vector (3 DownTo 0) := "0000";
    SIGNAL CPD : std_logic := '0';
    SIGNAL CPU : std_logic := '0';
    SIGNAL MR : std_logic := '0';
    SIGNAL notPL : std_logic := '0';
    SIGNAL OUTPUT : std_logic_vector (3 DownTo 0) := "0000";
    SIGNAL T : std_logic_vector (3 DownTo 0) := "0000";
    SIGNAL magic : std_logic := '0';
    SIGNAL notTCD : std_logic := '0';
    SIGNAL notTCU : std_logic := '0';

    BEGIN
        UUT : Up_Down_counter
        PORT MAP (
            DATA => DATA,
            CPD => CPD,
            CPU => CPU,
            MR => MR,
            notPL => notPL,
            OUTPUT => OUTPUT,
            T => T,
            magic => magic,
            notTCD => notTCD,
            notTCU => notTCU
        );

        PROCESS
            BEGIN
                -- -------------  Current Time:  200ns
                WAIT FOR 200 ns;
                CPU <= '1';
                notPL <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  300ns
                WAIT FOR 100 ns;
                CPU <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  400ns
                WAIT FOR 100 ns;
                CPU <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  500ns
                WAIT FOR 100 ns;
                CPU <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  600ns
                WAIT FOR 100 ns;
                CPU <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  700ns
                WAIT FOR 100 ns;
                CPU <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  800ns
                WAIT FOR 100 ns;
                CPU <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  900ns
                WAIT FOR 100 ns;
                CPU <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  1000ns
                WAIT FOR 100 ns;
                CPU <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  1100ns
                WAIT FOR 100 ns;
                CPU <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  1200ns
                WAIT FOR 100 ns;
                CPU <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  1300ns
                WAIT FOR 100 ns;
                CPU <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  1400ns
                WAIT FOR 100 ns;
                CPU <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  1500ns
                WAIT FOR 100 ns;
                CPU <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  1600ns
                WAIT FOR 100 ns;
                CPU <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  1700ns
                WAIT FOR 100 ns;
                CPU <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  1800ns
                WAIT FOR 100 ns;
                CPU <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  1900ns
                WAIT FOR 100 ns;
                CPU <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  2000ns
                WAIT FOR 100 ns;
                CPU <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  2100ns
                WAIT FOR 100 ns;
                CPU <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  2200ns
                WAIT FOR 100 ns;
                CPU <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  2300ns
                WAIT FOR 100 ns;
                CPU <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  2400ns
                WAIT FOR 100 ns;
                CPU <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  2500ns
                WAIT FOR 100 ns;
                CPU <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  2600ns
                WAIT FOR 100 ns;
                CPU <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  2700ns
                WAIT FOR 100 ns;
                CPU <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  2800ns
                WAIT FOR 100 ns;
                CPU <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  2900ns
                WAIT FOR 100 ns;
                CPU <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  3000ns
                WAIT FOR 100 ns;
                CPU <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  3100ns
                WAIT FOR 100 ns;
                CPU <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  3200ns
                WAIT FOR 100 ns;
                CPU <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  3300ns
                WAIT FOR 100 ns;
                CPU <= '0';
                -- -------------------------------------
                WAIT FOR 1700 ns;

            END PROCESS;

    END testbench_arch;

