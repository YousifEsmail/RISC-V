module Branch_circuit (
    
input       wire        i_zero_E,
input       wire        i_sign_E,
input       wire        i_carry_E,
input       wire        i_LTU,
input       wire [2:0]  i_Funct3_E,
output      reg         o_Branch_E

);

localparam  beq  = 3'b000; 
localparam  bne  = 3'b001;
localparam  slt  = 3'b010;
localparam  sltu = 3'b011;
localparam  blt  = 3'b100;
localparam  bge  = 3'b101;
localparam  bltu = 3'b110;
localparam  bgeu = 3'b111;

always @(*) 
begin
case (i_Funct3_E)
    beq:
    begin
       o_Branch_E= i_zero_E;
    end 
    bne:
    begin
        o_Branch_E= ~i_zero_E;
    end 
    slt:
    begin
        o_Branch_E=i_sign_E;
    end 
    sltu:
    begin
        o_Branch_E=i_carry_E;
    end 
    blt:
    begin
        o_Branch_E=i_sign_E;
    end 
    bge:
    begin
        o_Branch_E=~i_sign_E;
    end 
    bltu:
    begin
        o_Branch_E=i_LTU;
    end 
    bgeu:
    begin
        o_Branch_E=~i_LTU;

    end 
    default: 
    begin
        o_Branch_E=1'b0;
    end
endcase    
end

    
endmodule