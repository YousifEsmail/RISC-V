module PC_INC_4 #(
    parameter INST_Width ='d32
) (
    input wire [INST_Width-1:0]  i_PC_F,
    output wire [INST_Width-1:0] o_PCPluse4_F
);
    assign o_PCPluse4_F= i_PC_F+'d4;

endmodule