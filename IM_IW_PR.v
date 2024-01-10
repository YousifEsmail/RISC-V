module IM_IW_PR #(
    parameter   RD_Data_Width='d32,
                PC_Width ='d32,
                Address_Width='d5

) (
    input   wire                            clk,
    input   wire                            rst,
    input   wire                            CLR,
    input   wire    [RD_Data_Width-1:0]     i_ALU_Res_M,
    input   wire    [RD_Data_Width-1:0]     i_ReadData_M,
    input   wire    [Address_Width-1:0]     i_Rd_M,
    input   wire    [PC_Width-1:0]          i_PCPluse4_M,
    input   wire    [PC_Width-1:0]          i_PC_target_M,

 

 //
    input wire                            i_RegWrite_M,
    input wire      [1:0]                 i_ResultSec_M,
    output reg                            o_RegWrite_W,
    output reg      [1:0]                 o_ResultSec_W,
 //
    output  reg     [RD_Data_Width-1:0]   o_ALU_Res_W,
    output  reg     [RD_Data_Width-1:0]   o_ReadData_W,
    output  reg     [Address_Width-1:0]   o_Rd_W,
    output  reg     [PC_Width-1:0]        o_PC_target_W,
    output  reg     [PC_Width-1:0]        o_PCPluse4_W


);




// EN  is Stall CTRL 
// CLR is Flush CTRL
always @(posedge clk or negedge rst) begin
    if(!rst)
    begin
        o_ALU_Res_W     <='b0;
        o_ReadData_W    <='b0;
        o_Rd_W          <='b0;
        o_PCPluse4_W    <='b0;
        o_PC_target_W   <='b0;
           

    end
    else if (CLR) begin
        o_ALU_Res_W     <='b0;
        o_ReadData_W    <='b0;
        o_Rd_W          <='b0;
        o_PCPluse4_W    <='b0;
        o_PC_target_W   <='b0;

           
    end
    else begin
        o_ALU_Res_W      <=i_ALU_Res_M;
        o_ReadData_W     <=i_ReadData_M;
        o_Rd_W           <=i_Rd_M;
        o_PCPluse4_W     <=i_PCPluse4_M;
        o_PC_target_W    <=i_PC_target_M;

    end
end



// Control 
always @(posedge clk or negedge rst) begin
    if(!rst)
    begin
        o_RegWrite_W    <=  'b0;
        o_ResultSec_W   <=  'b0;


    end
    else begin
        o_RegWrite_W    <=  i_RegWrite_M;
        o_ResultSec_W   <=  i_ResultSec_M;
    end
end

    
endmodule