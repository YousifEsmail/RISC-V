module PC_REG #(
    parameter INST_Width ='d32
) (
    input wire clk,
    input wire rst,
    input wire EN,
    input wire [INST_Width-1:0] i_PC_muxed_F,
    output reg [INST_Width-1:0] o_PC_F
);
    
localparam RST_VAlue = $pow('d2, INST_Width)-'d4	 ;    

always @(posedge clk or negedge rst) begin
    if(!rst)
    begin
        o_PC_F<=RST_VAlue;
    end
    else if (EN) begin
        o_PC_F<=i_PC_muxed_F;
    end
    else
    begin
      o_PC_F<=o_PC_F;  
    end
end

    
endmodule