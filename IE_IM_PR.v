module IE_IM_PR #(
    parameter   RD_Data_Width='d32,
                PC_Width ='d32,
                Address_Width ='d5



) (
    input   wire                            clk,
    input   wire                            rst,
    input   wire                            CLR,
    input wire    [RD_Data_Width-1:0]     i_ALU_Res_E,
    input wire    [RD_Data_Width-1:0]     i_WriteData_E,
    input wire    [Address_Width-1:0]     i_Rd_E,
    input wire    [PC_Width-1:0]          i_PCPluse4_E,
    input wire    [PC_Width-1:0]          i_PC_target_E,

    //
    input wire                            i_RegWrite_E,
    input wire      [1:0]                 i_ResultSec_E,
    input wire                            i_MemWrite_E,
    input wire      [2:0]                 i_Funct3_E,

    
    output reg                            o_RegWrite_M,
    output reg      [1:0]                 o_ResultSec_M,
    output reg                            o_MemWrite_M,
    //
    output reg    [RD_Data_Width-1:0]     o_ALU_Res_M,
    output reg    [RD_Data_Width-1:0]     o_WriteData_M,
    output reg    [Address_Width-1:0]     o_Rd_M,
    output reg    [PC_Width-1:0]          o_PCPluse4_M,
    output reg      [2:0]                 o_Funct3_M,

    output reg    [PC_Width-1:0]          o_PC_target_M

    

);



// EN  is Stall CTRL 
// CLR is Flush CTRL
always @(posedge clk or negedge rst) begin
    if(!rst)
    begin
        o_ALU_Res_M      <='b0;
        o_WriteData_M    <='b0;
        o_Rd_M           <='b0;
        o_PCPluse4_M     <='b0;
        o_PC_target_M    <='b0;
           

    end
    else if (CLR) begin
        o_ALU_Res_M      <='b0;
        o_WriteData_M    <='b0;
        o_Rd_M           <='b0;
        o_PCPluse4_M     <='b0;
        o_PC_target_M    <='b0;


    end
    else begin
        o_ALU_Res_M      <=i_ALU_Res_E;
        o_WriteData_M    <=i_WriteData_E;
        o_Rd_M           <=i_Rd_E;
        o_PCPluse4_M     <=i_PCPluse4_E;
        o_PC_target_M    <=i_PC_target_E;

    end
end






// Control 
always @(posedge clk or negedge rst) begin
    if(!rst)
    begin
        o_RegWrite_M    <=  'b0;
        o_ResultSec_M   <=  'b0;
        o_MemWrite_M    <=  'b0;
        o_Funct3_M      <=  'b0;


    end
    else begin
        o_RegWrite_M    <=   i_RegWrite_E;
        o_ResultSec_M   <=   i_ResultSec_E;
        o_MemWrite_M    <=   i_MemWrite_E;
        o_Funct3_M      <=   i_Funct3_E;

    end
end



endmodule