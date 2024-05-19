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
add wave -noupdate -group VarLeftShifterCore1 /MUL_Top/u_VariableLeftShifter/clk
add wave -noupdate -group VarLeftShifterCore1 /MUL_Top/u_VariableLeftShifter/rst
add wave -noupdate -group VarLeftShifterCore1 /MUL_Top/u_VariableLeftShifter/Enable
add wave -noupdate -group VarLeftShifterCore1 /MUL_Top/u_VariableLeftShifter/I_SoftRst
add wave -noupdate -group VarLeftShifterCore1 /MUL_Top/u_VariableLeftShifter/I_Data
add wave -noupdate -group VarLeftShifterCore1 /MUL_Top/u_VariableLeftShifter/CounterReg
add wave -noupdate -group VarLeftShifterCore1 /MUL_Top/u_VariableLeftShifter/O_Data
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
force -freeze sim:/MUL_Top/A 11001100110001101010111101111111 0
force -freeze sim:/MUL_Top/B 10000001100111001111001000110000 0
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
force -freeze sim:/MUL_Top/A 11011111010100000101101100001011 0
force -freeze sim:/MUL_Top/B 11101011001001111001010000111110 0
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
force -freeze sim:/MUL_Top/A 10000011100010100000001001111010 0
force -freeze sim:/MUL_Top/B 11010010110011000110011101111011 0
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
force -freeze sim:/MUL_Top/A 11000100100010111111101110100001 0
force -freeze sim:/MUL_Top/B 1100110011110111110001000111000 0
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
force -freeze sim:/MUL_Top/A 11100000011001001110000100011000 0
force -freeze sim:/MUL_Top/B 10010111000100111111000110010100 0
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
force -freeze sim:/MUL_Top/A 11001101110011000001110101110000 0
force -freeze sim:/MUL_Top/B 11010100010111010111100101001011 0
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
force -freeze sim:/MUL_Top/A 10111111110110001010011101011111 0
force -freeze sim:/MUL_Top/B 10010000101110011001101101110000 0
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
force -freeze sim:/MUL_Top/A 1110011001101001000010100101111 0
force -freeze sim:/MUL_Top/B 101000110010101000101111100010 0
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
force -freeze sim:/MUL_Top/A 1111111110101010010110011010001 0
force -freeze sim:/MUL_Top/B 10011111100000100010000000011100 0
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
force -freeze sim:/MUL_Top/A 1100010001101101110100011110001 0
force -freeze sim:/MUL_Top/B 10000010100101000110101111011010 0
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
force -freeze sim:/MUL_Top/A 1000111010010101000100000111111 0
force -freeze sim:/MUL_Top/B 1000000010000001001111111001 0
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
force -freeze sim:/MUL_Top/A 1111101100001100010000101001111 0
force -freeze sim:/MUL_Top/B 101100111101000101000100001000 0
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
force -freeze sim:/MUL_Top/A 111010111001110011101001010010 0
force -freeze sim:/MUL_Top/B 100011000000001111101001011101 0
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
force -freeze sim:/MUL_Top/A 101100110010011000101010010101 0
force -freeze sim:/MUL_Top/B 10110001000100001011101100100011 0
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
force -freeze sim:/MUL_Top/A 10001000001010001110001100111101 0
force -freeze sim:/MUL_Top/B 1110001011110011111001111110010 0
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
force -freeze sim:/MUL_Top/A 11101100000000000000111010011100 0
force -freeze sim:/MUL_Top/B 10010010011100111011111100110110 0
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
force -freeze sim:/MUL_Top/A 1101100101010011010000111110111 0
force -freeze sim:/MUL_Top/B 10001110011101100001110111101010 0
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
force -freeze sim:/MUL_Top/A 110110010010010110010010101101 0
force -freeze sim:/MUL_Top/B 1010100110100100101000110010101 0
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
force -freeze sim:/MUL_Top/A 11001101010110101000110010101000 0
force -freeze sim:/MUL_Top/B 110000110001010001111101000111 0
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
force -freeze sim:/MUL_Top/A 100011110100100011110000001010 0
force -freeze sim:/MUL_Top/B 10001010101010100010010010001110 0
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
force -freeze sim:/MUL_Top/A 11100010101100100001001101011001 0
force -freeze sim:/MUL_Top/B 10101000010101001110110101110011 0
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
force -freeze sim:/MUL_Top/A 101000111111100111001111011101 0
force -freeze sim:/MUL_Top/B 1111111000010001010001110000011 0
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
force -freeze sim:/MUL_Top/A 1001101001010001110111010100001 0
force -freeze sim:/MUL_Top/B 101000011101100111011100111000 0
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
force -freeze sim:/MUL_Top/A 1110110010000011101011011001001 0
force -freeze sim:/MUL_Top/B 10011000010100110010010100000100 0
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
force -freeze sim:/MUL_Top/A 1001111000110010000011000100101 0
force -freeze sim:/MUL_Top/B 11000101001000101001000000101111 0
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
force -freeze sim:/MUL_Top/A 101100010111011101101000001 0
force -freeze sim:/MUL_Top/B 10101110000010001110010100000001 0
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
force -freeze sim:/MUL_Top/A 110111000101010001001110011001 0
force -freeze sim:/MUL_Top/B 1111001001011001110100111011110 0
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
force -freeze sim:/MUL_Top/A 100110111110010100100011011011 0
force -freeze sim:/MUL_Top/B 10000011111101100000100100101101 0
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
force -freeze sim:/MUL_Top/A 1111010001111101010101111100 0
force -freeze sim:/MUL_Top/B 1111001001101010110101101110100 0
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
force -freeze sim:/MUL_Top/A 11111110101000110000101101011100 0
force -freeze sim:/MUL_Top/B 10110000001110011101100010010010 0
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
force -freeze sim:/MUL_Top/A 111010001000101010010000101000 0
force -freeze sim:/MUL_Top/B 100000000010100011010100010000 0
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
force -freeze sim:/MUL_Top/A 11111000001011111000101001101010 0
force -freeze sim:/MUL_Top/B 1011101110111001110001001011000 0
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
force -freeze sim:/MUL_Top/A 10100011101010010000101110010111 0
force -freeze sim:/MUL_Top/B 1001001100001110011000110110101 0
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
force -freeze sim:/MUL_Top/A 10001111011110101111100001110111 0
force -freeze sim:/MUL_Top/B 1111001001000101000100100110 0
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
force -freeze sim:/MUL_Top/A 10011100000000100110100001010100 0
force -freeze sim:/MUL_Top/B 101000001000011100010010010001 0
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
force -freeze sim:/MUL_Top/A 1000011100101000100110110101001 0
force -freeze sim:/MUL_Top/B 1111011111011101000010000101001 0
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
force -freeze sim:/MUL_Top/A 10010010001011001001011101100001 0
force -freeze sim:/MUL_Top/B 11100000000010100010010100111 0
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
force -freeze sim:/MUL_Top/A 111010011000001001000110101000 0
force -freeze sim:/MUL_Top/B 10010011011101000001111101101001 0
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
force -freeze sim:/MUL_Top/A 1011100010000101111011001000011 0
force -freeze sim:/MUL_Top/B 10110010000011010010011000110111 0
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
force -freeze sim:/MUL_Top/A 1100110100001100101111111000100 0
force -freeze sim:/MUL_Top/B 11000110000111010001001100110101 0
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
force -freeze sim:/MUL_Top/A 10000101010101010110010101000111 0
force -freeze sim:/MUL_Top/B 1110101000010010010000000011010 0
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
force -freeze sim:/MUL_Top/A 11110010101110000100011100011110 0
force -freeze sim:/MUL_Top/B 11001110100111001111110000101 0
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
force -freeze sim:/MUL_Top/A 1011000010110111111001111000 0
force -freeze sim:/MUL_Top/B 1011001001011000100101000110 0
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
force -freeze sim:/MUL_Top/A 100000000101101010000100010001 0
force -freeze sim:/MUL_Top/B 10101001011001100000101011100010 0
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
force -freeze sim:/MUL_Top/A 1011011000011110111111101110111 0
force -freeze sim:/MUL_Top/B 111011101111101110101111111000 0
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
force -freeze sim:/MUL_Top/A 11100010001000000000010101100 0
force -freeze sim:/MUL_Top/B 1010101111000100111110011000111 0
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
force -freeze sim:/MUL_Top/A 10010011100111001010111001100111 0
force -freeze sim:/MUL_Top/B 1110001110100100111101011011101 0
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
force -freeze sim:/MUL_Top/A 1110010010011100000111111001011 0
force -freeze sim:/MUL_Top/B 11111110011100010110011111001110 0
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
force -freeze sim:/MUL_Top/A 1100110001100011100110101000000 0
force -freeze sim:/MUL_Top/B 10110000010011010001000111010000 0
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
force -freeze sim:/MUL_Top/A 10100111111011010111111010100 0
force -freeze sim:/MUL_Top/B 11010000011100111101110001101110 0
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
