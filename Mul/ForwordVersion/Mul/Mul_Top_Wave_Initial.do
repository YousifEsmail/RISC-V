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
