module Delay #(
    parameter NumDelayCycle='d1
) (
    input wire in,
    input wire clk,
    input wire rst,
    output wire out
);

reg  innerShifter;
always @(posedge clk or negedge rst) 
begin
if (!rst) begin
    innerShifter<='b0;
end
else
begin
    innerShifter<=in;
end    
end
    
    assign out=innerShifter;
endmodule