vlib work
vlog hex_to_7seg.sv hex_to_7seg_tb.sv
vsim hex_to_7seg_tb

add wave -r *
run 100ns

view wave
