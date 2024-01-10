module PC_target_adder #(
    parameter   PC_Width ='d32,
                immext_width='d32


) (
    input       wire    [PC_Width-1:0]          i_PC_E,
    input       wire    [immext_width-1:0]      i_immExt_E,
    input       wire    [immext_width-1:0]      i_RS1_E,
    input       wire                            i_Jal_R_E,
    output      wire    [PC_Width-1:0]          o_PC_target_E

);
 
 
wire    [PC_Width-1:0]          JaLR_OP;

assign JaLR_OP=i_Jal_R_E?i_RS1_E:i_PC_E;

assign o_PC_target_E=i_immExt_E+JaLR_OP;

endmodule