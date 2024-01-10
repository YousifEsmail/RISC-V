module Data_MEM #(
    parameter   Address_Width ='d32,
                MEM_Width ='d8,
                Word_Width='d32,
                DataMEM_Depth= $pow('d2, 'd10)
) (
    input    wire                           clk,
    input    wire                           rst,
    input    wire                           WE,
    input    wire   [Address_Width-1:0]     i_A,
    input    wire   [Word_Width-1:0]        i_WD,
    input    wire   [2:0]                   i_Funct3_M,
    output   reg    [Word_Width-1:0]        o_RD

    
);
    
integer i;
reg [MEM_Width-1:0] DataMEM [DataMEM_Depth-1:0];


localparam Byte =3'b000 ;
localparam Half_Word =3'b001 ;
localparam Word =3'b010 ;
localparam LBU =3'b100 ;
localparam LHU =3'b101 ;



// Write is Seq

always @(posedge clk or negedge rst) 
begin
if (!rst) 
begin
    for ( i=0 ;i <=DataMEM_Depth-1 ;i=i+1 )
        begin
                DataMEM[i]<='b0;
           end
end  else if (WE)
begin
    case (i_Funct3_M)
        Byte:begin
                DataMEM[i_A]       <=i_WD[MEM_Width-1:0];
                DataMEM[i_A+'d1]   <=DataMEM[i_A+'d1];
                DataMEM[i_A+'d2]   <=DataMEM[i_A+'d2];
                DataMEM[i_A+'d3]   <=DataMEM[i_A+'d3];
        end 
        Half_Word:begin
                DataMEM[i_A]       <=i_WD[MEM_Width-1:0];
                DataMEM[i_A+'d1]   <=i_WD[2*MEM_Width-1:MEM_Width];
                DataMEM[i_A+'d2]   <=DataMEM[i_A+'d2];
                DataMEM[i_A+'d3]   <=DataMEM[i_A+'d3];
        end 
        Word:begin
                DataMEM[i_A]       <=i_WD[MEM_Width-1:0];
                DataMEM[i_A+'d1]   <=i_WD[2*MEM_Width-1:MEM_Width];
                DataMEM[i_A+'d2]   <=i_WD[3*MEM_Width-1:2*MEM_Width];
                DataMEM[i_A+'d3]   <=i_WD[4*MEM_Width-1:3*MEM_Width];
        end 
        default:
        begin
                DataMEM[i_A]       <=i_WD[MEM_Width-1:0];
                DataMEM[i_A+'d1]   <=DataMEM[i_A+'d1];
                DataMEM[i_A+'d2]   <=DataMEM[i_A+'d2];
                DataMEM[i_A+'d3]   <=DataMEM[i_A+'d3];
        end 
    endcase
end
end    


// Read is Comb 
always @(*) 
begin
if (!rst) 
begin
    o_RD='b0;
end  
else
begin
case (i_Funct3_M)
    Byte:begin
        o_RD={{24{DataMEM[i_A][7]}},DataMEM[i_A]};
    end 
    Half_Word:begin
        o_RD={{16{DataMEM[i_A+1][7]}},DataMEM[i_A+'d1],DataMEM[i_A]};
    end 
    Word:begin
        o_RD={DataMEM[i_A+'d3],DataMEM[i_A+'d2],DataMEM[i_A+'d1],DataMEM[i_A]};
    end 
    LBU:begin
        o_RD={{24{1'b0}},DataMEM[i_A]};
    end 
    LHU:begin
    o_RD={{16{1'b0}},DataMEM[i_A+'d1],DataMEM[i_A]};
    end 
    default: 
    begin
    o_RD={{24{DataMEM[i_A][7]}},DataMEM[i_A]};
    end
endcase
end
end    



endmodule