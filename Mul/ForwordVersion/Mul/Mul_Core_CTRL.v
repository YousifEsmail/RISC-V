module Mul_Core_CTRL #(
    parameter No_PP_in_Core=8
) (
        input   wire [No_PP_in_Core-1:0] I_E0,
        input   wire [No_PP_in_Core-1:0] I_E1,
        input   wire [No_PP_in_Core-1:0] I_E2,
        input   wire                     I_Load,
        input   wire                     Enable,
        input   wire                     clk,
        input   wire                     rst,
        output  wire                     O_E0,                     
        output  wire                     O_E1,                     
        output  wire                     O_E2                   

);


reg [No_PP_in_Core-1:0] E0_reg;
reg [No_PP_in_Core-1:0] E1_reg;
reg [No_PP_in_Core-1:0] E2_reg;

always @(posedge clk or negedge rst) 
    begin
        if (!rst) 
            begin
                E0_reg<=1'b0;
                E1_reg<=1'b0;
                E2_reg<=1'b0;      
            end
        else if (I_Load)
            begin
                E0_reg<=I_E0;
                E1_reg<=I_E1;
                E2_reg<=I_E2;
            end
        else if (Enable)
            begin
                E0_reg<={1'b0,E0_reg[No_PP_in_Core-1:1]};
                E1_reg<={1'b0,E1_reg[No_PP_in_Core-1:1]};
                E2_reg<={1'b0,E2_reg[No_PP_in_Core-1:1]};
            end    
    end
        assign O_E0=E0_reg[0];
        assign O_E1=E1_reg[0];
        assign O_E2=E2_reg[0];    
endmodule