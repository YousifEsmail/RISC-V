module EXCUTE_STAGE #(
    parameter   Num_Opreations='d15,
                Oprand_Width='d32,
                PC_Width ='d32,
                RD_Data_Width='d32,
                RS1_D_Width ='d5,
                immext_width='d32

) (
    input  wire                             i_RegWrite_E,
    input  wire      [1:0]                  i_ResultSec_E,
    input  wire                             i_MemWrite_E,
    input  wire                             i_Jump_E,
    input  wire                             i_Branch_E,
    input  wire                             i_ALUSrc_E,
    input  wire      [2:0]                  i_immSrc_E,
    input  wire                             i_Jal_R_E,
    input  wire      [3:0]                  i_ALU_Control_E,
    input  wire                             i_LUI_E,


    input  wire    [RD_Data_Width-1:0]      i_RD1_E,
    input  wire    [RD_Data_Width-1:0]      i_RD2_E,
    input  wire    [PC_Width-1:0]           i_PC_E,
    input  wire    [RS1_D_Width-1:0]        i_RS1_E,
    input  wire    [RS1_D_Width-1:0]        i_RS2_E,
    input  wire    [RS1_D_Width-1:0]        i_Rd_E,
    input  wire    [immext_width-1:0]       i_immExt_E, 
    input  wire    [PC_Width-1:0]           i_PCPluse4_E,

    input  wire     [1:0]                   i_MUX_4_SRC_A_ForwardA_E,
    input  wire     [1:0]                   i_MUX_4_SRC_A_ForwardB_E,
    input  wire signed [Oprand_Width-1:0]   i_ALU_Res_M,
    input  wire signed [Oprand_Width-1:0]   i_Res_W,

    input   wire  [2:0]                     i_Funct3_E,

    output wire signed [PC_Width-1:0]       o_PC_target_E,
    output wire signed [Oprand_Width-1:0]   o_ALU_Res_E,
    output wire signed [Oprand_Width-1:0]   o_WriteData_E,
    output wire                             o_RegWrite_E,
    output wire      [1:0]                  o_ResultSec_E,
    output wire                             o_MemWrite_E,
    output wire    [RS1_D_Width-1:0]        o_RS1_E,
    output wire    [RS1_D_Width-1:0]        o_RS2_E,
    output wire    [RS1_D_Width-1:0]        o_Rd_E,
    output wire    [PC_Width-1:0]           o_PCPluse4_E,
    output wire                             o_PCSrc_E

);



 // internals 
 // Nameing conv. 
 // i_ModuleName_O_ModuleName_WireName

wire    [RD_Data_Width-1:0] i_ALU_O_MUX_4_SRC_A_SrcA_E;
wire    [RD_Data_Width-1:0] i_Mux_SRC_B_EO_MUX_4_SRC_B_SrcB_E; 
wire    [RD_Data_Width-1:0] i_ALU_O_MUX_2_SRC_B_SrcB_E;
wire    [RD_Data_Width-1:0] i_ALU_O_MUX_2_SRC_A_SrcA_E;

wire i_Branch_circuit_o_ALU_carry_E;
wire i_Branch_circuit_o_ALU_LTU;
wire i_Branch_circuit_o_ALU_sign_E ;
wire i_Branch_circuit_o_ALU_zero_E ;
wire o_Branch_circt_o_Branch_E ;




 
assign o_RegWrite_E    = i_RegWrite_E;
assign o_ResultSec_E   = i_ResultSec_E;
assign o_MemWrite_E    = i_MemWrite_E;
assign o_RS2_E         =i_RS2_E;
assign o_RS1_E         =i_RS1_E;
assign o_Rd_E          =i_Rd_E;
assign o_PCPluse4_E    =i_PCPluse4_E;
assign o_WriteData_E   =i_Mux_SRC_B_EO_MUX_4_SRC_B_SrcB_E;
assign o_PCSrc_E=(i_Branch_E&o_Branch_circt_o_Branch_E) | i_Jump_E;

ALU #(
    .Num_Opreations (Num_Opreations )
 
)
u_ALU(
    .i_SrcA_E     (i_ALU_O_MUX_2_SRC_A_SrcA_E     ),
    .i_SrcB_E     (i_ALU_O_MUX_2_SRC_B_SrcB_E     ),
    .i_ALU_CTRL_E (i_ALU_Control_E                ),
    .carry        (i_Branch_circuit_o_ALU_carry_E),
    .o_zero       (i_Branch_circuit_o_ALU_zero_E  ),
    .o_sign       (i_Branch_circuit_o_ALU_sign_E),
    .o_overflow   (                             ),
    .o_LTU        (i_Branch_circuit_o_ALU_LTU),
    .o_ALU_Res_E  (o_ALU_Res_E                    )
);

Branch_circuit u_Branch_circuit(
    .i_zero_E   (i_Branch_circuit_o_ALU_zero_E   ),
    .i_sign_E   (i_Branch_circuit_o_ALU_sign_E   ),
    .i_carry_E  (i_Branch_circuit_o_ALU_carry_E  ),
    .i_LTU      (i_Branch_circuit_o_ALU_LTU),
    .i_Funct3_E (i_Funct3_E ),
    .o_Branch_E (o_Branch_circt_o_Branch_E )
);



PC_target_adder #(
    .PC_Width     (PC_Width     ),
    .immext_width (immext_width )
)
u_PC_target_adder(
    .i_PC_E        (i_PC_E        ),
    .i_immExt_E    (i_immExt_E    ),
    .i_RS1_E       (i_ALU_O_MUX_4_SRC_A_SrcA_E),
    .i_Jal_R_E     (i_Jal_R_E),
    .o_PC_target_E (o_PC_target_E )
);


MUX_4 #(
    .IN_WIDTH (Oprand_Width )
)
u_MUX_4_SRC_A(
    .sel  (i_MUX_4_SRC_A_ForwardA_E  ),
    .IN_1 (i_RD1_E ),
    .IN_2 (i_Res_W ),
    .IN_3 (i_ALU_Res_M ),
    .IN_4 (32'b0 ),
    .Out  (i_ALU_O_MUX_4_SRC_A_SrcA_E  )
);



Mux #(
    .InputWidth_1 (Oprand_Width )
)
u_Mux_SRC_A_E(
    .sel  (i_LUI_E  ),
    .IN_1 ( 32'b0),//! sel=1
    .IN_2 (i_ALU_O_MUX_4_SRC_A_SrcA_E ),//! sel=0
    .Out  (i_ALU_O_MUX_2_SRC_A_SrcA_E  )
);



MUX_4 #(
    .IN_WIDTH (Oprand_Width )
)
u_MUX_4_SRC_B(
    .sel  (i_MUX_4_SRC_A_ForwardB_E  ),
    .IN_1 (i_RD2_E ),
    .IN_2 (i_Res_W ),
    .IN_3 (i_ALU_Res_M ),
    .IN_4 (32'b0 ),
    .Out  (i_Mux_SRC_B_EO_MUX_4_SRC_B_SrcB_E  )
);


Mux #(
    .InputWidth_1 (Oprand_Width )
)
u_Mux_SRC_B_E(
    .sel  (i_ALUSrc_E  ),
    .IN_1 ( i_immExt_E),
    .IN_2 (i_Mux_SRC_B_EO_MUX_4_SRC_B_SrcB_E ),
    .Out  (i_ALU_O_MUX_2_SRC_B_SrcB_E  )
);



    
endmodule