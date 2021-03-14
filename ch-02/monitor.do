onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix decimal /muxex/a
add wave -noupdate -radix decimal /muxex/b
add wave -noupdate -radix decimal /muxex/out
add wave -noupdate -radix decimal /muxex/sel
add wave -noupdate -radix decimal /muxex/clk
add wave -noupdate -format Analog-Step -height 74 -max 6.0 -min 4.0 -radix decimal /muxex/out
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {24 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
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
WaveRestoreZoom {0 ps} {100 ps}
