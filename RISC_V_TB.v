`timescale 1ns/1ps
module RISC_V_TB #(
    parameter   Inst_Data_width ='d32,
                Data_Width ='d32,
                PC_Width ='d32,
                Num_Opreations='d15,
                Oprand_Width='d32,
                RD_Data_Width='d32,
                RS1_D_Width ='d5,
                Address_Width ='d5,
                immext_width='d32
) (
);


reg    rst;
reg    clk;

// CLK_GEN
parameter  CLOCK_PERIOD ='d10 ;
always #(CLOCK_PERIOD/2.0) clk = ~clk;


//Regfile Out
  integer Regfile_out_id;
  initial Regfile_out_id= $fopen("Regfile_out.txt","w"); 



//Mem Content Out
  integer Mem_out_id;
  initial Mem_out_id= $fopen("Mem_out.txt","w"); 


//initial block
initial 
begin
initialize();
Reset();
#(200*CLOCK_PERIOD);
Reg_file_out();
Mem_out();
      // $stop(); 
      $finish();
end



// load Program
initial $readmemh("INST_HEX.txt",u_RISCV_TOP.u_FETCH_STAGE.u_INST_MEM.INST_Memory); 
  

//tasks
task initialize();
    begin
        clk='b1;
        rst='b1; 
      
    end
endtask


task Reset();
    begin
        rst='b1;
        #(CLOCK_PERIOD*CLOCK_PERIOD);
        rst='b0;
        #(CLOCK_PERIOD*CLOCK_PERIOD);
        rst='b1;  
    end
endtask

integer L;
task Reg_file_out();
    begin
        $fwrite(Regfile_out_id,"Register Expected Results"); 
        for (L=0 ;L<=31 ;L=L+1 )
         begin
        $fwrite(Regfile_out_id,"\n## expect[%0d] = 0x%h",L,u_RISCV_TOP.u_DECODE_STAGE.u_Reg_file.REGFILE[L]);
        end
 
    end
endtask



integer k;
task Mem_out();
    begin
        $fwrite(Mem_out_id,"Memory Expected Results\n"); 
        for (L=0 ;L<=128 ;L=L+4 )
         begin
        $fwrite(Mem_out_id,"## Mem Address[0x%h] = 0x%h",L,u_RISCV_TOP.u_Data_MEM.DataMEM[L+'d3]);
        $fwrite(Mem_out_id,"_%h",u_RISCV_TOP.u_Data_MEM.DataMEM[L+'d2]);
        $fwrite(Mem_out_id,"_%h",u_RISCV_TOP.u_Data_MEM.DataMEM[L+'d1]);
        $fwrite(Mem_out_id,"_%h\n",u_RISCV_TOP.u_Data_MEM.DataMEM[L+'d0]);
        end
 
    end
endtask

// DUT 
RISCV_TOP #(
    .Inst_Data_width (Inst_Data_width ),
    .Data_Width      (Data_Width      ),
    .PC_Width        (PC_Width        ),
    .Num_Opreations  (Num_Opreations  ),
    .Oprand_Width    (Oprand_Width    ),
    .RD_Data_Width   (RD_Data_Width   ),
    .RS1_D_Width     (RS1_D_Width     ),
    .Address_Width   (Address_Width   ),
    .immext_width    (immext_width    )
)
u_RISCV_TOP(
    .rst (rst ),
    .clk (clk )
);



endmodule