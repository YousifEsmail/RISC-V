import risc_pkg ::*;


class seq_item extends uvm_sequence_item ; 
	 
     // Constructor
     function new (string name = "risc_seq_item") ;
         super.new(name) ;
     endfunction		 

    //inputs
    rand logic rst;
    rand bit [InstWidth-1:0] INST;
    // check bit on its assertion DPI Checks in Scoreboard
    bit     check_end_ofseq ; 

    //============== Constraints to be added =================
    constraint  OPCODE_Constraint {
      INST[OP_width-1:0] inside {
            I_type_OP
            ,R_type_OP        
            ,S_type_OP        
            ,L_type_OP        
            ,B_type_OP        
            ,J_type_OP        
            ,J_R_type_OP      
            ,U_type_LUI_OP    
            ,U_type_auipc_OP    };}


  constraint  Function_Constraint {
     // I - Type  
     ((INST[OP_width-1:0] == I_type_OP ) ) -> (INST[14:12] inside {SUM,SLT,SLTU,XOR,OR,AND,SLL,SRL}) ;
     //  I - Type   srli srai 
     ((INST[OP_width-1:0] == I_type_OP && INST[14:12] == SRL ) ) -> (INST[31:25] inside {7'b0000000, 7'b0100000}) ;
     // I - Type==== SLL
     ((INST[OP_width-1:0] == I_type_OP && INST[14:12] == SLL ) ) -> (INST[31:25] == 7'b0000000) ;
     // R -Type 
     ((INST[OP_width-1:0] == R_type_OP ) ) -> (INST[14:12] inside {SUM,SLT,SLTU,XOR,OR,AND,SLL,SRL}) ;
     // R -Type==== sum / Sub 
     ((INST[OP_width-1:0] == R_type_OP && INST[14:12] == SUM ) ) -> (INST[31:25] inside {7'b0000000, 7'b0100000}) ;
    // Branch  type 
     ((INST[OP_width-1:0] == B_type_OP ) ) -> (INST[14:12] inside {beq,bne,blt,bge,bltu,bgeu}) ;
      //  jalr Funct3 = 3'b000
     ((INST[OP_width-1:0] == J_type_OP ) ) -> (INST[14:12] == 3'b000) ;
      //   RD is a varible in all instraction except S and B types
      ((INST[OP_width-1:0] != S_type_OP) && (INST[OP_width-1:0] != B_type_OP)) -> (InstrF[11:7] != 0) ;
      
      }

    //==================== Functions ==============
    function void Reset();
      INST=32'b0  ;
      check_end_ofseq=1'b0;  
    endfunction

    function void Assert_check_end_ofseq();
      check_end_ofseq=1'b1;  
    endfunction


endclass