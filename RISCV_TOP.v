module RISCV_TOP #(
    parameter   Inst_Data_width ='d32,
                Data_Width ='d32,
                PC_Width ='d32,
                Num_Opreations='d15,
                Oprand_Width='d32,
                RD_Data_Width='d32,
                RS1_D_Width ='d5,
                Address_Width ='d5,
                immext_width='d32
                

) (
    input       wire        rst,
    input       wire        clk
);
 // internals 
 // Nameing conv. 
 // i_ModuleName_O_ModuleName_WireName
wire [PC_Width-1:0]         i_IF_ID_PR_o_FETCH_PCPluse4_F;
wire [PC_Width-1:0]         i_IF_ID_PR_o_FETCH_Instr_F;
wire [PC_Width-1:0]         i_IF_ID_PR_o_FETCH_PC_F;
wire                        i_FETCH_O_EXCUTE_PCSrc_E;
wire [PC_Width-1:0]         i_FETCH_O_EXCUTE_PCTargetE;

wire [Inst_Data_width-1:0]  i_DECODE_o_IF_ID_PR_Instr_D;
wire [PC_Width-1:0]         i_DECODE_o_IF_ID_PR_PC_D;
wire [PC_Width-1:0]         i_DECODE_o_IF_ID_PR_PCPluse4_D;
wire [Data_Width-1:0]       i_ID_IE_PR_o_DECODE_RD1_D;
wire [Data_Width-1:0]       i_ID_IE_PR_o_DECODE_RD2_D;
wire [PC_Width-1:0]         i_ID_IE_PR_o_DECODE_PC_D;
wire [4:0]                  i_ID_IE_PR_o_DECODE_RS1_D;
wire [4:0]                  i_ID_IE_PR_o_DECODE_RS2_D;
wire [4:0]                  i_ID_IE_PR_o_DECODE_Rd_D;
wire [Data_Width-1:0]       i_ID_IE_PR_o_DECODE_ImmEXT_D;
wire [PC_Width-1:0]         i_ID_IE_PR_o_DECODE_PCPluse4_D;
wire                        i_ID_IE_PR_o_DECODE_RegWrite_D;
wire [1:0]                  i_ID_IE_PR_o_DECODE_ResultSec_D;
wire                        i_ID_IE_PR_o_DECODE_MemWrite_D;
wire                        i_ID_IE_PR_o_DECODE_Jump_D;
wire                        i_ID_IE_PR_o_DECODE_Branch_D;
wire                        i_ID_IE_PR_o_DECODE_ALUSrc_D;
wire [2:0]                  i_ID_IE_PR_o_DECODE_immSrc_D;
wire [3:0]                  i_ID_IE_PR_o_DECODE_ALU_Control_D;
wire                        i_ID_IE_PR_o_DECODE_Jal_R_D;
wire                        i_ID_IE_PR_o_DECODE_LUI_D;

wire [2:0]                  i_ID_IE_PR_o_DECODE_Funct3_D;                  


wire                             i_ECXUTE_o_ID_IE_PR_RegWrite_E;
wire      [1:0]                  i_ECXUTE_o_ID_IE_PR_ResultSec_E;
wire                             i_ECXUTE_o_ID_IE_PR_MemWrite_E;
wire                             i_ECXUTE_o_ID_IE_PR_Jump_E;
wire                             i_ECXUTE_o_ID_IE_PR_Branch_E;
wire                             i_ECXUTE_o_ID_IE_PR_ALUSrc_E;
wire      [2:0]                  i_ECXUTE_o_ID_IE_PR_immSrc_E;
wire      [3:0]                  i_ECXUTE_o_ID_IE_PR_ALU_Control_E;
wire      [2:0]                  i_ECXUTE_o_ID_IE_PR_Funct3_E;
wire                             i_ECXUTE_o_ID_IE_PR_Jal_R_E;
wire                             i_ECXUTE_o_ID_IE_PR_LUI_E;

wire    [RD_Data_Width-1:0]      i_ECXUTE_o_ID_IE_PR_RD1_E;
wire    [RD_Data_Width-1:0]      i_ECXUTE_o_ID_IE_PR_RD2_E;
wire    [PC_Width-1:0]           i_ECXUTE_o_ID_IE_PR_PC_E;
wire    [RS1_D_Width-1:0]        i_ECXUTE_o_ID_IE_PR_RS1_E;
wire    [RS1_D_Width-1:0]        i_ECXUTE_o_ID_IE_PR_RS2_E;
wire    [RS1_D_Width-1:0]        i_ECXUTE_o_ID_IE_PR_Rd_E;
wire    [immext_width-1:0]       i_ECXUTE_o_ID_IE_PR_immExt_E; 
wire    [PC_Width-1:0]           i_ECXUTE_o_ID_IE_PR_PCPluse4_E;
wire     [2:0]                   i_MEM_o_IE_IM_PR_Funct3_M;

wire signed [Oprand_Width-1:0]   i_IE_IM_PR_o_EXCUTE_ALU_Res_E;
wire signed [Oprand_Width-1:0]   i_IE_IM_PR_o_EXCUTE_WriteData_E;
wire                             i_IE_IM_PR_o_EXCUTE_RegWrite_E;
wire      [1:0]                  i_IE_IM_PR_o_EXCUTE_ResultSec_E;
wire                             i_IE_IM_PR_o_EXCUTE_MemWrite_E;
//wire                             i_//!_o_EXCUTE_Jump_E;
//wire                             i_//!_o_EXCUTE_Branch_E;
//wire    [RS1_D_Width-1:0]        i_//!_o_EXCUTE_RS1_E;
//wire    [RS1_D_Width-1:0]        i_//!_o_EXCUTE_RS2_E;
wire    [Address_Width-1:0]      i_IE_IM_PR_o_EXCUTE_Rd_E;
wire    [PC_Width-1:0]           i_IE_IM_PR_o_EXCUTE_PCPluse4_E;



wire     [1:0]                   i_MUX_4_SRC_A_ForwardA_E;
wire     [1:0]                   i_MUX_4_SRC_A_ForwardB_E;

wire                             i_DataMEM_o_IE_IM_MemWrite_M;
wire signed [Oprand_Width-1:0]   i_DataMEM_o_IE_IM_ALU_Res_M;
wire signed [RD_Data_Width-1:0]  i_DataMEM_o_IE_IM_WriteData_M;
wire signed [Oprand_Width-1:0]   i_DataMEM_o_IE_IM_ReadData_M;

wire        [PC_Width-1:0]       i_IM_IW_o_IE_IM_PCPluse4_M;
wire        [PC_Width-1:0]       i_IM_IW_o_IE_IM_PC_target_M;

wire        [Address_Width-1:0]  i_IM_IW_o_IE_IM_Rd_M;

wire                             i_IM_IW_o_IE_IM_RegWrite_M;
wire        [1:0]                i_IM_IW_o_IE_IM_ResultSec_M;



wire        [PC_Width-1:0]       i_WB_o_IW_IM_PCPluse4_W;
wire        [PC_Width-1:0]       i_WB_o_IW_IM_PC_target_W;

wire        [RS1_D_Width-1:0]    i_WB_o_IW_IM_Rd_W;
wire        [1:0]                i_WB_o_IW_IM_ResultSec_W;
wire                             i_Decode_o_IM_IW_RegWrite_W;

wire signed [RD_Data_Width-1:0]  i_WB_o_IW_IM_ALU_Res_W;
wire signed [RD_Data_Width-1:0]  i_WB_o_IW_IM_ReadData_W;

wire signed [Oprand_Width-1:0]   i_Decode_o_WB_Res_W;



// Hazard
wire [Address_Width-1:0]    i_Hazard_o_Excute_RS1 ;
wire [Address_Width-1:0]    i_Hazard_o_Excute_RS2 ;
wire                        i_FETCH_o_Hazard_o_Stall_F;
wire                        i_Decode_o_Hazard_o_Stall_D;
wire                        i_Decode_o_Hazard_o_Flush_D;
wire                        i_Excute_o_Hazard_o_Flush_E;
wire      [1:0]             i_Excute_o_Hazard_o_ForwardA_E;
wire      [1:0]             i_Excute_o_Hazard_o_ForwardB_E;











/// ==================== FETCH ========================
FETCH_STAGE #(
    .Address_Width (PC_Width ),
    .Data_Width    (Inst_Data_width    ),
    .INST_Width    (Inst_Data_width    )
)
u_FETCH_STAGE(
    .rst           (rst           ),
    .clk           (clk           ),
    .i_Stall_F     (i_FETCH_o_Hazard_o_Stall_F     ),
    .PCSrc_F       (i_FETCH_O_EXCUTE_PCSrc_E       ),
    .i_PC_Target_F (i_FETCH_O_EXCUTE_PCTargetE ),
    .o_PCPluse4_F  (i_IF_ID_PR_o_FETCH_PCPluse4_F  ),
    .o_Instr_F     (i_IF_ID_PR_o_FETCH_Instr_F     ),
    .o_PC_F        (i_IF_ID_PR_o_FETCH_PC_F)
);

IF_ID_PR #(
    .Inst_Data_width (Inst_Data_width ),
    .PC_Width        (PC_Width        )
)
u_IF_ID_PR(
    .clk          (clk          ),
    .rst          (rst          ),
    .CLR          (i_Decode_o_Hazard_o_Flush_D          ),
    .EN           (i_Decode_o_Hazard_o_Stall_D           ),
    .i_Instr_F    (i_IF_ID_PR_o_FETCH_Instr_F    ),
    .i_PC_F       (i_IF_ID_PR_o_FETCH_PC_F       ),
    .i_PCPluse4_F (i_IF_ID_PR_o_FETCH_PCPluse4_F ),
    .o_Instr_D    (i_DECODE_o_IF_ID_PR_Instr_D    ),
    .o_PC_D       (i_DECODE_o_IF_ID_PR_PC_D       ),
    .o_PCPluse4_D (i_DECODE_o_IF_ID_PR_PCPluse4_D )
);



//========================= Decode ===========================
DECODE_STAGE #(
    .Inst_Data_width (Inst_Data_width ),
    .PC_Width        (PC_Width        )
)
u_DECODE_STAGE(
    .clk             (clk             ),
    .rst             (rst             ),
    .i_Instr_D       (i_DECODE_o_IF_ID_PR_Instr_D       ),
    .i_PC_D          (i_DECODE_o_IF_ID_PR_PC_D          ),
    .i_PCPluse4_D    (i_DECODE_o_IF_ID_PR_PCPluse4_D    ),
    .i_RegWrite_W    (i_Decode_o_IM_IW_RegWrite_W    ),
    .i_WD3_D         (i_Decode_o_WB_Res_W         ),
    .i_A3_D          (i_WB_o_IW_IM_Rd_W),
    .o_RD1_D         (i_ID_IE_PR_o_DECODE_RD1_D         ),
    .o_RD2_D         (i_ID_IE_PR_o_DECODE_RD2_D         ),
    .o_PC_D          (i_ID_IE_PR_o_DECODE_PC_D          ),
    .o_RS1_D         (i_ID_IE_PR_o_DECODE_RS1_D         ),
    .o_RS2_D         (i_ID_IE_PR_o_DECODE_RS2_D         ),
    .o_Rd_D          (i_ID_IE_PR_o_DECODE_Rd_D          ),
    .o_ImmEXT_D      (i_ID_IE_PR_o_DECODE_ImmEXT_D      ),
    .o_PCPluse4_D    (i_ID_IE_PR_o_DECODE_PCPluse4_D    ),
    .o_RegWrite_D    (i_ID_IE_PR_o_DECODE_RegWrite_D    ),
    .o_ResultSec_D   (i_ID_IE_PR_o_DECODE_ResultSec_D   ),
    .o_MemWrite_D    (i_ID_IE_PR_o_DECODE_MemWrite_D    ),
    .o_Jump_D        (i_ID_IE_PR_o_DECODE_Jump_D        ),
    .o_Branch_D      (i_ID_IE_PR_o_DECODE_Branch_D      ),
    .o_ALUSrc_D      (i_ID_IE_PR_o_DECODE_ALUSrc_D      ),
    .o_immSrc_D      (i_ID_IE_PR_o_DECODE_immSrc_D      ),
    .o_ALU_Control_D (i_ID_IE_PR_o_DECODE_ALU_Control_D ),
    .o_Jal_R         (i_ID_IE_PR_o_DECODE_Jal_R_D),//!
    .o_LUI_D         (i_ID_IE_PR_o_DECODE_LUI_D),//!
    .o_Funct3_D      (i_ID_IE_PR_o_DECODE_Funct3_D)//!
);



ID_IE_PR #(
    .PC_Width      (PC_Width      )

)
u_ID_IE_PR(
    .clk             (clk             ),
    .rst             (rst             ),
    .CLR             (i_Excute_o_Hazard_o_Flush_E             ),
    .i_RD1_D         (i_ID_IE_PR_o_DECODE_RD1_D         ),
    .i_RD2_D         (i_ID_IE_PR_o_DECODE_RD2_D         ),
    .i_PC_D          (i_ID_IE_PR_o_DECODE_PC_D          ),
    .i_RS1_D         (i_ID_IE_PR_o_DECODE_RS1_D         ),
    .i_RS2_D         (i_ID_IE_PR_o_DECODE_RS2_D         ),
    .i_Rd_D          (i_ID_IE_PR_o_DECODE_Rd_D          ),
    .i_immExt_D      (i_ID_IE_PR_o_DECODE_ImmEXT_D      ),
    .i_PCPluse4_D    (i_ID_IE_PR_o_DECODE_PCPluse4_D    ),
    .i_Funct3_D      (i_ID_IE_PR_o_DECODE_Funct3_D),
    //
    .i_RegWrite_D    (i_ID_IE_PR_o_DECODE_RegWrite_D    ),
    .i_ResultSec_D   (i_ID_IE_PR_o_DECODE_ResultSec_D   ),
    .i_MemWrite_D    (i_ID_IE_PR_o_DECODE_MemWrite_D    ),
    .i_Jump_D        (i_ID_IE_PR_o_DECODE_Jump_D        ),
    .i_Branch_D      (i_ID_IE_PR_o_DECODE_Branch_D      ),
    .i_ALUSrc_D      (i_ID_IE_PR_o_DECODE_ALUSrc_D      ),
    .i_immSrc_D      (i_ID_IE_PR_o_DECODE_immSrc_D      ),
    .i_ALU_Control_D (i_ID_IE_PR_o_DECODE_ALU_Control_D ),
    .i_Jal_R_D       (i_ID_IE_PR_o_DECODE_Jal_R_D),
    .i_LUI_D         (i_ID_IE_PR_o_DECODE_LUI_D),
    .o_LUI_E         (i_ECXUTE_o_ID_IE_PR_LUI_E),
    .o_Jal_R_D       (i_ECXUTE_o_ID_IE_PR_Jal_R_E),
    .o_RegWrite_E    (i_ECXUTE_o_ID_IE_PR_RegWrite_E    ),
    .o_ResultSec_E   (i_ECXUTE_o_ID_IE_PR_ResultSec_E   ),
    .o_MemWrite_E    (i_ECXUTE_o_ID_IE_PR_MemWrite_E    ),
    .o_Jump_E        (i_ECXUTE_o_ID_IE_PR_Jump_E        ),
    .o_Branch_E      (i_ECXUTE_o_ID_IE_PR_Branch_E      ),
    .o_ALUSrc_E      (i_ECXUTE_o_ID_IE_PR_ALUSrc_E      ),
    .o_immSrc_E      (i_ECXUTE_o_ID_IE_PR_immSrc_E      ),
    .o_ALU_Control_E (i_ECXUTE_o_ID_IE_PR_ALU_Control_E ),
    //
    .o_RD1_E         (i_ECXUTE_o_ID_IE_PR_RD1_E         ),
    .o_RD2_E         (i_ECXUTE_o_ID_IE_PR_RD2_E         ),
    .o_PC_E          (i_ECXUTE_o_ID_IE_PR_PC_E          ),
    .o_RS1_E         (i_ECXUTE_o_ID_IE_PR_RS1_E         ),
    .o_RS2_E         (i_ECXUTE_o_ID_IE_PR_RS2_E         ),
    .o_Rd_E          (i_ECXUTE_o_ID_IE_PR_Rd_E          ),
    .o_immExt_E      (i_ECXUTE_o_ID_IE_PR_immExt_E      ),
    .o_PCPluse4_E    (i_ECXUTE_o_ID_IE_PR_PCPluse4_E    ),
    .o_Funct3_E      (  i_ECXUTE_o_ID_IE_PR_Funct3_E    )
);



//=================== Excute ===============
EXCUTE_STAGE #(
    .Num_Opreations (Num_Opreations ),
    .Oprand_Width   (Oprand_Width   ),
    .PC_Width       (PC_Width       ),
    .RD_Data_Width  (RD_Data_Width  ),
    .RS1_D_Width    (RS1_D_Width    ),
    .immext_width   (immext_width   )
)
u_EXCUTE_STAGE(
    .i_RegWrite_E             (i_ECXUTE_o_ID_IE_PR_RegWrite_E             ),
    .i_ResultSec_E            (i_ECXUTE_o_ID_IE_PR_ResultSec_E            ),
    .i_MemWrite_E             (i_ECXUTE_o_ID_IE_PR_MemWrite_E             ),
    .i_Jump_E                 (i_ECXUTE_o_ID_IE_PR_Jump_E                 ),
    .i_Branch_E               (i_ECXUTE_o_ID_IE_PR_Branch_E               ),
    .i_ALUSrc_E               (i_ECXUTE_o_ID_IE_PR_ALUSrc_E               ),
    .i_immSrc_E               (i_ECXUTE_o_ID_IE_PR_immSrc_E               ),
    .i_ALU_Control_E          (i_ECXUTE_o_ID_IE_PR_ALU_Control_E          ),
    .i_RD1_E                  (i_ECXUTE_o_ID_IE_PR_RD1_E                  ),
    .i_RD2_E                  (i_ECXUTE_o_ID_IE_PR_RD2_E                  ),
    .i_PC_E                   (i_ECXUTE_o_ID_IE_PR_PC_E                   ),
    .i_RS1_E                  (i_ECXUTE_o_ID_IE_PR_RS1_E                  ),
    .i_RS2_E                  (i_ECXUTE_o_ID_IE_PR_RS2_E                  ),
    .i_Rd_E                   (i_ECXUTE_o_ID_IE_PR_Rd_E                   ),
    .i_immExt_E               (i_ECXUTE_o_ID_IE_PR_immExt_E               ),
    .i_PCPluse4_E             (i_ECXUTE_o_ID_IE_PR_PCPluse4_E             ),
    .i_MUX_4_SRC_A_ForwardA_E (i_Excute_o_Hazard_o_ForwardA_E ),//!
    .i_MUX_4_SRC_A_ForwardB_E (i_Excute_o_Hazard_o_ForwardB_E ),//!
    .i_ALU_Res_M              (i_DataMEM_o_IE_IM_ALU_Res_M ),
    .i_Res_W                  (i_Decode_o_WB_Res_W      ),
    .i_Jal_R_E                (i_ECXUTE_o_ID_IE_PR_Jal_R_E),
    .i_LUI_E                  (i_ECXUTE_o_ID_IE_PR_LUI_E),
    .i_Funct3_E               (i_ECXUTE_o_ID_IE_PR_Funct3_E              ),
    .o_PC_target_E            (i_FETCH_O_EXCUTE_PCTargetE            ),//!
    .o_ALU_Res_E              (i_IE_IM_PR_o_EXCUTE_ALU_Res_E              ),
    .o_WriteData_E            (i_IE_IM_PR_o_EXCUTE_WriteData_E            ),
    .o_RegWrite_E             (i_IE_IM_PR_o_EXCUTE_RegWrite_E             ),
    .o_ResultSec_E            (i_IE_IM_PR_o_EXCUTE_ResultSec_E            ),
    .o_MemWrite_E             (i_IE_IM_PR_o_EXCUTE_MemWrite_E             ),
    .o_PCSrc_E                (i_FETCH_O_EXCUTE_PCSrc_E),
    .o_RS1_E                  (i_Hazard_o_Excute_RS1                  ),//!
    .o_RS2_E                  (i_Hazard_o_Excute_RS2                  ),//!
    .o_Rd_E                   (i_IE_IM_PR_o_EXCUTE_Rd_E                   ),
    .o_PCPluse4_E             (i_IE_IM_PR_o_EXCUTE_PCPluse4_E             )
);


IE_IM_PR #(
    .RD_Data_Width (RD_Data_Width ),
    .PC_Width      (PC_Width      )
)
u_IE_IM_PR(
    .clk           (clk           ),
    .rst           (rst           ),
    .CLR           (CLR           ),
    .i_ALU_Res_E   (i_IE_IM_PR_o_EXCUTE_ALU_Res_E   ),
    .i_WriteData_E (i_IE_IM_PR_o_EXCUTE_WriteData_E ),
    .i_Rd_E        (i_IE_IM_PR_o_EXCUTE_Rd_E        ),
    .i_PCPluse4_E  (i_IE_IM_PR_o_EXCUTE_PCPluse4_E  ),
    .i_RegWrite_E  (i_IE_IM_PR_o_EXCUTE_RegWrite_E  ),
    .i_ResultSec_E (i_IE_IM_PR_o_EXCUTE_ResultSec_E ),
    .i_MemWrite_E  (i_IE_IM_PR_o_EXCUTE_MemWrite_E  ),
    .i_PC_target_E (i_FETCH_O_EXCUTE_PCTargetE),
    .i_Funct3_E    (i_ECXUTE_o_ID_IE_PR_Funct3_E   ),
    .o_Funct3_M    (i_MEM_o_IE_IM_PR_Funct3_M    ),
    .o_PC_target_M (i_IM_IW_o_IE_IM_PC_target_M),
    .o_RegWrite_M  (i_IM_IW_o_IE_IM_RegWrite_M  ),
    .o_ResultSec_M (i_IM_IW_o_IE_IM_ResultSec_M ),
    .o_MemWrite_M  (i_DataMEM_o_IE_IM_MemWrite_M  ),
    .o_ALU_Res_M   (i_DataMEM_o_IE_IM_ALU_Res_M   ),
    .o_WriteData_M (i_DataMEM_o_IE_IM_WriteData_M ),
    .o_Rd_M        (i_IM_IW_o_IE_IM_Rd_M     ),
    .o_PCPluse4_M  (i_IM_IW_o_IE_IM_PCPluse4_M)
);


///================= MeM =================

Data_MEM #(
    .Address_Width (Oprand_Width ),
    .Word_Width    (Data_Width    )
)
u_Data_MEM(
    .clk  (clk  ),
    .rst  (rst  ),
    .i_Funct3_M(i_MEM_o_IE_IM_PR_Funct3_M),
    .WE   (i_DataMEM_o_IE_IM_MemWrite_M   ),
    .i_A  (i_DataMEM_o_IE_IM_ALU_Res_M  ),
    .i_WD (i_DataMEM_o_IE_IM_WriteData_M ),
    .o_RD (i_DataMEM_o_IE_IM_ReadData_M )
);

IM_IW_PR #(
    .RD_Data_Width (RD_Data_Width ),
    .PC_Width      (PC_Width      )
)
u_IM_IW_PR(
    .clk          (clk          ),
    .rst          (rst          ),
    .CLR          (CLR          ),
    .i_ALU_Res_M  (i_DataMEM_o_IE_IM_ALU_Res_M  ),
    .i_ReadData_M (i_DataMEM_o_IE_IM_ReadData_M ),
    .i_Rd_M       (i_IM_IW_o_IE_IM_Rd_M       ),
    .i_PCPluse4_M (i_IM_IW_o_IE_IM_PCPluse4_M ),
    .i_PC_target_M (i_IM_IW_o_IE_IM_PC_target_M),
    .i_RegWrite_M  (i_IM_IW_o_IE_IM_RegWrite_M  ),
    .i_ResultSec_M (i_IM_IW_o_IE_IM_ResultSec_M ),
    .o_PC_target_W (i_WB_o_IW_IM_PC_target_W),
    .o_RegWrite_W  (i_Decode_o_IM_IW_RegWrite_W  ),//! to WE3 in Decode
    .o_ResultSec_W (i_WB_o_IW_IM_ResultSec_W ),//! to MUX_W "SEL"
    .o_ALU_Res_W  (i_WB_o_IW_IM_ALU_Res_W  ),//! to MUX_W "IN"
    .o_ReadData_W (i_WB_o_IW_IM_ReadData_W ),//! to MUX_W "IN"
    .o_Rd_W       (i_WB_o_IW_IM_Rd_W),//! to A3 in Decode
    .o_PCPluse4_W (i_WB_o_IW_IM_PCPluse4_W)//! to MUX_W "IN"
);

// ============ WB  =============

MUX_4 #(
    .IN_WIDTH (RD_Data_Width )
)
u_MUX_4_WB(
    .sel  (i_WB_o_IW_IM_ResultSec_W  ),
    .IN_1 (i_WB_o_IW_IM_ALU_Res_W ),
    .IN_2 (i_WB_o_IW_IM_ReadData_W ),
    .IN_3 (i_WB_o_IW_IM_PCPluse4_W ),
    .IN_4 (i_WB_o_IW_IM_PC_target_W ),
    .Out  (i_Decode_o_WB_Res_W  )
);



Hazard_Unit #(
    .Address_Width (Address_Width )
)
u_Hazard_Unit(
    .i_RS1_D       (i_ID_IE_PR_o_DECODE_RS1_D       ),
    .i_RS2_D       (i_ID_IE_PR_o_DECODE_RS2_D       ),
    .i_RS1_E       (i_Hazard_o_Excute_RS1       ),
    .i_RS2_E       (i_Hazard_o_Excute_RS2       ),
    .i_Rd_E        (i_IE_IM_PR_o_EXCUTE_Rd_E        ),
    .i_ResultSec_E (i_IE_IM_PR_o_EXCUTE_ResultSec_E ),
    .i_PCSrcE      (i_FETCH_O_EXCUTE_PCSrc_E      ),
    .i_Rd_M        (i_IM_IW_o_IE_IM_Rd_M        ),
    .i_RegWrite_M  (i_IM_IW_o_IE_IM_RegWrite_M  ),
    .i_Rd_W        (i_WB_o_IW_IM_Rd_W        ),
    .i_RegWrite_W  (i_Decode_o_IM_IW_RegWrite_W  ),
    .o_Stall_F     (i_FETCH_o_Hazard_o_Stall_F     ),
    .o_Stall_D     (i_Decode_o_Hazard_o_Stall_D     ),
    .o_Flush_D     (i_Decode_o_Hazard_o_Flush_D     ),
    .o_Flush_E     (i_Excute_o_Hazard_o_Flush_E     ),
    .o_ForwardA_E  (i_Excute_o_Hazard_o_ForwardA_E  ),
    .o_ForwardB_E  (i_Excute_o_Hazard_o_ForwardB_E  )
);




    
endmodule