## NOTE: Do not edit this file.
## Auto generated by Project Navigator for Post-Map Simulation
##
vlib work
## Compile Post-Map Model
vcom -explicit  -93 "netgen/par/Test_for_full_shema_timesim.vhd"
vcom -explicit  -93 "Test_for_full_shema.vhd"
vsim -t 1ps -sdfmax "/UUT=netgen/par/Test_for_full_shema_timesim.sdf"  -lib work Test_for_full_shema
do {Test_for_full_shema.mdo}
view wave
view structure
view signals
run 1000000ns
do {Test_for_full_shema.udo}
## End