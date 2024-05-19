restart
force -freeze sim:/MUL_Top/A 10011100101010110000011011011100 0
force -freeze sim:/MUL_Top/B 11001101100000111011101000110101 0
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
