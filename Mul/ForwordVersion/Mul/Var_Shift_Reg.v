module Var_Shift_Reg #(
    parameter   Shift_Reg_Length='d16,
                Num_Shift_by_Cycle='d2
) (
    input   wire [Num_Shift_by_Cycle-1:0] In,
    input   wire clk,
    input   wire rst,
    input   wire I_SoftRst,
    input   wire Enable,
    output  reg  [Shift_Reg_Length-1:0]  Out_Reg

);
    
always @(posedge clk or negedge rst)
begin
if(!rst)
begin
    Out_Reg<='b0;
end    
if(!I_SoftRst)
begin
    Out_Reg<='b0;
end
else if (Enable)
begin
    Out_Reg<={In,Out_Reg[Shift_Reg_Length-1:Num_Shift_by_Cycle]};
end
end
endmodule