import risc_pkg ::*;


class coverage extends uvm_subscriber #(seq_item) ;
  `uvm_component_utils(coverage)
  

    uvm_analysis_imp #(seq_item, coverage) cov_mon_port; // Connect Monitor to scoreboard

    // Handles
    logic [31:0] INST;
    logic       rst ;
    logic [4:0] rs1, rs2, rd ;
    bit     check_end_ofseq ; 


    // Coverage on copy of Seq_item to avoid override 
    seq_item cov_item ;

    //=================== Cover groups =====================
    // rst Covergroup 
    covergroup Reset_cg;
        Reset_cp: coverpoint  reset {
            bins low_high = (0=>1);
            bins high_low= (1=>1);
        }
    endgroup :Reset_cg

    // I -type and R -type  Instraction 
    covergroup I_R_type_cg;
        I_R_type_cp: coverpoint  INST[6:0] {
            bins I_type_OP = {I_type_OP};
            bins R_type_OP=  {R_type_OP};
        }

        Funct3_cp: coverpoint  INST[14:12] {
            bins  SUM   = {SUM};
            bins  SLT   = {SLT};
            bins  SLTU  = {SLTU};
            bins  XOR   = {XOR};
            bins  OR    = {OR};
            bins  AND   = {AND};
            bins  SLL   = {SLL};
            bins  SRL   = {SRL};
        }
        cross I_R_type_cp ,Funct3_cp
    endgroup :I_R_type_cg

    // B type Instraction 
    covergroup B_type_cg;
        B_type_cp: coverpoint  INST[6:0] {
            bins B_type_OP = {B_type_OP};
        }

        Funct3_cp: coverpoint  INST[14:12] {
            bins  beq   ={beq };
            bins  bne   ={bne };
            bins  blt   ={blt };
            bins  bge   ={bge };
            bins  bltu  ={bltu};
            bins  bgeu  ={bgeu};
        }
        cross B_type_cp ,Funct3_cp
    endgroup :B_type_cg

    // Other Insteactions 
    covergroup OtherInst_cg;
        OtherInst_Cp: coverpoint  INST[6:0] {
            bins  S_type_OP         ={ S_type_OP       };       
            bins  L_type_OP         ={ L_type_OP       };       
            bins  J_type_OP         ={ J_type_OP       };       
            bins  J_R_type_OP       ={ J_R_type_OP     };     
            bins  U_type_LUI_OP     ={ U_type_LUI_OP   };   
            bins  U_type_auipc_OP   ={ U_type_auipc_OP }; 
            }
    endgroup :OtherInst_cg

    // Registers  Covergroup 
    covergroup Regs_cg;
        Rs1_Cp: coverpoint  rs1 {bins RS1[]={[0:31]};}
        Rs2_Cp: coverpoint  rs2 {bins RS2[]={[0:31]};}
        Rs1_Cp: coverpoint  rd  {bins RD[] ={[1:31]};}
    endgroup :Regs_cg
    //======================================================
    // Constructor 
  function new(string name = "coverage_collector" ,uvm_component parent);
     super.new(name,parent);
     cov_mon_port = new ("cov_mon_port" ,this); 
     // Cover groups Constructing 
        Reset_cg =new();  
        Regs_cg= new();  
        I_R_type_cg=new();
        B_type_cg=new();
        OtherInst_cg=new();
     //
     //

  endfunction : new
  




 // Build Phase 
  function void build_phase(uvm_phase phase);  
    super.build_phase(phase);
  endfunction
  


   function void write (seq_item  t);
     cov_item = seq_item::type_id::create("sb_item"); 
     cov_item.copy(t) ;  
     Inst_decode(cov_item) ;
    
       
    // Sampling covergroups 
     Reset_cg.sample();  
     Regs_cg.sample();  
     I_R_type_cg.sample();
     B_type_cg.sample();
     OtherInst_cg.sample();
    //  
    
  endfunction : write 




    function void Inst_decode (seq_item cov_item);
    INST=cov_item.INST;
    rst=cov_item.rst;
    check_end_ofseq=cov_item.check_end_ofseq;


    // Reg's depends on INST -Type 
    case (INST[6:0])
       R_type_OP : 
       begin
        rd=cov_item.INST[11:7];
        rs1=cov_item.INST[19:15];
        rs2=cov_item.INST[24:20];
       end
       I_type_OP,L_type_OP:
       begin
        rd=cov_item.INST[11:7];
        rs1=cov_item.INST[19:15];
       end
       B_type_OP,S_type_OP:
       begin
        rs1=cov_item.INST[19:15];
        rs2=cov_item.INST[24:20];
       end
       J_type_OP,J_R_type_OP,U_type_LUI_OP,U_type_auipc_OP
       begin
        rd=cov_item.INST[11:7];
       end
    endcase

    endfunction


endclass