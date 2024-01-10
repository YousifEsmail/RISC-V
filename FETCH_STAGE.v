module FETCH_STAGE #(
    parameter   Address_Width ='d32,
                Data_Width='d32,
                INST_Width ='d32,
                Mem_Depth= $pow('d2, 'd10)	
) (
    input       wire rst,
    input       wire clk,
    input       wire i_Stall_F,
    inout       wire PCSrc_F,
    input       wire [INST_Width-1:0] i_PC_Target_F,
    output      wire [INST_Width-1:0] o_PCPluse4_F,
    output      wire [INST_Width-1:0] o_Instr_F,
    output      wire [INST_Width-1:0] o_PC_F

);
    


 // internals 

wire [INST_Width-1:0]i_INSTMEM_iPCINC4_o_PCREG_PC_F;  
wire [INST_Width-1:0]i_PCREG_o_PCMUX_PC_F;  


Mux #(
    .InputWidth_1 (INST_Width )
)
u_Mux_PC(
    .sel  (PCSrc_F  ),
    .IN_1 (i_PC_Target_F ),
    .IN_2 (o_PCPluse4_F ),
    .Out  (i_PCREG_o_PCMUX_PC_F  )
);

PC_INC_4 #(
    .INST_Width (INST_Width )
)
u_PC_INC_4(
    .i_PC_F       (o_PC_F       ),
    .o_PCPluse4_F (o_PCPluse4_F )
);



PC_REG #(
    .INST_Width (INST_Width )
)
u_PC_REG(
    .clk          (clk          ),
    .rst          (rst          ),
    .EN           (i_Stall_F    ),
    .i_PC_muxed_F (i_PCREG_o_PCMUX_PC_F ),
    .o_PC_F       (o_PC_F )
);


INST_MEM #(
    .Address_Width (Address_Width ),
    .Data_Width    (Data_Width    ),
    .Mem_Depth     (Mem_Depth     )
)
u_INST_MEM(
    .rst          (rst          ),
    .i_Address_IN (o_PC_F ),
    .o_Instr_F    (o_Instr_F    )
);

    
endmodule