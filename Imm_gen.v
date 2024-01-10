module Imm_gen #(
    parameter Inst_Data_width ='d32 
) (
    input   wire    [Inst_Data_width-1:0] i_INST_D ,
    input   wire    [2:0]                 i_Inst_Type,
    output  reg     [Inst_Data_width-1:0]     o_ImmEXT_D
);
    
/* inst_type Decoding 
 i_Inst_Type = 000    I_Type
 i_Inst_Type = 001    S_Type
 i_Inst_Type = 010    B_Type
 i_Inst_Type = 011    J_Type
 i_Inst_Type = 100    U_Type 
*/

localparam  I_Type=3'b000 ;
localparam  S_Type=3'b001 ;
localparam  B_Type=3'b010 ;
localparam  J_Type=3'b011 ;
localparam  U_Type=3'b100 ;

always @(*)
begin
case (i_Inst_Type)
I_Type :
    begin
        o_ImmEXT_D={{20{i_INST_D[31]}}, i_INST_D[31:20]};
    end
S_Type :
    begin
        o_ImmEXT_D={{20{i_INST_D[31]}}, i_INST_D[31:25], i_INST_D[11:7]};
    end 
B_Type :
    begin
        o_ImmEXT_D={{20{i_INST_D[31]}}, i_INST_D[7], i_INST_D[30:25], i_INST_D[11:8], 1'b0};
    end 
J_Type :
    begin
        o_ImmEXT_D={{12{i_INST_D[31]}}, i_INST_D[19:12], i_INST_D[20], i_INST_D[30:21], 1'b0};

    end 
U_Type :
    begin
        o_ImmEXT_D={{{i_INST_D[31]}}, i_INST_D[30:20], i_INST_D[19:12], 12'b0};

    end 
default: 
    begin
        o_ImmEXT_D='b0; //!
    end
endcase    
end

endmodule