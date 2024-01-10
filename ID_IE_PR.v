module ID_IE_PR #(
    parameter   RD_Data_Width='d32,
                PC_Width ='d32,
                immext_width='d32,
                RS1_D_Width ='d5



) (
    input   wire                            clk,
    input   wire                            rst,
    input   wire                            CLR,
    input   wire    [RD_Data_Width-1:0]     i_RD1_D,
    input   wire    [RD_Data_Width-1:0]     i_RD2_D,
    input   wire    [PC_Width-1:0]          i_PC_D,
    input   wire    [RS1_D_Width-1:0]       i_RS1_D,
    input   wire    [RS1_D_Width-1:0]       i_RS2_D,
    input   wire    [RS1_D_Width-1:0]       i_Rd_D,
    input   wire    [immext_width-1:0]      i_immExt_D, 
    input   wire    [PC_Width-1:0]          i_PCPluse4_D,
    input   wire    [2:0]                   i_Funct3_D,


    // Control signal 
    input  wire                             i_RegWrite_D,
    input  wire      [1:0]                  i_ResultSec_D,
    input  wire                             i_MemWrite_D,
    input  wire                             i_Jump_D,
    input  wire                             i_Branch_D,
    input  wire                             i_ALUSrc_D,
    input  wire      [2:0]                  i_immSrc_D,
    input  wire      [3:0]                  i_ALU_Control_D,
    input  wire                             i_Jal_R_D,
    input  wire                             i_LUI_D,



     output  reg                             o_RegWrite_E,
     output  reg      [1:0]                  o_ResultSec_E,
     output  reg                             o_MemWrite_E,
     output  reg                             o_Jump_E,
     output  reg                             o_Branch_E,
     output  reg                             o_ALUSrc_E,
     output  reg      [2:0]                  o_immSrc_E,
     output  reg      [3:0]                  o_ALU_Control_E,
     output  reg                             o_Jal_R_D,
     output  reg                             o_LUI_E,



    output   reg    [RD_Data_Width-1:0]     o_RD1_E,
    output   reg    [RD_Data_Width-1:0]     o_RD2_E,
    output   reg    [PC_Width-1:0]          o_PC_E,
    output   reg    [RS1_D_Width-1:0]       o_RS1_E,
    output   reg    [RS1_D_Width-1:0]       o_RS2_E,
    output   reg    [RS1_D_Width-1:0]       o_Rd_E,
    output   reg    [immext_width-1:0]      o_immExt_E, 
    output   reg    [PC_Width-1:0]          o_PCPluse4_E,

    output   reg    [2:0]                   o_Funct3_E




    

    

);

// EN  is Stall CTRL 
// CLR is Flush CTRL
always @(posedge clk or negedge rst) begin
    if(!rst)
    begin
        o_RD1_E         <='b0;
        o_RD2_E         <='b0;
        o_PC_E          <='b0;
        o_RS1_E         <='b0;
        o_RS2_E         <='b0;
        o_Rd_E          <='b0;
        o_immExt_E      <='b0;
        o_PCPluse4_E    <='b0;

    end
    else if (CLR) begin
        o_RD1_E         <='b0;
        o_RD2_E         <='b0;
        o_PC_E          <='b0;
        o_RS1_E         <='b0;
        o_RS2_E         <='b0;
        o_Rd_E          <='b0;
        o_immExt_E      <='b0;
        o_PCPluse4_E    <='b0;

    end
    else begin
        o_RD1_E         <=i_RD1_D;
        o_RD2_E         <=i_RD2_D;
        o_PC_E          <=i_PC_D;
        o_RS1_E         <=i_RS1_D;
        o_RS2_E         <=i_RS2_D;
        o_Rd_E          <=i_Rd_D;
        o_immExt_E      <=i_immExt_D;
        o_PCPluse4_E    <=i_PCPluse4_D;
    end
end



// Control 
always @(posedge clk or negedge rst) begin
    if(!rst)
    begin
        o_RegWrite_E    <='b0;
        o_ResultSec_E   <='b0;
        o_MemWrite_E    <='b0;
        o_Jump_E        <='b0;
        o_Branch_E      <='b0;
        o_ALUSrc_E      <='b0;
        o_immSrc_E      <='b0;
        o_ALU_Control_E <='b0;
        o_Jal_R_D       <='b0;
        o_Funct3_E      <='b0;
        o_LUI_E         <='b0;

    end
    else begin
        o_RegWrite_E        <=i_RegWrite_D   ;
        o_ResultSec_E       <=i_ResultSec_D  ;
        o_MemWrite_E        <=i_MemWrite_D   ;
        o_Jump_E            <=i_Jump_D       ;
        o_Branch_E          <=i_Branch_D     ;
        o_ALUSrc_E          <=i_ALUSrc_D     ;
        o_immSrc_E          <=i_immSrc_D     ;
        o_ALU_Control_E     <=i_ALU_Control_D;
        o_Jal_R_D           <=i_Jal_R_D;
        o_Funct3_E          <=i_Funct3_D     ;
        o_LUI_E             <=i_LUI_D;
    end
end



    
endmodule
