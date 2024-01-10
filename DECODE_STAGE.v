module DECODE_STAGE #(
    parameter   Inst_Data_width ='d32,
                PC_Width ='d32,
                FUNCT_3_Width ='d3,
                FUNCT_7_Width='d7,
                OP_width='d7,
                Address_Width ='d5,
                Data_Width ='d32,
                Reg_file_Depth= $pow(2, Address_Width)
) (
    input       wire                           clk,
    input       wire                           rst,
    input       wire [Inst_Data_width-1:0]     i_Instr_D,
    input       wire [PC_Width-1:0]            i_PC_D,
    input       wire [PC_Width-1:0]            i_PCPluse4_D,
    input       wire                           i_RegWrite_W,
    input       wire [Data_Width-1:0]          i_WD3_D,
    input       wire [Address_Width-1:0]       i_A3_D,

    
    output      wire [Data_Width-1:0]          o_RD1_D,
    output      wire [Data_Width-1:0]          o_RD2_D,
    output      wire [PC_Width-1:0]            o_PC_D,
    output      wire [4:0]                     o_RS1_D,
    output      wire [4:0]                     o_RS2_D,
    output      wire [4:0]                     o_Rd_D,
    output      wire [Data_Width-1:0]          o_ImmEXT_D,
    output      wire [PC_Width-1:0]            o_PCPluse4_D,


    output      wire                           o_RegWrite_D,
    output      wire  [1:0]                    o_ResultSec_D,
    output      wire                           o_MemWrite_D,
    output      wire                           o_Jump_D,
    output      wire                           o_Branch_D,
    output      wire                           o_ALUSrc_D,
    output      wire  [2:0]                    o_immSrc_D,
    output      wire  [3:0]                    o_ALU_Control_D,
    output      wire                                o_Jal_R, 
    output      wire                           o_LUI_D,


    output      wire  [2:0]                    o_Funct3_D






                              

);
    

assign o_PC_D       = i_PC_D;
assign o_RS1_D      =i_Instr_D[19:15];
assign o_Funct3_D   =i_Instr_D[14:12];
assign o_RS2_D      =i_Instr_D[24:20];
assign o_Rd_D       =i_Instr_D[11:7];
assign o_PCPluse4_D =i_PCPluse4_D;



CTRL_UNIT #(
    .FUNCT_3_Width   (FUNCT_3_Width   ),
    .FUNCT_7_Width   (FUNCT_7_Width   ),
    .OP_width        (OP_width        )
   
)
u_CTRL_UNIT(
    .i_OP_D          (i_Instr_D[OP_width-1:0]          ),
    .i_FUNCT3_D      (i_Instr_D[14:12]        ),
    .i_FUNCT7_D      (i_Instr_D[31:25]      ),
    .o_RegWrite_D    (o_RegWrite_D    ),
    .o_ResultSec_D   (o_ResultSec_D   ),
    .o_MemWrite_D    (o_MemWrite_D    ),
    .o_Jump_D        (o_Jump_D        ),
    .o_Branch_D      (o_Branch_D      ),
    .o_ALUSrc_D      (o_ALUSrc_D      ),
    .o_immSrc_D      (o_immSrc_D      ),
    .o_Jal_R         (o_Jal_R),
    .o_LUI_D         (o_LUI_D),
    .o_ALU_Control_D (o_ALU_Control_D )
);

Reg_file #(
    .Address_Width  (Address_Width  ),
    .Data_Width     (Data_Width     ),
    .Reg_file_Depth (Reg_file_Depth )
)
u_Reg_file(
    .clk   (clk   ),
    .rst   (rst   ),
    .WE3   (i_RegWrite_W   ),
    .i_A1  (i_Instr_D[19:15]  ),
    .i_A2  (i_Instr_D[24:20]  ),
    .i_A3  (i_A3_D  ),
    .i_WD3 (i_WD3_D ),
    .o_RD1 (o_RD1_D ),
    .o_RD2 (o_RD2_D )
);


Imm_gen #(
    .Inst_Data_width (Inst_Data_width )
    
)
u_Imm_gen(
    .i_INST_D    (i_Instr_D    ),
    .i_Inst_Type (o_immSrc_D ),
    .o_ImmEXT_D  (o_ImmEXT_D  )
);


    
endmodule