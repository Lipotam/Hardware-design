--------------------------------------------------------------------------------
-- Copyright (c) 1995-2003 Xilinx, Inc.
-- All Right Reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 10.1
--  \   \         Application : ISE
--  /   /         Filename : counter_test1.vhw
-- /___/   /\     Timestamp : Tue Oct 08 16:16:22 2013
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: 
--Design Name: counter_test1
--Device: Xilinx
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_TEXTIO.ALL;
USE STD.TEXTIO.ALL;

ENTITY counter_test1 IS
END counter_test1;

ARCHITECTURE testbench_arch OF counter_test1 IS
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
            notTCD => notTCD,
            notTCU => notTCU
        );

        PROCESS
            BEGIN
                -- -------------  Current Time:  100ns
                WAIT FOR 100 ns;
                MR <= '1';
                notPL <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  200ns
                WAIT FOR 100 ns;
                CPU <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  300ns
                WAIT FOR 100 ns;
                CPU <= '0';
                notPL <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  400ns
                WAIT FOR 100 ns;
                CPU <= '1';
                MR <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  500ns
                WAIT FOR 100 ns;
                CPU <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  600ns
                WAIT FOR 100 ns;
                CPU <= '1';
                MR <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  700ns
                WAIT FOR 100 ns;
                CPU <= '0';
                notPL <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  800ns
                WAIT FOR 100 ns;
                CPU <= '1';
                notPL <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  900ns
                WAIT FOR 100 ns;
                CPU <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  1000ns
                WAIT FOR 100 ns;
                CPU <= '1';

            END PROCESS;

    END testbench_arch;

