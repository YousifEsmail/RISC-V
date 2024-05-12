restart
force -freeze sim:/MUL_Top/A 010011101010010111001111011100000 0
force -freeze sim:/MUL_Top/B 0111000011011100111111111111001 0
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
