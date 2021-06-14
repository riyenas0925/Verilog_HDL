onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix unsigned /moving_avg_tb/clk
add wave -noupdate -radix unsigned /moving_avg_tb/nRST
add wave -noupdate -radix unsigned /moving_avg_tb/mask
add wave -noupdate -radix unsigned /moving_avg_tb/data_in
add wave -noupdate -radix unsigned /moving_avg_tb/e_in
add wave -noupdate -radix unsigned /moving_avg_tb/data_out
add wave -noupdate -radix unsigned /moving_avg_tb/e_out
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {2521 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 272
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {153 ps}
