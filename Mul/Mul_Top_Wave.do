onerror {resume}
quietly virtual signal -install /MUL_Top { (context /MUL_Top )&{I_CTRL_UNIT_MUL_O_Mod_Booth_Enc_E0 ,I_CTRL_UNIT_MUL_O_Mod_Booth_Enc_E1 ,I_CTRL_UNIT_MUL_O_Mod_Booth_Enc_E2 , Core1_I_mux_Neg_O_CTRL_UNIT_MUL_E0 , Core1_I_mux_2A_O_CTRL_UNIT_MUL_E1 , Core1_I_mux_No0_O_CTRL_UNIT_MUL_E2 , Core2_I_mux_Neg_O_CTRL_UNIT_MUL_E0 , Core2_I_mux_2A_O_CTRL_UNIT_MUL_E1 , Core2_I_mux_No0_O_CTRL_UNIT_MUL_E2 ,Core1_I_Mux_2A_A_O_left_Shifter_2A ,Core1_I_2sComp_O_Mux_2A_A ,Core1_I_MUX_POS_NEG_O_2sComp_2A_A ,Core1_I_Mux_zero_A_O_Mux_POS_Neg ,Core1_I_Adder_O_Mux_Zero_A ,Core1_I_RightShfter_O_Acc ,Core1_I_Adder_O_RightShfter ,Core2_I_Mux_2A_A_O_left_Shifter_2A ,Core2_I_2sComp_O_Mux_2A_A ,Core2_I_MUX_POS_NEG_O_2sComp_2A_A ,Core2_I_Mux_zero_A_O_Mux_POS_Neg ,Core2_I_Adder_O_Mux_Zero_A ,Core2_I_RightShfter_O_Acc ,Core2_I_Adder_O_RightShfter ,Core1_I_Final_Adder_O_VarRightShfter ,Core2_I_Final_Adder_O_VarRightShfter }} Internals
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group Result /MUL_Top/MulValid
add wave -noupdate -expand -group Result -radix decimal /MUL_Top/Result
add wave -noupdate -expand -group MulTop /MUL_Top/clk
add wave -noupdate -expand -group MulTop /MUL_Top/rst
add wave -noupdate -expand -group MulTop /MUL_Top/Enable
add wave -noupdate -expand -group MulTop /MUL_Top/Softrst
add wave -noupdate -expand -group MulTop /MUL_Top/I_Load
add wave -noupdate -expand -group MulTop -radix decimal /MUL_Top/A
add wave -noupdate -expand -group MulTop -radix decimal /MUL_Top/B
add wave -noupdate -expand -group MulTop /MUL_Top/Out
add wave -noupdate -expand -group MulTop /MUL_Top/Valid
add wave -noupdate -expand -group MulTop /MUL_Top/u_CTRL_UNIT_MUL/u_Counter/O_Finsih
add wave -noupdate -expand -group MulTop -radix decimal /MUL_Top/u_core_1_Var_Shift_Reg/Out_Reg
add wave -noupdate -expand -group MulTop /MUL_Top/MulValid
add wave -noupdate -expand -group MulTop /MUL_Top/Result
add wave -noupdate -expand -group MulTop -group Internals /MUL_Top/I_CTRL_UNIT_MUL_O_Mod_Booth_Enc_E0
add wave -noupdate -expand -group MulTop -group Internals /MUL_Top/I_CTRL_UNIT_MUL_O_Mod_Booth_Enc_E1
add wave -noupdate -expand -group MulTop -group Internals /MUL_Top/I_CTRL_UNIT_MUL_O_Mod_Booth_Enc_E2
add wave -noupdate -expand -group MulTop -group Internals /MUL_Top/Core1_I_mux_Neg_O_CTRL_UNIT_MUL_E0
add wave -noupdate -expand -group MulTop -group Internals /MUL_Top/Core1_I_mux_2A_O_CTRL_UNIT_MUL_E1
add wave -noupdate -expand -group MulTop -group Internals /MUL_Top/Core1_I_mux_No0_O_CTRL_UNIT_MUL_E2
add wave -noupdate -expand -group MulTop -group Internals /MUL_Top/Core2_I_mux_Neg_O_CTRL_UNIT_MUL_E0
add wave -noupdate -expand -group MulTop -group Internals /MUL_Top/Core2_I_mux_2A_O_CTRL_UNIT_MUL_E1
add wave -noupdate -expand -group MulTop -group Internals /MUL_Top/Core2_I_mux_No0_O_CTRL_UNIT_MUL_E2
add wave -noupdate -expand -group MulTop -group Internals /MUL_Top/Core1_I_Mux_2A_A_O_left_Shifter_2A
add wave -noupdate -expand -group MulTop -group Internals /MUL_Top/Core1_I_2sComp_O_Mux_2A_A
add wave -noupdate -expand -group MulTop -group Internals /MUL_Top/Core1_I_MUX_POS_NEG_O_2sComp_2A_A
add wave -noupdate -expand -group MulTop -group Internals /MUL_Top/Core1_I_Mux_zero_A_O_Mux_POS_Neg
add wave -noupdate -expand -group MulTop -group Internals /MUL_Top/Core1_I_Adder_O_Mux_Zero_A
add wave -noupdate -expand -group MulTop -group Internals /MUL_Top/Core1_I_RightShfter_O_Acc
add wave -noupdate -expand -group MulTop -group Internals /MUL_Top/Core1_I_Adder_O_RightShfter
add wave -noupdate -expand -group MulTop -group Internals /MUL_Top/Core2_I_Mux_2A_A_O_left_Shifter_2A
add wave -noupdate -expand -group MulTop -group Internals /MUL_Top/Core2_I_2sComp_O_Mux_2A_A
add wave -noupdate -expand -group MulTop -group Internals /MUL_Top/Core2_I_MUX_POS_NEG_O_2sComp_2A_A
add wave -noupdate -expand -group MulTop -group Internals /MUL_Top/Core2_I_Mux_zero_A_O_Mux_POS_Neg
add wave -noupdate -expand -group MulTop -group Internals /MUL_Top/Core2_I_Adder_O_Mux_Zero_A
add wave -noupdate -expand -group MulTop -group Internals /MUL_Top/Core2_I_RightShfter_O_Acc
add wave -noupdate -expand -group MulTop -group Internals /MUL_Top/Core2_I_Adder_O_RightShfter
add wave -noupdate -expand -group MulTop -group Internals /MUL_Top/Core1_I_Final_Adder_O_VarRightShfter
add wave -noupdate -expand -group MulTop -group Internals /MUL_Top/Core2_I_Final_Adder_O_VarRightShfter
add wave -noupdate -divider CTRL
add wave -noupdate -group Mood_Booth_Enc /MUL_Top/u_Mod_Booth_Enc/Oprand
add wave -noupdate -group Mood_Booth_Enc /MUL_Top/u_Mod_Booth_Enc/E0
add wave -noupdate -group Mood_Booth_Enc /MUL_Top/u_Mod_Booth_Enc/E1
add wave -noupdate -group Mood_Booth_Enc /MUL_Top/u_Mod_Booth_Enc/E2
add wave -noupdate -group Mood_Booth_Enc /MUL_Top/u_Mod_Booth_Enc/i
add wave -noupdate -expand -group CTRL_Unit /MUL_Top/u_CTRL_UNIT_MUL/clk
add wave -noupdate -expand -group CTRL_Unit /MUL_Top/u_CTRL_UNIT_MUL/rst
add wave -noupdate -expand -group CTRL_Unit /MUL_Top/u_CTRL_UNIT_MUL/Enable_MUL
add wave -noupdate -expand -group CTRL_Unit /MUL_Top/u_CTRL_UNIT_MUL/I_Load
add wave -noupdate -expand -group CTRL_Unit /MUL_Top/u_CTRL_UNIT_MUL/I_Counter_SoftRst
add wave -noupdate -expand -group CTRL_Unit /MUL_Top/u_CTRL_UNIT_MUL/I_E0
add wave -noupdate -expand -group CTRL_Unit /MUL_Top/u_CTRL_UNIT_MUL/I_E1
add wave -noupdate -expand -group CTRL_Unit /MUL_Top/u_CTRL_UNIT_MUL/I_E2
add wave -noupdate -expand -group CTRL_Unit /MUL_Top/u_CTRL_UNIT_MUL/O_Core1_E0
add wave -noupdate -expand -group CTRL_Unit /MUL_Top/u_CTRL_UNIT_MUL/O_Core1_E1
add wave -noupdate -expand -group CTRL_Unit /MUL_Top/u_CTRL_UNIT_MUL/O_Core1_E2
add wave -noupdate -expand -group CTRL_Unit /MUL_Top/u_CTRL_UNIT_MUL/O_Core2_E0
add wave -noupdate -expand -group CTRL_Unit /MUL_Top/u_CTRL_UNIT_MUL/O_Core2_E1
add wave -noupdate -expand -group CTRL_Unit /MUL_Top/u_CTRL_UNIT_MUL/O_Core2_E2
add wave -noupdate -expand -group CTRL_Unit /MUL_Top/u_CTRL_UNIT_MUL/O_Finsih
add wave -noupdate -expand -group CTRL_Unit -expand -group Counter /MUL_Top/u_CTRL_UNIT_MUL/u_Counter/clk
add wave -noupdate -expand -group CTRL_Unit -expand -group Counter /MUL_Top/u_CTRL_UNIT_MUL/u_Counter/rst
add wave -noupdate -expand -group CTRL_Unit -expand -group Counter /MUL_Top/u_CTRL_UNIT_MUL/u_Counter/Enable
add wave -noupdate -expand -group CTRL_Unit -expand -group Counter /MUL_Top/u_CTRL_UNIT_MUL/u_Counter/I_seed
add wave -noupdate -expand -group CTRL_Unit -expand -group Counter /MUL_Top/u_CTRL_UNIT_MUL/u_Counter/I_SoftRst
add wave -noupdate -expand -group CTRL_Unit -expand -group Counter /MUL_Top/u_CTRL_UNIT_MUL/u_Counter/I_Load
add wave -noupdate -expand -group CTRL_Unit -expand -group Counter /MUL_Top/u_CTRL_UNIT_MUL/u_Counter/O_Finsih
add wave -noupdate -expand -group CTRL_Unit -expand -group Counter -radix unsigned /MUL_Top/u_CTRL_UNIT_MUL/u_Counter/CounterReg
add wave -noupdate -divider Core2
add wave -noupdate -group Core2_VarRightShifter /MUL_Top/u_core_2__Var_Shift_Reg/In
add wave -noupdate -group Core2_VarRightShifter /MUL_Top/u_core_2__Var_Shift_Reg/clk
add wave -noupdate -group Core2_VarRightShifter /MUL_Top/u_core_2__Var_Shift_Reg/rst
add wave -noupdate -group Core2_VarRightShifter /MUL_Top/u_core_2__Var_Shift_Reg/I_SoftRst
add wave -noupdate -group Core2_VarRightShifter /MUL_Top/u_core_2__Var_Shift_Reg/Enable
add wave -noupdate -group Core2_VarRightShifter /MUL_Top/u_core_2__Var_Shift_Reg/Out_Reg
add wave -noupdate -group Core2_RighShifter /MUL_Top/u_core_2__Right_Shifter/In
add wave -noupdate -group Core2_RighShifter /MUL_Top/u_core_2__Right_Shifter/out
add wave -noupdate -group Core2_Adder /MUL_Top/u_core_2__Adder/I_IN1
add wave -noupdate -group Core2_Adder /MUL_Top/u_core_2__Adder/I_IN2
add wave -noupdate -group Core2_Adder /MUL_Top/u_core_2__Adder/clk
add wave -noupdate -group Core2_Adder /MUL_Top/u_core_2__Adder/rst
add wave -noupdate -group Core2_Adder /MUL_Top/u_core_2__Adder/I_SoftRst
add wave -noupdate -group Core2_Adder /MUL_Top/u_core_2__Adder/Enable
add wave -noupdate -group Core2_Adder /MUL_Top/u_core_2__Adder/O_AdderOut
add wave -noupdate -group Core2_Adder /MUL_Top/u_core_2__Adder/Adder_reg
add wave -noupdate -group Core2_Mux_zero_X /MUL_Top/u_core_2__N_bit_MUX_zero_x/IN_True
add wave -noupdate -group Core2_Mux_zero_X /MUL_Top/u_core_2__N_bit_MUX_zero_x/IN_False
add wave -noupdate -group Core2_Mux_zero_X /MUL_Top/u_core_2__N_bit_MUX_zero_x/sel
add wave -noupdate -group Core2_Mux_zero_X /MUL_Top/u_core_2__N_bit_MUX_zero_x/Out
add wave -noupdate -group Core2_Mux_Pos_Neg /MUL_Top/u_core_2__N_bit_MUX_POS_NEG/IN_True
add wave -noupdate -group Core2_Mux_Pos_Neg /MUL_Top/u_core_2__N_bit_MUX_POS_NEG/IN_False
add wave -noupdate -group Core2_Mux_Pos_Neg /MUL_Top/u_core_2__N_bit_MUX_POS_NEG/sel
add wave -noupdate -group Core2_Mux_Pos_Neg /MUL_Top/u_core_2__N_bit_MUX_POS_NEG/Out
add wave -noupdate -group Core2_2sComp /MUL_Top/u_core_2__Two_sComp/In
add wave -noupdate -group Core2_2sComp /MUL_Top/u_core_2__Two_sComp/Out
add wave -noupdate -group Core2_Mux_2A_A /MUL_Top/u_core_2__N_bit_MUX_2A_A/IN_True
add wave -noupdate -group Core2_Mux_2A_A /MUL_Top/u_core_2__N_bit_MUX_2A_A/IN_False
add wave -noupdate -group Core2_Mux_2A_A /MUL_Top/u_core_2__N_bit_MUX_2A_A/sel
add wave -noupdate -group Core2_Mux_2A_A /MUL_Top/u_core_2__N_bit_MUX_2A_A/Out
add wave -noupdate -group Core2_leftShifter /MUL_Top/u_core_2__left_Shifter/In
add wave -noupdate -group Core2_leftShifter /MUL_Top/u_core_2__left_Shifter/out
add wave -noupdate -divider Core1
add wave -noupdate -expand -group Core1_VarShifter /MUL_Top/u_core_1_Var_Shift_Reg/In
add wave -noupdate -expand -group Core1_VarShifter /MUL_Top/u_core_1_Var_Shift_Reg/clk
add wave -noupdate -expand -group Core1_VarShifter /MUL_Top/u_core_1_Var_Shift_Reg/rst
add wave -noupdate -expand -group Core1_VarShifter /MUL_Top/u_core_1_Var_Shift_Reg/I_SoftRst
add wave -noupdate -expand -group Core1_VarShifter /MUL_Top/u_core_1_Var_Shift_Reg/Enable
add wave -noupdate -expand -group Core1_VarShifter -radix decimal /MUL_Top/u_core_1_Var_Shift_Reg/Out_Reg
add wave -noupdate -group Core1_Right_Shifter /MUL_Top/u_core_1_Right_Shifter/In
add wave -noupdate -group Core1_Right_Shifter /MUL_Top/u_core_1_Right_Shifter/out
add wave -noupdate -group Core1_Adder /MUL_Top/u_core_1_Adder/I_IN1
add wave -noupdate -group Core1_Adder /MUL_Top/u_core_1_Adder/I_IN2
add wave -noupdate -group Core1_Adder /MUL_Top/u_core_1_Adder/clk
add wave -noupdate -group Core1_Adder /MUL_Top/u_core_1_Adder/rst
add wave -noupdate -group Core1_Adder /MUL_Top/u_core_1_Adder/I_SoftRst
add wave -noupdate -group Core1_Adder /MUL_Top/u_core_1_Adder/Enable
add wave -noupdate -group Core1_Adder /MUL_Top/u_core_1_Adder/O_AdderOut
add wave -noupdate -group Core1_Adder /MUL_Top/u_core_1_Adder/Adder_reg
add wave -noupdate -group Core1_Mux_zero_X /MUL_Top/u_core_1_N_bit_MUX_zero_x/IN_True
add wave -noupdate -group Core1_Mux_zero_X /MUL_Top/u_core_1_N_bit_MUX_zero_x/IN_False
add wave -noupdate -group Core1_Mux_zero_X /MUL_Top/u_core_1_N_bit_MUX_zero_x/sel
add wave -noupdate -group Core1_Mux_zero_X /MUL_Top/u_core_1_N_bit_MUX_zero_x/Out
add wave -noupdate -group Core1_Mux_POS_Neg /MUL_Top/u_core_1_N_bit_MUX_POS_NEG/IN_True
add wave -noupdate -group Core1_Mux_POS_Neg /MUL_Top/u_core_1_N_bit_MUX_POS_NEG/IN_False
add wave -noupdate -group Core1_Mux_POS_Neg /MUL_Top/u_core_1_N_bit_MUX_POS_NEG/sel
add wave -noupdate -group Core1_Mux_POS_Neg /MUL_Top/u_core_1_N_bit_MUX_POS_NEG/Out
add wave -noupdate -group Core1_2sComp /MUL_Top/u_core_1_Two_sComp/In
add wave -noupdate -group Core1_2sComp /MUL_Top/u_core_1_Two_sComp/Out
add wave -noupdate -group Core1_Mux_2A_A /MUL_Top/u_core_1_N_bit_MUX_2A_A/IN_True
add wave -noupdate -group Core1_Mux_2A_A /MUL_Top/u_core_1_N_bit_MUX_2A_A/IN_False
add wave -noupdate -group Core1_Mux_2A_A /MUL_Top/u_core_1_N_bit_MUX_2A_A/sel
add wave -noupdate -group Core1_Mux_2A_A /MUL_Top/u_core_1_N_bit_MUX_2A_A/Out
add wave -noupdate -group Core1_left_shifter /MUL_Top/u_core_1_left_Shifter/In
add wave -noupdate -group Core1_left_shifter /MUL_Top/u_core_1_left_Shifter/out
add wave -noupdate -expand -group Delay /MUL_Top/u_CTRL_UNIT_MUL/u_Delay/in
add wave -noupdate -expand -group Delay /MUL_Top/u_CTRL_UNIT_MUL/u_Delay/out
add wave -noupdate -expand -group Delay /MUL_Top/u_CTRL_UNIT_MUL/u_Delay/innerShifter
add wave -noupdate -expand -group Delay /MUL_Top/u_CTRL_UNIT_MUL/u_Delay/clk
add wave -noupdate -expand -group Delay /MUL_Top/u_CTRL_UNIT_MUL/u_Delay/rst
add wave -noupdate -divider FinalAdder
add wave -noupdate -expand -group FinalAdder /MUL_Top/u_Final_Adder/I_IN1
add wave -noupdate -expand -group FinalAdder /MUL_Top/u_Final_Adder/I_IN2
add wave -noupdate -expand -group FinalAdder /MUL_Top/u_Final_Adder/clk
add wave -noupdate -expand -group FinalAdder /MUL_Top/u_Final_Adder/rst
add wave -noupdate -expand -group FinalAdder /MUL_Top/u_Final_Adder/I_SoftRst
add wave -noupdate -expand -group FinalAdder /MUL_Top/u_Final_Adder/Enable
add wave -noupdate -expand -group FinalAdder /MUL_Top/u_Final_Adder/O_AdderOut
add wave -noupdate -expand -group FinalAdder /MUL_Top/u_Final_Adder/Adder_reg
add wave -noupdate -expand -group ValidMux_1 /MUL_Top/u_Validation_IN1_MUX/IN_True
add wave -noupdate -expand -group ValidMux_1 /MUL_Top/u_Validation_IN1_MUX/IN_False
add wave -noupdate -expand -group ValidMux_1 /MUL_Top/u_Validation_IN1_MUX/sel
add wave -noupdate -expand -group ValidMux_1 /MUL_Top/u_Validation_IN1_MUX/Out
add wave -noupdate -expand -group ValidMux_2 /MUL_Top/u_Validation_IN2_MUX/IN_True
add wave -noupdate -expand -group ValidMux_2 /MUL_Top/u_Validation_IN2_MUX/IN_False
add wave -noupdate -expand -group ValidMux_2 /MUL_Top/u_Validation_IN2_MUX/sel
add wave -noupdate -expand -group ValidMux_2 /MUL_Top/u_Validation_IN2_MUX/Out
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {300 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 296
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
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
WaveRestoreZoom {0 ps} {3552 ps}

force -freeze sim:/MUL_Top/A 111111111010001101011010010101 0
force -freeze sim:/MUL_Top/B 11011010110111000111111010 0
force -freeze sim:/MUL_Top/clk 1 0, 0 {50 ps} -r 100
force -freeze sim:/MUL_Top/rst 1 0
force -freeze sim:/MUL_Top/Enable 0 0
force -freeze sim:/MUL_Top/Softrst 1 0
force -freeze sim:/MUL_Top/I_Load 0 0
run
force -freeze sim:/MUL_Top/rst 0 0
run
force -freeze sim:/MUL_Top/rst 1 0
force -freeze sim:/MUL_Top/Enable 1 0
force -freeze sim:/MUL_Top/I_Load 1 0
run
force -freeze sim:/MUL_Top/I_Load 0 0
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
force -freeze sim:/MUL_Top/A 10011101010010111001111011100000 0
force -freeze sim:/MUL_Top/B 111000011011100111111111111001 0
force -freeze sim:/MUL_Top/clk 1 0, 0 {50 ps} -r 100
force -freeze sim:/MUL_Top/rst 1 0
force -freeze sim:/MUL_Top/Enable 0 0
force -freeze sim:/MUL_Top/Softrst 1 0
force -freeze sim:/MUL_Top/I_Load 0 0
run
force -freeze sim:/MUL_Top/rst 0 0
run
force -freeze sim:/MUL_Top/rst 1 0
force -freeze sim:/MUL_Top/Enable 1 0
force -freeze sim:/MUL_Top/I_Load 1 0
run
force -freeze sim:/MUL_Top/I_Load 0 0
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
force -freeze sim:/MUL_Top/A 11101111110111111010111110101101 0
force -freeze sim:/MUL_Top/B 101101111111101110010100011 0
force -freeze sim:/MUL_Top/clk 1 0, 0 {50 ps} -r 100
force -freeze sim:/MUL_Top/rst 1 0
force -freeze sim:/MUL_Top/Enable 0 0
force -freeze sim:/MUL_Top/Softrst 1 0
force -freeze sim:/MUL_Top/I_Load 0 0
run
force -freeze sim:/MUL_Top/rst 0 0
run
force -freeze sim:/MUL_Top/rst 1 0
force -freeze sim:/MUL_Top/Enable 1 0
force -freeze sim:/MUL_Top/I_Load 1 0
run
force -freeze sim:/MUL_Top/I_Load 0 0
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
force -freeze sim:/MUL_Top/A 10011100001100001110111010100000 0
force -freeze sim:/MUL_Top/B 1011100001001100010111111000100 0
force -freeze sim:/MUL_Top/clk 1 0, 0 {50 ps} -r 100
force -freeze sim:/MUL_Top/rst 1 0
force -freeze sim:/MUL_Top/Enable 0 0
force -freeze sim:/MUL_Top/Softrst 1 0
force -freeze sim:/MUL_Top/I_Load 0 0
run
force -freeze sim:/MUL_Top/rst 0 0
run
force -freeze sim:/MUL_Top/rst 1 0
force -freeze sim:/MUL_Top/Enable 1 0
force -freeze sim:/MUL_Top/I_Load 1 0
run
force -freeze sim:/MUL_Top/I_Load 0 0
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
force -freeze sim:/MUL_Top/A 1000000101110110111101011001010 0
force -freeze sim:/MUL_Top/B 1000011110100111101110101101101 0
force -freeze sim:/MUL_Top/clk 1 0, 0 {50 ps} -r 100
force -freeze sim:/MUL_Top/rst 1 0
force -freeze sim:/MUL_Top/Enable 0 0
force -freeze sim:/MUL_Top/Softrst 1 0
force -freeze sim:/MUL_Top/I_Load 0 0
run
force -freeze sim:/MUL_Top/rst 0 0
run
force -freeze sim:/MUL_Top/rst 1 0
force -freeze sim:/MUL_Top/Enable 1 0
force -freeze sim:/MUL_Top/I_Load 1 0
run
force -freeze sim:/MUL_Top/I_Load 0 0
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
force -freeze sim:/MUL_Top/A 10010000000111100010000111010010 0
force -freeze sim:/MUL_Top/B 1101101111111110001001110111000 0
force -freeze sim:/MUL_Top/clk 1 0, 0 {50 ps} -r 100
force -freeze sim:/MUL_Top/rst 1 0
force -freeze sim:/MUL_Top/Enable 0 0
force -freeze sim:/MUL_Top/Softrst 1 0
force -freeze sim:/MUL_Top/I_Load 0 0
run
force -freeze sim:/MUL_Top/rst 0 0
run
force -freeze sim:/MUL_Top/rst 1 0
force -freeze sim:/MUL_Top/Enable 1 0
force -freeze sim:/MUL_Top/I_Load 1 0
run
force -freeze sim:/MUL_Top/I_Load 0 0
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
force -freeze sim:/MUL_Top/A 1000000101100100110111010110111 0
force -freeze sim:/MUL_Top/B 1101100010111100101000011010001 0
force -freeze sim:/MUL_Top/clk 1 0, 0 {50 ps} -r 100
force -freeze sim:/MUL_Top/rst 1 0
force -freeze sim:/MUL_Top/Enable 0 0
force -freeze sim:/MUL_Top/Softrst 1 0
force -freeze sim:/MUL_Top/I_Load 0 0
run
force -freeze sim:/MUL_Top/rst 0 0
run
force -freeze sim:/MUL_Top/rst 1 0
force -freeze sim:/MUL_Top/Enable 1 0
force -freeze sim:/MUL_Top/I_Load 1 0
run
force -freeze sim:/MUL_Top/I_Load 0 0
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
force -freeze sim:/MUL_Top/A 10010000000111101101110100000000 0
force -freeze sim:/MUL_Top/B 10011100011111100000110000110001 0
force -freeze sim:/MUL_Top/clk 1 0, 0 {50 ps} -r 100
force -freeze sim:/MUL_Top/rst 1 0
force -freeze sim:/MUL_Top/Enable 0 0
force -freeze sim:/MUL_Top/Softrst 1 0
force -freeze sim:/MUL_Top/I_Load 0 0
run
force -freeze sim:/MUL_Top/rst 0 0
run
force -freeze sim:/MUL_Top/rst 1 0
force -freeze sim:/MUL_Top/Enable 1 0
force -freeze sim:/MUL_Top/I_Load 1 0
run
force -freeze sim:/MUL_Top/I_Load 0 0
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
force -freeze sim:/MUL_Top/A 11010101100101101101100110001110 0
force -freeze sim:/MUL_Top/B 1000010011111100000111110111001 0
force -freeze sim:/MUL_Top/clk 1 0, 0 {50 ps} -r 100
force -freeze sim:/MUL_Top/rst 1 0
force -freeze sim:/MUL_Top/Enable 0 0
force -freeze sim:/MUL_Top/Softrst 1 0
force -freeze sim:/MUL_Top/I_Load 0 0
run
force -freeze sim:/MUL_Top/rst 0 0
run
force -freeze sim:/MUL_Top/rst 1 0
force -freeze sim:/MUL_Top/Enable 1 0
force -freeze sim:/MUL_Top/I_Load 1 0
run
force -freeze sim:/MUL_Top/I_Load 0 0
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
force -freeze sim:/MUL_Top/A 101001010111001001010011011000 0
force -freeze sim:/MUL_Top/B 11110111111000001110000000010000 0
force -freeze sim:/MUL_Top/clk 1 0, 0 {50 ps} -r 100
force -freeze sim:/MUL_Top/rst 1 0
force -freeze sim:/MUL_Top/Enable 0 0
force -freeze sim:/MUL_Top/Softrst 1 0
force -freeze sim:/MUL_Top/I_Load 0 0
run
force -freeze sim:/MUL_Top/rst 0 0
run
force -freeze sim:/MUL_Top/rst 1 0
force -freeze sim:/MUL_Top/Enable 1 0
force -freeze sim:/MUL_Top/I_Load 1 0
run
force -freeze sim:/MUL_Top/I_Load 0 0
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
force -freeze sim:/MUL_Top/A 1111010111001110011000111110100 0
force -freeze sim:/MUL_Top/B 1110101000011000110010010100101 0
force -freeze sim:/MUL_Top/clk 1 0, 0 {50 ps} -r 100
force -freeze sim:/MUL_Top/rst 1 0
force -freeze sim:/MUL_Top/Enable 0 0
force -freeze sim:/MUL_Top/Softrst 1 0
force -freeze sim:/MUL_Top/I_Load 0 0
run
force -freeze sim:/MUL_Top/rst 0 0
run
force -freeze sim:/MUL_Top/rst 1 0
force -freeze sim:/MUL_Top/Enable 1 0
force -freeze sim:/MUL_Top/I_Load 1 0
run
force -freeze sim:/MUL_Top/I_Load 0 0
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
force -freeze sim:/MUL_Top/A 10100001011011100110000001101010 0
force -freeze sim:/MUL_Top/B 1000000101101110011100100110010 0
force -freeze sim:/MUL_Top/clk 1 0, 0 {50 ps} -r 100
force -freeze sim:/MUL_Top/rst 1 0
force -freeze sim:/MUL_Top/Enable 0 0
force -freeze sim:/MUL_Top/Softrst 1 0
force -freeze sim:/MUL_Top/I_Load 0 0
run
force -freeze sim:/MUL_Top/rst 0 0
run
force -freeze sim:/MUL_Top/rst 1 0
force -freeze sim:/MUL_Top/Enable 1 0
force -freeze sim:/MUL_Top/I_Load 1 0
run
force -freeze sim:/MUL_Top/I_Load 0 0
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
force -freeze sim:/MUL_Top/A 11111101011001110100101100100000 0
force -freeze sim:/MUL_Top/B 11010101111000010100100110001100 0
force -freeze sim:/MUL_Top/clk 1 0, 0 {50 ps} -r 100
force -freeze sim:/MUL_Top/rst 1 0
force -freeze sim:/MUL_Top/Enable 0 0
force -freeze sim:/MUL_Top/Softrst 1 0
force -freeze sim:/MUL_Top/I_Load 0 0
run
force -freeze sim:/MUL_Top/rst 0 0
run
force -freeze sim:/MUL_Top/rst 1 0
force -freeze sim:/MUL_Top/Enable 1 0
force -freeze sim:/MUL_Top/I_Load 1 0
run
force -freeze sim:/MUL_Top/I_Load 0 0
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
force -freeze sim:/MUL_Top/A 111011110001001011000110010000 0
force -freeze sim:/MUL_Top/B 11111100011101001010101101 0
force -freeze sim:/MUL_Top/clk 1 0, 0 {50 ps} -r 100
force -freeze sim:/MUL_Top/rst 1 0
force -freeze sim:/MUL_Top/Enable 0 0
force -freeze sim:/MUL_Top/Softrst 1 0
force -freeze sim:/MUL_Top/I_Load 0 0
run
force -freeze sim:/MUL_Top/rst 0 0
run
force -freeze sim:/MUL_Top/rst 1 0
force -freeze sim:/MUL_Top/Enable 1 0
force -freeze sim:/MUL_Top/I_Load 1 0
run
force -freeze sim:/MUL_Top/I_Load 0 0
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
force -freeze sim:/MUL_Top/A 11000001101011110110100111110 0
force -freeze sim:/MUL_Top/B 1001101001111111111011000001011 0
force -freeze sim:/MUL_Top/clk 1 0, 0 {50 ps} -r 100
force -freeze sim:/MUL_Top/rst 1 0
force -freeze sim:/MUL_Top/Enable 0 0
force -freeze sim:/MUL_Top/Softrst 1 0
force -freeze sim:/MUL_Top/I_Load 0 0
run
force -freeze sim:/MUL_Top/rst 0 0
run
force -freeze sim:/MUL_Top/rst 1 0
force -freeze sim:/MUL_Top/Enable 1 0
force -freeze sim:/MUL_Top/I_Load 1 0
run
force -freeze sim:/MUL_Top/I_Load 0 0
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
force -freeze sim:/MUL_Top/A 10001001110100011101110101101110 0
force -freeze sim:/MUL_Top/B 11000111010111011000010000011111 0
force -freeze sim:/MUL_Top/clk 1 0, 0 {50 ps} -r 100
force -freeze sim:/MUL_Top/rst 1 0
force -freeze sim:/MUL_Top/Enable 0 0
force -freeze sim:/MUL_Top/Softrst 1 0
force -freeze sim:/MUL_Top/I_Load 0 0
run
force -freeze sim:/MUL_Top/rst 0 0
run
force -freeze sim:/MUL_Top/rst 1 0
force -freeze sim:/MUL_Top/Enable 1 0
force -freeze sim:/MUL_Top/I_Load 1 0
run
force -freeze sim:/MUL_Top/I_Load 0 0
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
force -freeze sim:/MUL_Top/A 10111001010111000010111011110011 0
force -freeze sim:/MUL_Top/B 110011110111010001100111001011 0
force -freeze sim:/MUL_Top/clk 1 0, 0 {50 ps} -r 100
force -freeze sim:/MUL_Top/rst 1 0
force -freeze sim:/MUL_Top/Enable 0 0
force -freeze sim:/MUL_Top/Softrst 1 0
force -freeze sim:/MUL_Top/I_Load 0 0
run
force -freeze sim:/MUL_Top/rst 0 0
run
force -freeze sim:/MUL_Top/rst 1 0
force -freeze sim:/MUL_Top/Enable 1 0
force -freeze sim:/MUL_Top/I_Load 1 0
run
force -freeze sim:/MUL_Top/I_Load 0 0
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
force -freeze sim:/MUL_Top/A 10101111001101111110001100100000 0
force -freeze sim:/MUL_Top/B 10101001100011011001010010110111 0
force -freeze sim:/MUL_Top/clk 1 0, 0 {50 ps} -r 100
force -freeze sim:/MUL_Top/rst 1 0
force -freeze sim:/MUL_Top/Enable 0 0
force -freeze sim:/MUL_Top/Softrst 1 0
force -freeze sim:/MUL_Top/I_Load 0 0
run
force -freeze sim:/MUL_Top/rst 0 0
run
force -freeze sim:/MUL_Top/rst 1 0
force -freeze sim:/MUL_Top/Enable 1 0
force -freeze sim:/MUL_Top/I_Load 1 0
run
force -freeze sim:/MUL_Top/I_Load 0 0
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
force -freeze sim:/MUL_Top/A 10000010100001001111111001101011 0
force -freeze sim:/MUL_Top/B 1110111110110010100011110001100 0
force -freeze sim:/MUL_Top/clk 1 0, 0 {50 ps} -r 100
force -freeze sim:/MUL_Top/rst 1 0
force -freeze sim:/MUL_Top/Enable 0 0
force -freeze sim:/MUL_Top/Softrst 1 0
force -freeze sim:/MUL_Top/I_Load 0 0
run
force -freeze sim:/MUL_Top/rst 0 0
run
force -freeze sim:/MUL_Top/rst 1 0
force -freeze sim:/MUL_Top/Enable 1 0
force -freeze sim:/MUL_Top/I_Load 1 0
run
force -freeze sim:/MUL_Top/I_Load 0 0
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
force -freeze sim:/MUL_Top/A 10011010101111011001001111010111 0
force -freeze sim:/MUL_Top/B 11100101011000000001010000000001 0
force -freeze sim:/MUL_Top/clk 1 0, 0 {50 ps} -r 100
force -freeze sim:/MUL_Top/rst 1 0
force -freeze sim:/MUL_Top/Enable 0 0
force -freeze sim:/MUL_Top/Softrst 1 0
force -freeze sim:/MUL_Top/I_Load 0 0
run
force -freeze sim:/MUL_Top/rst 0 0
run
force -freeze sim:/MUL_Top/rst 1 0
force -freeze sim:/MUL_Top/Enable 1 0
force -freeze sim:/MUL_Top/I_Load 1 0
run
force -freeze sim:/MUL_Top/I_Load 0 0
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
force -freeze sim:/MUL_Top/A 10100100001100100011001000001101 0
force -freeze sim:/MUL_Top/B 1001101100010101000100011111011 0
force -freeze sim:/MUL_Top/clk 1 0, 0 {50 ps} -r 100
force -freeze sim:/MUL_Top/rst 1 0
force -freeze sim:/MUL_Top/Enable 0 0
force -freeze sim:/MUL_Top/Softrst 1 0
force -freeze sim:/MUL_Top/I_Load 0 0
run
force -freeze sim:/MUL_Top/rst 0 0
run
force -freeze sim:/MUL_Top/rst 1 0
force -freeze sim:/MUL_Top/Enable 1 0
force -freeze sim:/MUL_Top/I_Load 1 0
run
force -freeze sim:/MUL_Top/I_Load 0 0
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
force -freeze sim:/MUL_Top/A 101001101011101000111110110000 0
force -freeze sim:/MUL_Top/B 100011001110100000000101011001 0
force -freeze sim:/MUL_Top/clk 1 0, 0 {50 ps} -r 100
force -freeze sim:/MUL_Top/rst 1 0
force -freeze sim:/MUL_Top/Enable 0 0
force -freeze sim:/MUL_Top/Softrst 1 0
force -freeze sim:/MUL_Top/I_Load 0 0
run
force -freeze sim:/MUL_Top/rst 0 0
run
force -freeze sim:/MUL_Top/rst 1 0
force -freeze sim:/MUL_Top/Enable 1 0
force -freeze sim:/MUL_Top/I_Load 1 0
run
force -freeze sim:/MUL_Top/I_Load 0 0
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
force -freeze sim:/MUL_Top/A 1100101010011111101101010100101 0
force -freeze sim:/MUL_Top/B 10111101110000010011111101101100 0
force -freeze sim:/MUL_Top/clk 1 0, 0 {50 ps} -r 100
force -freeze sim:/MUL_Top/rst 1 0
force -freeze sim:/MUL_Top/Enable 0 0
force -freeze sim:/MUL_Top/Softrst 1 0
force -freeze sim:/MUL_Top/I_Load 0 0
run
force -freeze sim:/MUL_Top/rst 0 0
run
force -freeze sim:/MUL_Top/rst 1 0
force -freeze sim:/MUL_Top/Enable 1 0
force -freeze sim:/MUL_Top/I_Load 1 0
run
force -freeze sim:/MUL_Top/I_Load 0 0
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
force -freeze sim:/MUL_Top/A 11011110101101000101011001010011 0
force -freeze sim:/MUL_Top/B 101011011110011101100010100100 0
force -freeze sim:/MUL_Top/clk 1 0, 0 {50 ps} -r 100
force -freeze sim:/MUL_Top/rst 1 0
force -freeze sim:/MUL_Top/Enable 0 0
force -freeze sim:/MUL_Top/Softrst 1 0
force -freeze sim:/MUL_Top/I_Load 0 0
run
force -freeze sim:/MUL_Top/rst 0 0
run
force -freeze sim:/MUL_Top/rst 1 0
force -freeze sim:/MUL_Top/Enable 1 0
force -freeze sim:/MUL_Top/I_Load 1 0
run
force -freeze sim:/MUL_Top/I_Load 0 0
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
force -freeze sim:/MUL_Top/A 1100011110001110011110111100111 0
force -freeze sim:/MUL_Top/B 1010111100010101101000001001 0
force -freeze sim:/MUL_Top/clk 1 0, 0 {50 ps} -r 100
force -freeze sim:/MUL_Top/rst 1 0
force -freeze sim:/MUL_Top/Enable 0 0
force -freeze sim:/MUL_Top/Softrst 1 0
force -freeze sim:/MUL_Top/I_Load 0 0
run
force -freeze sim:/MUL_Top/rst 0 0
run
force -freeze sim:/MUL_Top/rst 1 0
force -freeze sim:/MUL_Top/Enable 1 0
force -freeze sim:/MUL_Top/I_Load 1 0
run
force -freeze sim:/MUL_Top/I_Load 0 0
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
force -freeze sim:/MUL_Top/A 100001000111010001000111010001 0
force -freeze sim:/MUL_Top/B 1010011000111011011100001010010 0
force -freeze sim:/MUL_Top/clk 1 0, 0 {50 ps} -r 100
force -freeze sim:/MUL_Top/rst 1 0
force -freeze sim:/MUL_Top/Enable 0 0
force -freeze sim:/MUL_Top/Softrst 1 0
force -freeze sim:/MUL_Top/I_Load 0 0
run
force -freeze sim:/MUL_Top/rst 0 0
run
force -freeze sim:/MUL_Top/rst 1 0
force -freeze sim:/MUL_Top/Enable 1 0
force -freeze sim:/MUL_Top/I_Load 1 0
run
force -freeze sim:/MUL_Top/I_Load 0 0
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
force -freeze sim:/MUL_Top/A 11100001000101000111100000001111 0
force -freeze sim:/MUL_Top/B 1001111100110001000010111010110 0
force -freeze sim:/MUL_Top/clk 1 0, 0 {50 ps} -r 100
force -freeze sim:/MUL_Top/rst 1 0
force -freeze sim:/MUL_Top/Enable 0 0
force -freeze sim:/MUL_Top/Softrst 1 0
force -freeze sim:/MUL_Top/I_Load 0 0
run
force -freeze sim:/MUL_Top/rst 0 0
run
force -freeze sim:/MUL_Top/rst 1 0
force -freeze sim:/MUL_Top/Enable 1 0
force -freeze sim:/MUL_Top/I_Load 1 0
run
force -freeze sim:/MUL_Top/I_Load 0 0
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
force -freeze sim:/MUL_Top/A 1011100110110101010001010011011 0
force -freeze sim:/MUL_Top/B 11010111010000000101100000000011 0
force -freeze sim:/MUL_Top/clk 1 0, 0 {50 ps} -r 100
force -freeze sim:/MUL_Top/rst 1 0
force -freeze sim:/MUL_Top/Enable 0 0
force -freeze sim:/MUL_Top/Softrst 1 0
force -freeze sim:/MUL_Top/I_Load 0 0
run
force -freeze sim:/MUL_Top/rst 0 0
run
force -freeze sim:/MUL_Top/rst 1 0
force -freeze sim:/MUL_Top/Enable 1 0
force -freeze sim:/MUL_Top/I_Load 1 0
run
force -freeze sim:/MUL_Top/I_Load 0 0
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
force -freeze sim:/MUL_Top/A 10111100111010011111000111101100 0
force -freeze sim:/MUL_Top/B 11010100000000010000011001110110 0
force -freeze sim:/MUL_Top/clk 1 0, 0 {50 ps} -r 100
force -freeze sim:/MUL_Top/rst 1 0
force -freeze sim:/MUL_Top/Enable 0 0
force -freeze sim:/MUL_Top/Softrst 1 0
force -freeze sim:/MUL_Top/I_Load 0 0
run
force -freeze sim:/MUL_Top/rst 0 0
run
force -freeze sim:/MUL_Top/rst 1 0
force -freeze sim:/MUL_Top/Enable 1 0
force -freeze sim:/MUL_Top/I_Load 1 0
run
force -freeze sim:/MUL_Top/I_Load 0 0
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
force -freeze sim:/MUL_Top/A 111111011111011101110110101101 0
force -freeze sim:/MUL_Top/B 1111001011010000011011110001001 0
force -freeze sim:/MUL_Top/clk 1 0, 0 {50 ps} -r 100
force -freeze sim:/MUL_Top/rst 1 0
force -freeze sim:/MUL_Top/Enable 0 0
force -freeze sim:/MUL_Top/Softrst 1 0
force -freeze sim:/MUL_Top/I_Load 0 0
run
force -freeze sim:/MUL_Top/rst 0 0
run
force -freeze sim:/MUL_Top/rst 1 0
force -freeze sim:/MUL_Top/Enable 1 0
force -freeze sim:/MUL_Top/I_Load 1 0
run
force -freeze sim:/MUL_Top/I_Load 0 0
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
force -freeze sim:/MUL_Top/A 10001000010100100110111100101 0
force -freeze sim:/MUL_Top/B 111011110001100001111100101010 0
force -freeze sim:/MUL_Top/clk 1 0, 0 {50 ps} -r 100
force -freeze sim:/MUL_Top/rst 1 0
force -freeze sim:/MUL_Top/Enable 0 0
force -freeze sim:/MUL_Top/Softrst 1 0
force -freeze sim:/MUL_Top/I_Load 0 0
run
force -freeze sim:/MUL_Top/rst 0 0
run
force -freeze sim:/MUL_Top/rst 1 0
force -freeze sim:/MUL_Top/Enable 1 0
force -freeze sim:/MUL_Top/I_Load 1 0
run
force -freeze sim:/MUL_Top/I_Load 0 0
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
force -freeze sim:/MUL_Top/A 10111101110111100110111111110011 0
force -freeze sim:/MUL_Top/B 11000011000010110111010101011000 0
force -freeze sim:/MUL_Top/clk 1 0, 0 {50 ps} -r 100
force -freeze sim:/MUL_Top/rst 1 0
force -freeze sim:/MUL_Top/Enable 0 0
force -freeze sim:/MUL_Top/Softrst 1 0
force -freeze sim:/MUL_Top/I_Load 0 0
run
force -freeze sim:/MUL_Top/rst 0 0
run
force -freeze sim:/MUL_Top/rst 1 0
force -freeze sim:/MUL_Top/Enable 1 0
force -freeze sim:/MUL_Top/I_Load 1 0
run
force -freeze sim:/MUL_Top/I_Load 0 0
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
force -freeze sim:/MUL_Top/A 1100000111000011110101100101100 0
force -freeze sim:/MUL_Top/B 100111000001000110111111111010 0
force -freeze sim:/MUL_Top/clk 1 0, 0 {50 ps} -r 100
force -freeze sim:/MUL_Top/rst 1 0
force -freeze sim:/MUL_Top/Enable 0 0
force -freeze sim:/MUL_Top/Softrst 1 0
force -freeze sim:/MUL_Top/I_Load 0 0
run
force -freeze sim:/MUL_Top/rst 0 0
run
force -freeze sim:/MUL_Top/rst 1 0
force -freeze sim:/MUL_Top/Enable 1 0
force -freeze sim:/MUL_Top/I_Load 1 0
run
force -freeze sim:/MUL_Top/I_Load 0 0
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
force -freeze sim:/MUL_Top/A 11110101110000011011110010101111 0
force -freeze sim:/MUL_Top/B 1010100011110000111101111101001 0
force -freeze sim:/MUL_Top/clk 1 0, 0 {50 ps} -r 100
force -freeze sim:/MUL_Top/rst 1 0
force -freeze sim:/MUL_Top/Enable 0 0
force -freeze sim:/MUL_Top/Softrst 1 0
force -freeze sim:/MUL_Top/I_Load 0 0
run
force -freeze sim:/MUL_Top/rst 0 0
run
force -freeze sim:/MUL_Top/rst 1 0
force -freeze sim:/MUL_Top/Enable 1 0
force -freeze sim:/MUL_Top/I_Load 1 0
run
force -freeze sim:/MUL_Top/I_Load 0 0
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
force -freeze sim:/MUL_Top/A 11111110110011010011011010111110 0
force -freeze sim:/MUL_Top/B 10010011111010100000010010000010 0
force -freeze sim:/MUL_Top/clk 1 0, 0 {50 ps} -r 100
force -freeze sim:/MUL_Top/rst 1 0
force -freeze sim:/MUL_Top/Enable 0 0
force -freeze sim:/MUL_Top/Softrst 1 0
force -freeze sim:/MUL_Top/I_Load 0 0
run
force -freeze sim:/MUL_Top/rst 0 0
run
force -freeze sim:/MUL_Top/rst 1 0
force -freeze sim:/MUL_Top/Enable 1 0
force -freeze sim:/MUL_Top/I_Load 1 0
run
force -freeze sim:/MUL_Top/I_Load 0 0
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
force -freeze sim:/MUL_Top/A 11001011100111000111100001010011 0
force -freeze sim:/MUL_Top/B 10011011011011111111010011001 0
force -freeze sim:/MUL_Top/clk 1 0, 0 {50 ps} -r 100
force -freeze sim:/MUL_Top/rst 1 0
force -freeze sim:/MUL_Top/Enable 0 0
force -freeze sim:/MUL_Top/Softrst 1 0
force -freeze sim:/MUL_Top/I_Load 0 0
run
force -freeze sim:/MUL_Top/rst 0 0
run
force -freeze sim:/MUL_Top/rst 1 0
force -freeze sim:/MUL_Top/Enable 1 0
force -freeze sim:/MUL_Top/I_Load 1 0
run
force -freeze sim:/MUL_Top/I_Load 0 0
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
force -freeze sim:/MUL_Top/A 11000000000110010000100000000 0
force -freeze sim:/MUL_Top/B 1000010110001011110110001110000 0
force -freeze sim:/MUL_Top/clk 1 0, 0 {50 ps} -r 100
force -freeze sim:/MUL_Top/rst 1 0
force -freeze sim:/MUL_Top/Enable 0 0
force -freeze sim:/MUL_Top/Softrst 1 0
force -freeze sim:/MUL_Top/I_Load 0 0
run
force -freeze sim:/MUL_Top/rst 0 0
run
force -freeze sim:/MUL_Top/rst 1 0
force -freeze sim:/MUL_Top/Enable 1 0
force -freeze sim:/MUL_Top/I_Load 1 0
run
force -freeze sim:/MUL_Top/I_Load 0 0
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
force -freeze sim:/MUL_Top/A 10000101011011101011010001010 0
force -freeze sim:/MUL_Top/B 10010000000101110100101111011000 0
force -freeze sim:/MUL_Top/clk 1 0, 0 {50 ps} -r 100
force -freeze sim:/MUL_Top/rst 1 0
force -freeze sim:/MUL_Top/Enable 0 0
force -freeze sim:/MUL_Top/Softrst 1 0
force -freeze sim:/MUL_Top/I_Load 0 0
run
force -freeze sim:/MUL_Top/rst 0 0
run
force -freeze sim:/MUL_Top/rst 1 0
force -freeze sim:/MUL_Top/Enable 1 0
force -freeze sim:/MUL_Top/I_Load 1 0
run
force -freeze sim:/MUL_Top/I_Load 0 0
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
force -freeze sim:/MUL_Top/A 10111100110000110010001011101 0
force -freeze sim:/MUL_Top/B 11000001101001101111000011111001 0
force -freeze sim:/MUL_Top/clk 1 0, 0 {50 ps} -r 100
force -freeze sim:/MUL_Top/rst 1 0
force -freeze sim:/MUL_Top/Enable 0 0
force -freeze sim:/MUL_Top/Softrst 1 0
force -freeze sim:/MUL_Top/I_Load 0 0
run
force -freeze sim:/MUL_Top/rst 0 0
run
force -freeze sim:/MUL_Top/rst 1 0
force -freeze sim:/MUL_Top/Enable 1 0
force -freeze sim:/MUL_Top/I_Load 1 0
run
force -freeze sim:/MUL_Top/I_Load 0 0
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
force -freeze sim:/MUL_Top/A 10001111001010001011000110101011 0
force -freeze sim:/MUL_Top/B 10001011001111011001110001011011 0
force -freeze sim:/MUL_Top/clk 1 0, 0 {50 ps} -r 100
force -freeze sim:/MUL_Top/rst 1 0
force -freeze sim:/MUL_Top/Enable 0 0
force -freeze sim:/MUL_Top/Softrst 1 0
force -freeze sim:/MUL_Top/I_Load 0 0
run
force -freeze sim:/MUL_Top/rst 0 0
run
force -freeze sim:/MUL_Top/rst 1 0
force -freeze sim:/MUL_Top/Enable 1 0
force -freeze sim:/MUL_Top/I_Load 1 0
run
force -freeze sim:/MUL_Top/I_Load 0 0
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
force -freeze sim:/MUL_Top/A 10010010001101011100101010000 0
force -freeze sim:/MUL_Top/B 11011101011000011010010101001 0
force -freeze sim:/MUL_Top/clk 1 0, 0 {50 ps} -r 100
force -freeze sim:/MUL_Top/rst 1 0
force -freeze sim:/MUL_Top/Enable 0 0
force -freeze sim:/MUL_Top/Softrst 1 0
force -freeze sim:/MUL_Top/I_Load 0 0
run
force -freeze sim:/MUL_Top/rst 0 0
run
force -freeze sim:/MUL_Top/rst 1 0
force -freeze sim:/MUL_Top/Enable 1 0
force -freeze sim:/MUL_Top/I_Load 1 0
run
force -freeze sim:/MUL_Top/I_Load 0 0
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
force -freeze sim:/MUL_Top/A 11110111001000101110010111000100 0
force -freeze sim:/MUL_Top/B 1010001100111101000110100011011 0
force -freeze sim:/MUL_Top/clk 1 0, 0 {50 ps} -r 100
force -freeze sim:/MUL_Top/rst 1 0
force -freeze sim:/MUL_Top/Enable 0 0
force -freeze sim:/MUL_Top/Softrst 1 0
force -freeze sim:/MUL_Top/I_Load 0 0
run
force -freeze sim:/MUL_Top/rst 0 0
run
force -freeze sim:/MUL_Top/rst 1 0
force -freeze sim:/MUL_Top/Enable 1 0
force -freeze sim:/MUL_Top/I_Load 1 0
run
force -freeze sim:/MUL_Top/I_Load 0 0
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
force -freeze sim:/MUL_Top/A 10100010101100011010101011110000 0
force -freeze sim:/MUL_Top/B 11111011000100000011010101001010 0
force -freeze sim:/MUL_Top/clk 1 0, 0 {50 ps} -r 100
force -freeze sim:/MUL_Top/rst 1 0
force -freeze sim:/MUL_Top/Enable 0 0
force -freeze sim:/MUL_Top/Softrst 1 0
force -freeze sim:/MUL_Top/I_Load 0 0
run
force -freeze sim:/MUL_Top/rst 0 0
run
force -freeze sim:/MUL_Top/rst 1 0
force -freeze sim:/MUL_Top/Enable 1 0
force -freeze sim:/MUL_Top/I_Load 1 0
run
force -freeze sim:/MUL_Top/I_Load 0 0
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
force -freeze sim:/MUL_Top/A 11110001110001101000110000010000 0
force -freeze sim:/MUL_Top/B 101100100011010101111010110010 0
force -freeze sim:/MUL_Top/clk 1 0, 0 {50 ps} -r 100
force -freeze sim:/MUL_Top/rst 1 0
force -freeze sim:/MUL_Top/Enable 0 0
force -freeze sim:/MUL_Top/Softrst 1 0
force -freeze sim:/MUL_Top/I_Load 0 0
run
force -freeze sim:/MUL_Top/rst 0 0
run
force -freeze sim:/MUL_Top/rst 1 0
force -freeze sim:/MUL_Top/Enable 1 0
force -freeze sim:/MUL_Top/I_Load 1 0
run
force -freeze sim:/MUL_Top/I_Load 0 0
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
force -freeze sim:/MUL_Top/A 11101100011100111000101000111100 0
force -freeze sim:/MUL_Top/B 1110110101100101011001000110110 0
force -freeze sim:/MUL_Top/clk 1 0, 0 {50 ps} -r 100
force -freeze sim:/MUL_Top/rst 1 0
force -freeze sim:/MUL_Top/Enable 0 0
force -freeze sim:/MUL_Top/Softrst 1 0
force -freeze sim:/MUL_Top/I_Load 0 0
run
force -freeze sim:/MUL_Top/rst 0 0
run
force -freeze sim:/MUL_Top/rst 1 0
force -freeze sim:/MUL_Top/Enable 1 0
force -freeze sim:/MUL_Top/I_Load 1 0
run
force -freeze sim:/MUL_Top/I_Load 0 0
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
force -freeze sim:/MUL_Top/A 10110110110011101111001001111011 0
force -freeze sim:/MUL_Top/B 10010101011011100101001111000 0
force -freeze sim:/MUL_Top/clk 1 0, 0 {50 ps} -r 100
force -freeze sim:/MUL_Top/rst 1 0
force -freeze sim:/MUL_Top/Enable 0 0
force -freeze sim:/MUL_Top/Softrst 1 0
force -freeze sim:/MUL_Top/I_Load 0 0
run
force -freeze sim:/MUL_Top/rst 0 0
run
force -freeze sim:/MUL_Top/rst 1 0
force -freeze sim:/MUL_Top/Enable 1 0
force -freeze sim:/MUL_Top/I_Load 1 0
run
force -freeze sim:/MUL_Top/I_Load 0 0
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
force -freeze sim:/MUL_Top/A 10111111000110110100100001000000 0
force -freeze sim:/MUL_Top/B 11110011001101100011100110111 0
force -freeze sim:/MUL_Top/clk 1 0, 0 {50 ps} -r 100
force -freeze sim:/MUL_Top/rst 1 0
force -freeze sim:/MUL_Top/Enable 0 0
force -freeze sim:/MUL_Top/Softrst 1 0
force -freeze sim:/MUL_Top/I_Load 0 0
run
force -freeze sim:/MUL_Top/rst 0 0
run
force -freeze sim:/MUL_Top/rst 1 0
force -freeze sim:/MUL_Top/Enable 1 0
force -freeze sim:/MUL_Top/I_Load 1 0
run
force -freeze sim:/MUL_Top/I_Load 0 0
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
force -freeze sim:/MUL_Top/A 11111000100001110011011100110001 0
force -freeze sim:/MUL_Top/B 11110001011110111100011010010 0
force -freeze sim:/MUL_Top/clk 1 0, 0 {50 ps} -r 100
force -freeze sim:/MUL_Top/rst 1 0
force -freeze sim:/MUL_Top/Enable 0 0
force -freeze sim:/MUL_Top/Softrst 1 0
force -freeze sim:/MUL_Top/I_Load 0 0
run
force -freeze sim:/MUL_Top/rst 0 0
run
force -freeze sim:/MUL_Top/rst 1 0
force -freeze sim:/MUL_Top/Enable 1 0
force -freeze sim:/MUL_Top/I_Load 1 0
run
force -freeze sim:/MUL_Top/I_Load 0 0
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
force -freeze sim:/MUL_Top/A 11010000110001010000110101111101 0
force -freeze sim:/MUL_Top/B 101011011001101000011000011101 0
force -freeze sim:/MUL_Top/clk 1 0, 0 {50 ps} -r 100
force -freeze sim:/MUL_Top/rst 1 0
force -freeze sim:/MUL_Top/Enable 0 0
force -freeze sim:/MUL_Top/Softrst 1 0
force -freeze sim:/MUL_Top/I_Load 0 0
run
force -freeze sim:/MUL_Top/rst 0 0
run
force -freeze sim:/MUL_Top/rst 1 0
force -freeze sim:/MUL_Top/Enable 1 0
force -freeze sim:/MUL_Top/I_Load 1 0
run
force -freeze sim:/MUL_Top/I_Load 0 0
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
force -freeze sim:/MUL_Top/A 10010111000001010100111000000111 0
force -freeze sim:/MUL_Top/B 10000100011111000000011000111110 0
force -freeze sim:/MUL_Top/clk 1 0, 0 {50 ps} -r 100
force -freeze sim:/MUL_Top/rst 1 0
force -freeze sim:/MUL_Top/Enable 0 0
force -freeze sim:/MUL_Top/Softrst 1 0
force -freeze sim:/MUL_Top/I_Load 0 0
run
force -freeze sim:/MUL_Top/rst 0 0
run
force -freeze sim:/MUL_Top/rst 1 0
force -freeze sim:/MUL_Top/Enable 1 0
force -freeze sim:/MUL_Top/I_Load 1 0
run
force -freeze sim:/MUL_Top/I_Load 0 0
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
