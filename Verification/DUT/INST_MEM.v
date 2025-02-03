module INST_MEM #(
    parameter   Address_Width ='d32,
                Data_Width='d8,
                Mem_Depth= $pow('d2, 'd10)	
) (
    input    wire   rst,
    input    wire   [Address_Width-1:0]  i_Address_IN,
    output   reg   [Data_Width-1:0]      o_Instr_F
    
);

// integer i;
reg ['d8-1:0] INST_Memory [Mem_Depth-1:0];

// Write is Seq

/*     // ------ No Write In INST_MEM ---------
always @(posedge clk or negedge rst) 
begin
if (!rst) 
begin
    for ( i=0 ;i <=Mem_Depth-1 ;i=i+1 )
        begin
                INST_Memory[i]<='b0;
           end
end  else
begin
    INST_Memory[Address_IN]<=Data_IN;
end
end    

*/

//==========ProgramFlashing=============

 

// Read is Comb 
always @(*) 
begin
if (!rst) 
begin
    o_Instr_F='b0;
end  
else
begin
    o_Instr_F={INST_Memory[i_Address_IN+'d3],INST_Memory[i_Address_IN+'d2],INST_Memory[i_Address_IN+'d1],INST_Memory[i_Address_IN+'d0]};
end
end  

    
endmodule