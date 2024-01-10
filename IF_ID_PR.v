module IF_ID_PR #(
    parameter   Inst_Data_width ='d32,
                PC_Width ='d32
) (
    input    wire                       clk,
    input    wire                       rst,
    input    wire                       CLR,
    input    wire                       EN,
    input    wire [Inst_Data_width-1:0] i_Instr_F,
    input    wire [PC_Width-1:0]        i_PC_F,
    input    wire [PC_Width-1:0]        i_PCPluse4_F,
    output   reg  [Inst_Data_width-1:0] o_Instr_D,
    output   reg  [PC_Width-1:0]        o_PC_D, 
    output   reg  [PC_Width-1:0]        o_PCPluse4_D

    
);

// EN  is Stall CTRL 
// CLR is Flush CTRL
always @(posedge clk or negedge rst) begin
    if(!rst)
    begin
        o_Instr_D       <='b0;
        o_PC_D          <='b0;
        o_PCPluse4_D    <='b0;


    end
    else if (CLR) begin
        o_Instr_D       <='b0;
        o_PC_D          <='b0;
        o_PCPluse4_D    <='b0;

    end
    else if (EN) begin
        o_Instr_D       <=i_Instr_F;
        o_PC_D          <=i_PC_F;
        o_PCPluse4_D    <=i_PCPluse4_F;
    end
end


    
endmodule