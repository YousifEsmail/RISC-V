module CTRL_UNIT #(
    parameter FUNCT_3_Width ='d3,FUNCT_7_Width='d7,OP_width='d7
) (
    input   wire     [OP_width-1:0]         i_OP_D,
    input   wire     [FUNCT_3_Width-1:0]    i_FUNCT3_D,
    input   wire     [FUNCT_7_Width-1:0]    i_FUNCT7_D,
    output  reg                             o_RegWrite_D,
    output  reg      [1:0]                  o_ResultSec_D,
    output  reg                             o_MemWrite_D,
    output  reg                             o_Jump_D,
    output  reg                             o_Branch_D,
    output  reg                             o_ALUSrc_D,
    output  reg                             o_LUI_D,
    output  reg                             o_Jal_R, 
    output  reg      [2:0]                  o_immSrc_D,
    output  reg      [3:0]                  o_ALU_Control_D

          

);

/*---- OP_Decoding----*/ 

localparam I_type_OP        = 7'b0010011;
localparam R_type_OP        = 7'b0110011;
localparam S_type_OP        = 7'b0100011;
localparam L_type_OP        = 7'b0000011;
localparam B_type_OP        = 7'b1100011;
localparam J_type_OP        = 7'b1101111;
localparam J_R_type_OP      = 7'b1100111;
localparam U_type_LUI_OP    = 7'b0110111;
localparam U_type_auipc_OP  = 7'b0010111;



reg [1:0] ALUOP;

always @(*) 
begin
case (i_OP_D)
I_type_OP   : 
    begin
    o_RegWrite_D        =1'b1;
    o_ResultSec_D       =2'b00;
    o_MemWrite_D        =1'b0;
    o_Jump_D            =1'b0;
    o_Branch_D          =1'b0;
    o_ALUSrc_D          =1'b1;
    o_immSrc_D          =3'b000;
    ALUOP               =2'b00;
    o_Jal_R             =1'b0;
    o_LUI_D             =1'b0;
    end
R_type_OP   : 
    begin
    o_RegWrite_D        =1'b1;
    o_ResultSec_D       =2'b00;
    o_MemWrite_D        =1'b0;
    o_Jump_D            =1'b0;
    o_Branch_D          =1'b0;
    o_ALUSrc_D          =1'b0;
    o_immSrc_D          =3'b000; //xxx
    ALUOP               =2'b01;
    o_Jal_R             =1'b0;
    o_LUI_D             =1'b0;

    end
S_type_OP   : 
    begin
    o_RegWrite_D        =1'b0;
    o_ResultSec_D       =2'b01;//bxx
    o_MemWrite_D        =1'b1;
    o_Jump_D            =1'b0;
    o_Branch_D          =1'b0;
    o_ALUSrc_D          =1'b1;
    o_immSrc_D          =3'b001; //! Load encoded in  S-type format
    ALUOP               =2'b10;
    o_Jal_R             =1'b0;
    o_LUI_D             =1'b0;

    end
L_type_OP   : 
    begin
    o_RegWrite_D        =1'b1;
    o_ResultSec_D       =2'b01; // From MeM
    o_MemWrite_D        =1'b0;
    o_Jump_D            =1'b0;
    o_Branch_D          =1'b0;
    o_ALUSrc_D          =1'b1;
    o_immSrc_D          =3'b000; //! Load encoded in  I-type format
    ALUOP               =2'b10;
    o_Jal_R             =1'b0;
    o_LUI_D             =1'b0;

    end
B_type_OP   : 
    begin
    o_RegWrite_D        =1'b0;
    o_ResultSec_D       =2'b01;//xx
    o_MemWrite_D        =1'b0;
    o_Jump_D            =1'b0;
    o_Branch_D          =1'b1;
    o_ALUSrc_D          =1'b0;
    o_immSrc_D          =3'b010;
    ALUOP               =2'b11;
    o_Jal_R             =1'b0;
    o_LUI_D             =1'b0;

    end
J_type_OP   : 
    begin 
    o_RegWrite_D        =1'b1;
    o_ResultSec_D       =2'b10; // PC stored in RD  to link 
    o_MemWrite_D        =1'b0;
    o_Jump_D            =1'b1;
    o_Branch_D          =1'b0;
    o_ALUSrc_D          =1'b1;
    o_immSrc_D          =3'b011;
    ALUOP               =2'b10;
    o_Jal_R             =1'b0;
    o_LUI_D             =1'b0;

    end
J_R_type_OP   : 
    begin
        /* //! RS1 must added so add a adder 
            !to add zero or RS1 on PC Target
        */

    o_RegWrite_D        =1'b1; 
    o_ResultSec_D       =2'b10; // PC stored in RD  to link 
    o_MemWrite_D        =1'b0;
    o_Jump_D            =1'b1; 
    o_Branch_D          =1'b0;
    o_ALUSrc_D          =1'b0;
    o_immSrc_D          =3'b000; // in I immediate not J
    ALUOP               =2'b10; // to ADD
    o_Jal_R             =1'b1; //!
    o_LUI_D             =1'b0;

    end
U_type_LUI_OP   : 
    begin
    o_RegWrite_D        =1'b1;
    o_ResultSec_D       =2'b00;
    o_MemWrite_D        =1'b0;
    o_Jump_D            =1'b0;
    o_Branch_D          =1'b0;
    o_ALUSrc_D          =1'b1;
    o_immSrc_D          =3'b100; // U
    ALUOP               =2'b10; 
    o_Jal_R             =1'b0;
    o_LUI_D             =1'b1;

    end
U_type_auipc_OP   : 
    begin
    o_RegWrite_D        =1'b1; //! to Write Rd= PC_TARGET =PC+U_imm
    o_ResultSec_D       =2'b11;//! to take PCTARGET
    o_MemWrite_D        =1'b0;
    o_Jump_D            =1'b0; //! No Jump 
    o_Branch_D          =1'b0;
    o_ALUSrc_D          =1'b1;
    o_immSrc_D          =3'b100; // U
    ALUOP               =2'b01; //xx
    o_Jal_R             =1'b0;
    o_LUI_D             =1'b0;

    end
    default:
    begin
        // add with out Write Back  
    o_RegWrite_D        =1'b0;
    o_ResultSec_D       =2'b00;
    o_MemWrite_D        =1'b0;
    o_Jump_D            =1'b0;
    o_Branch_D          =1'b0;
    o_ALUSrc_D          =1'b0;
    o_immSrc_D          =3'b100; // U /xx
    ALUOP               =2'b01; //xx 
    o_Jal_R             =1'b0;
    o_LUI_D             =1'b0;

    end 
endcase    
end


localparam I_ALU_OP        = 2'b00;
localparam R_ALU_OP        = 2'b01;
localparam S_ALU_OP        = 2'b10;
localparam B_ALU_OP        = 2'b11;

localparam SUM        = 3'b000;
localparam SLT        = 3'b010;
localparam SLTU       = 3'b011;
localparam XOR        = 3'b100;
localparam OR         = 3'b110;
localparam AND        = 3'b111;
localparam SLL        = 3'b001;
localparam SRL        = 3'b101;







always @(*) 
begin
 case (ALUOP)
    I_ALU_OP :
        begin
            case (i_FUNCT3_D)
               SUM :
                begin
                o_ALU_Control_D=4'b0000;  
                end
                SLT :
                begin
                o_ALU_Control_D=4'b1000;
                end
                SLTU:
                begin
                o_ALU_Control_D=4'b1001;
                end
                XOR:
                begin
                o_ALU_Control_D=4'b0100;
                end
                OR:
                begin
                o_ALU_Control_D=4'b0011;
                end
                AND:
                begin
                o_ALU_Control_D=4'b0010;
                end
                SLL:
                begin
                o_ALU_Control_D=4'b0101;
                end
                SRL:
                begin
                if (~i_FUNCT7_D[5]) 
                    begin
                       // SRL  
                       o_ALU_Control_D=4'b0110;
                    end else
                    begin
                        // SRA
                       o_ALU_Control_D=4'b0111;
                    end
                end
                default:
                begin
                o_ALU_Control_D=4'b0000;
                end 
            endcase
            
        end
    R_ALU_OP :
        begin
            case (i_FUNCT3_D)
               SUM :
                begin
                    if (~i_FUNCT7_D[5]) 
                    begin
                       // add  
                       o_ALU_Control_D=4'b0000;
                    end else
                    begin
                        // SUB
                       o_ALU_Control_D=4'b0001;
                    end
                end
                SLT :
                begin
                o_ALU_Control_D=4'b1000;
                end
                SLTU:
                begin
                o_ALU_Control_D=4'b1001;
                end
                XOR:
                begin
                o_ALU_Control_D=4'b0100;
                end
                OR:
                begin
                o_ALU_Control_D=4'b0011;
                end
                AND:
                begin
                o_ALU_Control_D=4'b0010;
                end
                SLL:
                begin
                o_ALU_Control_D=4'b0101;
                end
                SRL:
                begin
                if (~i_FUNCT7_D[5]) 
                    begin
                       // SRL  
                       o_ALU_Control_D=4'b0110;
                    end else
                    begin
                        // SRA
                       o_ALU_Control_D=4'b0111;
                    end
                end
                default:
                begin
                o_ALU_Control_D=4'b0000;
                end 
            endcase
            
        end
    S_ALU_OP :
        begin
        o_ALU_Control_D=4'b0000; // all is SUM
        end 
    B_ALU_OP :
        begin
        o_ALU_Control_D=4'b0001; // all is SUB
        end 
    default: 
    begin
    o_ALU_Control_D=4'b0000; //  SUM
    end
 endcase   
end
    
endmodule