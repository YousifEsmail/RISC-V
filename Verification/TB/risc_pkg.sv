package risc_pkg;
    
localparam InstWidth ='d32 ;
localparam  OP_width= 'd7;

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



localparam SUM        = 3'b000;
localparam SLT        = 3'b010;
localparam SLTU       = 3'b011;
localparam XOR        = 3'b100;
localparam OR         = 3'b110;
localparam AND        = 3'b111;
localparam SLL        = 3'b001;
localparam SRL        = 3'b101;




localparam  beq  = 3'b000; 
localparam  bne  = 3'b001;
localparam  slt  = 3'b010;
localparam  sltu = 3'b011;
localparam  blt  = 3'b100;
localparam  bge  = 3'b101;
localparam  bltu = 3'b110;
localparam  bgeu = 3'b111;



endpackage