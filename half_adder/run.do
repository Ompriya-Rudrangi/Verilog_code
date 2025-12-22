vlog -work work -vopt -stats=none C:/MasterVLSI/verilog/verilog_practice/half_adder_v/design.v
vlog -work work -vopt -stats=none C:/MasterVLSI/verilog/verilog_practice/half_adder_v/test_bench.v
vsim -voptargs=+acc work.tb -debugDB
add schematic -full sim:/tb
add wave -position insertpoint sim:/tb/*
run -all 
