onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /ev21g1_decode_tb/clk
add wave -noupdate -radix hexadecimal /ev21g1_decode_tb/instruction
add wave -noupdate /ev21g1_decode_tb/cpu/b2v_inst/jmp
add wave -noupdate /ev21g1_decode_tb/cpu/b2v_inst/jze
add wave -noupdate /ev21g1_decode_tb/cpu/b2v_inst/jne
add wave -noupdate /ev21g1_decode_tb/cpu/b2v_inst/jov
add wave -noupdate /ev21g1_decode_tb/cpu/b2v_inst/jcy
add wave -noupdate /ev21g1_decode_tb/cpu/b2v_inst/bsr
add wave -noupdate /ev21g1_decode_tb/cpu/b2v_inst/ret
add wave -noupdate -radix hexadecimal /ev21g1_decode_tb/cpu/b2v_inst/b2v_inst6/b2v_inst/b2v_inst/out
add wave -noupdate -radix hexadecimal /ev21g1_decode_tb/cpu/b2v_inst/b2v_inst6/b2v_inst1/b2v_inst/out
add wave -noupdate -radix hexadecimal /ev21g1_decode_tb/cpu/b2v_inst/b2v_inst6/b2v_inst2/b2v_inst/out
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {12 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 395
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
WaveRestoreZoom {7 ps} {26 ps}
