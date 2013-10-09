--------------------------------------------------------------------------------
-- Copyright (c) 1995-2003 Xilinx, Inc.
-- All Right Reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 10.1.03
--  \   \         Application : ISE
--  /   /         Filename : counter_test_1.vhw
-- /___/   /\     Timestamp : Tue Oct 08 19:58:02 2013
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
            reset : Out std_logic_vector (3 DownTo 0);
            set : Out std_logic_vector (3 DownTo 0);
            magic : Out std_logic;
            and_4 : Out std_logic;
            and_5 : Out std_logic;
            and_6 : Out std_logic;
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
    SIGNAL reset : std_logic_vector (3 DownTo 0) := "0000";
    SIGNAL set : std_logic_vector (3 DownTo 0) := "0000";
    SIGNAL magic : std_logic := '0';
    SIGNAL and_4 : std_logic := '0';
    SIGNAL and_5 : std_logic := '0';
    SIGNAL and_6 : std_logic := '0';
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
            reset => reset,
            set => set,
            magic => magic,
            and_4 => and_4,
            and_5 => and_5,
            and_6 => and_6,
            notTCD => notTCD,
            notTCU => notTCU
        );

        PROCESS
            BEGIN
                -- -------------  Current Time:  100ns
                WAIT FOR 100 ns;
                CPD <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  200ns
                WAIT FOR 100 ns;
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
                -- -------------  Current Time:  3400ns
                WAIT FOR 100 ns;
                CPU <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  3500ns
                WAIT FOR 100 ns;
                CPU <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  3600ns
                WAIT FOR 100 ns;
                CPU <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  3700ns
                WAIT FOR 100 ns;
                CPU <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  3800ns
                WAIT FOR 100 ns;
                CPU <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  3900ns
                WAIT FOR 100 ns;
                CPU <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  4000ns
                WAIT FOR 100 ns;
                CPU <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  4100ns
                WAIT FOR 100 ns;
                CPU <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  4200ns
                WAIT FOR 100 ns;
                CPU <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  4300ns
                WAIT FOR 100 ns;
                CPU <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  4400ns
                WAIT FOR 100 ns;
                CPU <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  4500ns
                WAIT FOR 100 ns;
                CPU <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  4600ns
                WAIT FOR 100 ns;
                CPU <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  4700ns
                WAIT FOR 100 ns;
                CPU <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  4800ns
                WAIT FOR 100 ns;
                CPU <= '1';
                MR <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  4900ns
                WAIT FOR 100 ns;
                CPU <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  5000ns
                WAIT FOR 100 ns;
                CPU <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  5100ns
                WAIT FOR 100 ns;
                CPU <= '0';
                MR <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  5200ns
                WAIT FOR 100 ns;
                CPU <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  5300ns
                WAIT FOR 100 ns;
                CPU <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  5400ns
                WAIT FOR 100 ns;
                CPU <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  5500ns
                WAIT FOR 100 ns;
                CPU <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  5600ns
                WAIT FOR 100 ns;
                CPU <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  5700ns
                WAIT FOR 100 ns;
                CPU <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  5800ns
                WAIT FOR 100 ns;
                CPU <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  5900ns
                WAIT FOR 100 ns;
                CPU <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  6000ns
                WAIT FOR 100 ns;
                CPU <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  6100ns
                WAIT FOR 100 ns;
                CPU <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  6200ns
                WAIT FOR 100 ns;
                CPU <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  6300ns
                WAIT FOR 100 ns;
                CPU <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  6400ns
                WAIT FOR 100 ns;
                CPU <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  6500ns
                WAIT FOR 100 ns;
                CPU <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  6600ns
                WAIT FOR 100 ns;
                CPU <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  6700ns
                WAIT FOR 100 ns;
                CPU <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  6800ns
                WAIT FOR 100 ns;
                CPU <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  6900ns
                WAIT FOR 100 ns;
                CPU <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  7000ns
                WAIT FOR 100 ns;
                CPU <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  7100ns
                WAIT FOR 100 ns;
                CPU <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  7200ns
                WAIT FOR 100 ns;
                CPU <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  7300ns
                WAIT FOR 100 ns;
                CPU <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  7400ns
                WAIT FOR 100 ns;
                CPU <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  7500ns
                WAIT FOR 100 ns;
                CPU <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  7600ns
                WAIT FOR 100 ns;
                CPU <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  7700ns
                WAIT FOR 100 ns;
                CPU <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  7800ns
                WAIT FOR 100 ns;
                CPU <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  7900ns
                WAIT FOR 100 ns;
                CPU <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  8000ns
                WAIT FOR 100 ns;
                CPU <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  8100ns
                WAIT FOR 100 ns;
                CPU <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  8200ns
                WAIT FOR 100 ns;
                CPU <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  8300ns
                WAIT FOR 100 ns;
                CPU <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  8400ns
                WAIT FOR 100 ns;
                CPU <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  8500ns
                WAIT FOR 100 ns;
                CPU <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  8600ns
                WAIT FOR 100 ns;
                CPU <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  8700ns
                WAIT FOR 100 ns;
                CPU <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  8800ns
                WAIT FOR 100 ns;
                CPU <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  8900ns
                WAIT FOR 100 ns;
                CPU <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  9000ns
                WAIT FOR 100 ns;
                CPU <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  9100ns
                WAIT FOR 100 ns;
                CPU <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  9200ns
                WAIT FOR 100 ns;
                CPU <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  9300ns
                WAIT FOR 100 ns;
                CPU <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  9400ns
                WAIT FOR 100 ns;
                CPU <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  9500ns
                WAIT FOR 100 ns;
                CPU <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  9600ns
                WAIT FOR 100 ns;
                CPU <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  9700ns
                WAIT FOR 100 ns;
                CPU <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  9800ns
                WAIT FOR 100 ns;
                CPU <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  9900ns
                WAIT FOR 100 ns;
                CPU <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  10000ns
                WAIT FOR 100 ns;
                CPU <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  10100ns
                WAIT FOR 100 ns;
                CPU <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  10200ns
                WAIT FOR 100 ns;
                CPU <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  10300ns
                WAIT FOR 100 ns;
                CPU <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  10400ns
                WAIT FOR 100 ns;
                CPU <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  10500ns
                WAIT FOR 100 ns;
                CPU <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  10600ns
                WAIT FOR 100 ns;
                CPU <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  10700ns
                WAIT FOR 100 ns;
                CPU <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  10800ns
                WAIT FOR 100 ns;
                CPU <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  10900ns
                WAIT FOR 100 ns;
                CPU <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  11000ns
                WAIT FOR 100 ns;
                CPU <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  11100ns
                WAIT FOR 100 ns;
                CPU <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  11200ns
                WAIT FOR 100 ns;
                CPU <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  11300ns
                WAIT FOR 100 ns;
                CPU <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  11400ns
                WAIT FOR 100 ns;
                CPU <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  11500ns
                WAIT FOR 100 ns;
                CPU <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  11600ns
                WAIT FOR 100 ns;
                CPU <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  11700ns
                WAIT FOR 100 ns;
                CPU <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  11800ns
                WAIT FOR 100 ns;
                CPU <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  11900ns
                WAIT FOR 100 ns;
                CPU <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  12000ns
                WAIT FOR 100 ns;
                CPU <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  12100ns
                WAIT FOR 100 ns;
                CPU <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  12200ns
                WAIT FOR 100 ns;
                CPU <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  12300ns
                WAIT FOR 100 ns;
                CPU <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  12400ns
                WAIT FOR 100 ns;
                CPU <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  12500ns
                WAIT FOR 100 ns;
                CPU <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  12600ns
                WAIT FOR 100 ns;
                CPU <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  12800ns
                WAIT FOR 200 ns;
                CPD <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  12900ns
                WAIT FOR 100 ns;
                CPD <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  13000ns
                WAIT FOR 100 ns;
                CPD <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  13100ns
                WAIT FOR 100 ns;
                CPD <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  13200ns
                WAIT FOR 100 ns;
                CPD <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  13300ns
                WAIT FOR 100 ns;
                CPD <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  13400ns
                WAIT FOR 100 ns;
                CPD <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  13500ns
                WAIT FOR 100 ns;
                CPD <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  13600ns
                WAIT FOR 100 ns;
                CPD <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  13700ns
                WAIT FOR 100 ns;
                CPD <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  13800ns
                WAIT FOR 100 ns;
                CPD <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  13900ns
                WAIT FOR 100 ns;
                CPD <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  14000ns
                WAIT FOR 100 ns;
                CPD <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  14100ns
                WAIT FOR 100 ns;
                CPD <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  14200ns
                WAIT FOR 100 ns;
                CPD <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  14300ns
                WAIT FOR 100 ns;
                CPD <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  14400ns
                WAIT FOR 100 ns;
                CPD <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  14500ns
                WAIT FOR 100 ns;
                CPD <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  14600ns
                WAIT FOR 100 ns;
                CPD <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  14700ns
                WAIT FOR 100 ns;
                CPD <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  14800ns
                WAIT FOR 100 ns;
                CPD <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  14900ns
                WAIT FOR 100 ns;
                CPD <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  15000ns
                WAIT FOR 100 ns;
                CPD <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  15100ns
                WAIT FOR 100 ns;
                CPD <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  15200ns
                WAIT FOR 100 ns;
                CPD <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  15300ns
                WAIT FOR 100 ns;
                CPD <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  15400ns
                WAIT FOR 100 ns;
                CPD <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  15500ns
                WAIT FOR 100 ns;
                CPD <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  15600ns
                WAIT FOR 100 ns;
                CPD <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  15700ns
                WAIT FOR 100 ns;
                CPD <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  15800ns
                WAIT FOR 100 ns;
                CPD <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  15900ns
                WAIT FOR 100 ns;
                CPD <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  16100ns
                WAIT FOR 200 ns;
                notPL <= '0';
                DATA <= "0101";
                -- -------------------------------------
                -- -------------  Current Time:  16900ns
                WAIT FOR 800 ns;
                notPL <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  17800ns
                WAIT FOR 900 ns;
                CPD <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  17900ns
                WAIT FOR 100 ns;
                CPD <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  18000ns
                WAIT FOR 100 ns;
                CPD <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  18100ns
                WAIT FOR 100 ns;
                CPD <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  18200ns
                WAIT FOR 100 ns;
                CPD <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  18300ns
                WAIT FOR 100 ns;
                CPD <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  18400ns
                WAIT FOR 100 ns;
                CPD <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  18500ns
                WAIT FOR 100 ns;
                CPD <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  18600ns
                WAIT FOR 100 ns;
                CPD <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  18700ns
                WAIT FOR 100 ns;
                CPD <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  18800ns
                WAIT FOR 100 ns;
                CPD <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  18900ns
                WAIT FOR 100 ns;
                CPD <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  19000ns
                WAIT FOR 100 ns;
                CPD <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  19100ns
                WAIT FOR 100 ns;
                CPD <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  19200ns
                WAIT FOR 100 ns;
                CPD <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  19300ns
                WAIT FOR 100 ns;
                CPD <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  19400ns
                WAIT FOR 100 ns;
                CPD <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  19500ns
                WAIT FOR 100 ns;
                CPD <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  19600ns
                WAIT FOR 100 ns;
                CPD <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  19700ns
                WAIT FOR 100 ns;
                CPD <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  19800ns
                WAIT FOR 100 ns;
                CPD <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  19900ns
                WAIT FOR 100 ns;
                CPD <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  20000ns
                WAIT FOR 100 ns;
                CPD <= '0';

            END PROCESS;

    END testbench_arch;

