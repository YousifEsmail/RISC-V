module AdderPlusBias #(
    parameter   In1_NumBits ='d16,
                In2_NumBits ='d16,
                Out_NumBits='d16
) (
    input   wire signed  [In1_NumBits-1:0] I_IN1,
    input   wire signed  [In2_NumBits-1:0] I_IN2,
    input   wire clk,
    input   wire rst,
    input   wire I_SoftRst,
    input   wire [In1_NumBits-1:0] Bias,
    input   wire Enable,
    output  wire [Out_NumBits-1:0]O_AdderOut

);
    
reg [Out_NumBits-1:0] Adder_reg ;


always @(posedge clk or negedge rst)
begin
if(!rst)
begin
    Adder_reg<='b0;
end    
if(!I_SoftRst)
begin
    Adder_reg<='b0;
end
else if (Enable)
begin
    Adder_reg<=I_IN2+ I_IN1+Bias;
end
end

assign O_AdderOut=Adder_reg;
endmodule