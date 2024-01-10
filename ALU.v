module ALU #(
    parameter   Oprand_Width='d32,
                Num_Opreations='d15,
                ALU_CTRL_Width=$clog2(Num_Opreations)
                
) (
    input      wire     signed      [Oprand_Width-1:0]      i_SrcA_E,
    input      wire     signed      [Oprand_Width-1:0]      i_SrcB_E,
    input      wire                 [ALU_CTRL_Width-1:0]    i_ALU_CTRL_E,
    output     reg                                          carry,
    output     wire                                         o_zero,
    output     wire                                         o_sign,
    output     wire                                         o_overflow,
    output     wire                                         o_LTU,
    output     reg      signed      [Oprand_Width-1:0]      o_ALU_Res_E
    
);

/*
ADD     ||  i_ALU_CTRL_E = 'b0000 
SUB     ||  i_ALU_CTRL_E = 'b0001
AND     ||  i_ALU_CTRL_E = 'b0010
OR      ||  i_ALU_CTRL_E = 'b0011
XOR     ||  i_ALU_CTRL_E = 'b0100
SLL     ||  i_ALU_CTRL_E = 'b0101
SRL     ||  i_ALU_CTRL_E = 'b0110
SRA     ||  i_ALU_CTRL_E = 'b0111
SLT     ||  i_ALU_CTRL_E = 'b1000
SLTU    ||  i_ALU_CTRL_E = 'b1001 
MUL     ||  i_ALU_CTRL_E = 'b1010 
MULU    ||  i_ALU_CTRL_E = 'b1011 
DIV     ||  i_ALU_CTRL_E = 'b1100 
DIVU    ||  i_ALU_CTRL_E = 'b1101 
REM     ||  i_ALU_CTRL_E = 'b1110 
REMU    ||  i_ALU_CTRL_E = 'b1111 


*/




localparam  ADD  = 4'b0000; 
localparam  SUB  = 4'b0001;
localparam  AND  = 4'b0010;
localparam  OR   = 4'b0011;
localparam  XOR  = 4'b0100;
localparam  SLL  = 4'b0101;
localparam  SRL  = 4'b0110;
localparam  SRA  = 4'b0111;
localparam  SLT  = 4'b1000;
localparam  SLTU = 4'b1001;  

localparam  MUL  = 4'b1010; 
localparam  MULU = 4'b1011; 
localparam  DIV  = 4'b1100; 
localparam  DIVU = 4'b1101; 
localparam  REM  = 4'b1110; 
localparam  REMU = 4'b1111; 


wire signed [Oprand_Width-1:0] SUBTRACTION ;
wire         [Oprand_Width-1:0] U_SUBTRACTION ;
wire       [Oprand_Width-1:0] U_A ;
wire      [Oprand_Width-1:0] U_B ;
wire                         LTU ;




always @(*) 
begin
case (i_ALU_CTRL_E)
ADD   : 
    begin
      {carry,o_ALU_Res_E}=i_SrcA_E+i_SrcB_E;
    end
SUB   : 
    begin
      {carry,o_ALU_Res_E}=SUBTRACTION;
   end
AND   : 
   begin
     {carry,o_ALU_Res_E}={1'b0,i_SrcA_E&i_SrcB_E};
   end
OR   : 
   begin
     {carry,o_ALU_Res_E}={1'b0,i_SrcA_E|i_SrcB_E};
   end
XOR   : 
   begin
     {carry,o_ALU_Res_E}={1'b0,i_SrcA_E^i_SrcB_E};
   end
SLL   : 
   begin
     {carry,o_ALU_Res_E}={1'b0,i_SrcA_E<<i_SrcB_E[4:0]};
   end
SRL   : 
   begin
     {carry,o_ALU_Res_E}={1'b0,i_SrcA_E>>i_SrcB_E[4:0]};
   end
SRA   : 
   begin
     {carry,o_ALU_Res_E}={1'b0,i_SrcA_E>>>i_SrcB_E[4:0]};
   end
SLT   : 
   begin
     {carry,o_ALU_Res_E}={1'b0,{{Oprand_Width-1{1'b0}},SUBTRACTION[Oprand_Width-1]}}; //! all zeros and ones or ..000,..001
   end
SLTU   : 
   begin
     {carry,o_ALU_Res_E}={1'b0,{{Oprand_Width-1{1'b0}},LTU}}; //! all zeros and ones or ..000,..001
   end
MUL   : 
   begin
     {carry,o_ALU_Res_E}={1'b0,i_SrcA_E*i_SrcB_E}; //! 
   end
MULU   : 
   begin
     {carry,o_ALU_Res_E}={1'b0,U_A*U_B};//!
   end
DIV   : 
   begin
     {carry,o_ALU_Res_E}={1'b0,i_SrcA_E/i_SrcB_E};
   end
DIVU   : 
   begin
     {carry,o_ALU_Res_E}={1'b0,U_A/U_B};
   end
REM   : 
   begin
     {carry,o_ALU_Res_E}={1'b0,i_SrcA_E%i_SrcB_E};
   end
REMU   : 
   begin
     {carry,o_ALU_Res_E}= {1'b0,U_A%U_B};

   end 
    default:
    begin
    {carry,o_ALU_Res_E}='b0;
    end 
endcase    
end

assign SUBTRACTION= i_SrcA_E-i_SrcB_E;
assign LTU=$unsigned(i_SrcA_E)<$unsigned(i_SrcB_E);
assign  U_A=$unsigned (i_SrcA_E);
assign  U_B=$unsigned (i_SrcB_E);



//assign U_SUBTRACTION=U_A-U_B;

/*
always @(*) 
begin
  if (i_SrcA_E[Oprand_Width-1]) begin
  U_A=(~i_SrcA_E)+'b1;  
  end
  else
  begin
    U_A=i_SrcA_E;
  end

end


always @(*) 
begin
  if (i_SrcB_E[Oprand_Width-1]) begin
  U_B=(~i_SrcB_E)+'b1;  
  end
  else
  begin
    U_B=i_SrcB_E;
  end

end
*/

//Flags
 assign o_zero=~|(o_ALU_Res_E);
 assign o_sign=o_ALU_Res_E[Oprand_Width-1];
 assign o_overflow=carry ^ o_sign ^ i_SrcA_E[Oprand_Width-1] ^ i_SrcB_E[Oprand_Width-1];
 assign o_LTU=LTU;
endmodule