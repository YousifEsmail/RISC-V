module Reg_file #(
    parameter   Address_Width ='d5,
                Data_Width ='d32,
                Reg_file_Depth= $pow(2, Address_Width)
        
) (
    input    wire                       clk,
    input    wire                       rst,
    input    wire                       WE3,
    input    wire [Address_Width-1:0]   i_A1,
    input    wire [Address_Width-1:0]   i_A2,
    input    wire [Address_Width-1:0]   i_A3,
    input    wire [Data_Width-1:0]       i_WD3,
    output   wire  [Data_Width-1:0]       o_RD1,
    output   wire  [Data_Width-1:0]       o_RD2

);

integer i;
reg [Data_Width-1:0] REGFILE [Reg_file_Depth-1:0];


// Write is Seq

always @(negedge clk or negedge rst) 
begin
if (!rst) 
begin
    for ( i=0 ;i <=Reg_file_Depth-1 ;i=i+1 )
        begin
                REGFILE[i]<='b0;
           end
end  else if (WE3)
begin
    REGFILE[i_A3]<=i_WD3;
    
end
end    

/*
// Read is Comb 
always @(*) 
begin
if (!rst) 
begin
    o_RD1='b0;
    o_RD2='b0;
end  
else
begin
    o_RD1=REGFILE[i_A1];
    o_RD2=REGFILE[i_A2];
end
end    
*/ 

assign     o_RD1=REGFILE[i_A1];
assign     o_RD2=REGFILE[i_A2];



    
endmodule