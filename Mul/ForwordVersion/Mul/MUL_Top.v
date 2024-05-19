module MUL_Top #(
    parameter   NumBits ='d32,
                OutNumBits=NumBits*2,
                Radix='d2,
                NumPartialProducts=NumBits/Radix,
                NumMulCore='d2
) (
    input   wire clk,
    input   wire rst,
    input   wire Enable,
    input   wire Softrst,
    input   wire I_Load,
    input   wire [NumBits-1:0] A ,  
    input   wire [NumBits-1:0] B ,
    output  wire MulValid,
    output  wire [NumBits-1:0] Out ,
    output  wire [OutNumBits-1:0] Result 
    
    
     
);
    

   
// Internals
wire [NumPartialProducts-1:0] I_CTRL_UNIT_MUL_O_Mod_Booth_Enc_E0;
wire [NumPartialProducts-1:0] I_CTRL_UNIT_MUL_O_Mod_Booth_Enc_E1;
wire [NumPartialProducts-1:0] I_CTRL_UNIT_MUL_O_Mod_Booth_Enc_E2;

wire  Core1_I_mux_Neg_O_CTRL_UNIT_MUL_E0;
wire  Core1_I_mux_2A_O_CTRL_UNIT_MUL_E1;
wire  Core1_I_mux_No0_O_CTRL_UNIT_MUL_E2;


wire  Core2_I_mux_Neg_O_CTRL_UNIT_MUL_E0;
wire  Core2_I_mux_2A_O_CTRL_UNIT_MUL_E1;
wire  Core2_I_mux_No0_O_CTRL_UNIT_MUL_E2;

// ================== Core 1 ===================
wire [OutNumBits-1:0] Core1_I_Mux_2A_A_O_left_Shifter_2A ;
wire [OutNumBits-1:0] Core1_I_2sComp_O_Mux_2A_A ;
wire [OutNumBits-1:0] Core1_I_MUX_POS_NEG_O_2sComp_2A_A ;
wire [OutNumBits-1:0] Core1_I_Mux_zero_A_O_Mux_POS_Neg ;
wire [OutNumBits-1:0] Core1_I_Adder_O_Mux_Zero_A ;
wire [OutNumBits-1:0] Core1_I_RightShfter_O_Acc ;
wire [OutNumBits-1:0] Core1_I_Adder_O_RightShfter;


// ================== Core 2 ===================
wire [OutNumBits-1:0] Core2_I_Mux_2A_A_O_left_Shifter_2A ;
wire [OutNumBits-1:0] Core2_I_2sComp_O_Mux_2A_A ;
wire [OutNumBits-1:0] Core2_I_MUX_POS_NEG_O_2sComp_2A_A ;
wire [OutNumBits-1:0] Core2_I_Mux_zero_A_O_Mux_POS_Neg ;
wire [OutNumBits-1:0] Core2_I_Adder_O_Mux_Zero_A ;
wire [OutNumBits-1:0] Core2_I_RightShfter_O_Acc ;
wire [OutNumBits-1:0] Core2_I_Adder_O_RightShfter;
// ================== Fianl Adder ===================

wire [NumPartialProducts-1:0] Core1_I_Final_Adder_O_VarRightShfter;
wire [NumPartialProducts-1:0] Core2_I_Final_Adder_O_VarRightShfter;
wire [NumBits*2-1:0] Core1_I_Final_Adder_O_ValidMux;
wire [NumBits*2-1:0] Core2_I_Final_Adder_O_ValidMux;


//================Counter ==========
localparam  CounterNumBits =$clog2(NumPartialProducts) ;

wire [CounterNumBits-1:0] CounterReg;
  
wire [OutNumBits-1:0] in_Result ;

// Instances




CTRL_UNIT_MUL#(
    .NumBits(NumBits),
    .NumPartialProducts(NumPartialProducts),
    .NumMulCore(NumMulCore)
                
) u_CTRL_UNIT_MUL(
    .clk               (clk               ),
    .rst               (rst               ),
    .Enable_MUL        (Enable        ),
    .I_Load            (I_Load            ),
    .I_Counter_SoftRst (Softrst ),
    .Valid             (Valid),
    .I_E0              (I_CTRL_UNIT_MUL_O_Mod_Booth_Enc_E0               ),
    .I_E1              (I_CTRL_UNIT_MUL_O_Mod_Booth_Enc_E1               ),
    .I_E2              (I_CTRL_UNIT_MUL_O_Mod_Booth_Enc_E2               ),
    .O_Core1_E0        (Core1_I_mux_Neg_O_CTRL_UNIT_MUL_E0        ),
    .O_Core1_E1        (Core1_I_mux_2A_O_CTRL_UNIT_MUL_E1        ),
    .O_Core1_E2        (Core1_I_mux_No0_O_CTRL_UNIT_MUL_E2        ),
    .O_Core2_E0        (Core2_I_mux_Neg_O_CTRL_UNIT_MUL_E0        ),
    .O_Core2_E1        (Core2_I_mux_2A_O_CTRL_UNIT_MUL_E1        ),
    .O_Core2_E2        (Core2_I_mux_No0_O_CTRL_UNIT_MUL_E2        ),
    .CounterReg         (CounterReg)
);




Mod_Booth_Enc #(
    .NumBit(NumBits),
    .Radix('d2)
)
 u_Mod_Booth_Enc(
    .Oprand (B ),
    .E0     (I_CTRL_UNIT_MUL_O_Mod_Booth_Enc_E0 ),
    .E1     (I_CTRL_UNIT_MUL_O_Mod_Booth_Enc_E1 ),
    .E2     (I_CTRL_UNIT_MUL_O_Mod_Booth_Enc_E2 )
);



/// ======================  Core 1================================= 




//2A/A
left_Shifter #(
    .NumShifts('d1),
    .NumBits (OutNumBits)
)u_core_1_left_Shifter(
    .In  ({{'d32{1'b0}},A}  ),
    .out (Core1_I_Mux_2A_A_O_left_Shifter_2A )
);


N_bit_MUX #(
    .InWidth(OutNumBits)
)u_core_1_N_bit_MUX_2A_A(
    .IN_True  (Core1_I_Mux_2A_A_O_left_Shifter_2A  ),
    .IN_False ({{'d32{1'b0}},A}),
    .sel      (Core1_I_mux_2A_O_CTRL_UNIT_MUL_E1 ),
    .Out      (Core1_I_2sComp_O_Mux_2A_A      )
);



/// A/-A
Two_sComp#(
    .NumBits(OutNumBits)
) u_core_1_Two_sComp(
    .In  (Core1_I_2sComp_O_Mux_2A_A  ),
    .Out (Core1_I_MUX_POS_NEG_O_2sComp_2A_A )
);


N_bit_MUX #(
    .InWidth(OutNumBits)
)u_core_1_N_bit_MUX_POS_NEG(
    .IN_True  (Core1_I_MUX_POS_NEG_O_2sComp_2A_A  ),
    .IN_False ( Core1_I_2sComp_O_Mux_2A_A),
    .sel      (Core1_I_mux_Neg_O_CTRL_UNIT_MUL_E0),
    .Out      (Core1_I_Mux_zero_A_O_Mux_POS_Neg      )
);

// A /0 
N_bit_MUX #(
    .InWidth(OutNumBits)
)u_core_1_N_bit_MUX_zero_x(
    .IN_True  (Core1_I_Mux_zero_A_O_Mux_POS_Neg  ),
    .IN_False ( 64'b0),
    .sel      (Core1_I_mux_No0_O_CTRL_UNIT_MUL_E2),
    .Out      (Core1_I_Adder_O_Mux_Zero_A     )
);





wire [OutNumBits-1:0] Core1_I_Adder_O_VarLShi_A ;
wire [OutNumBits-1:0] Core1_I_Adder_FeedBack_A ;


VariableLeftShifter #(
    .NumBits(OutNumBits),
    .CounterNumBits(CounterNumBits) 
)
 u_VariableLeftShifter(
    .clk        (clk        ),
    .rst        (rst        ),
    .Enable     (Enable     ),
    .I_SoftRst  (Softrst  ),
    .I_Data     (Core1_I_Adder_O_Mux_Zero_A     ),
    .CounterReg (CounterReg ),
    .O_Data     (Core1_I_Adder_O_VarLShi_A     )
);



Adder #(
.In1_NumBits(OutNumBits),
.In2_NumBits(OutNumBits),
.Out_NumBits(OutNumBits)
)u_core_1_Adder(
    .I_IN1     (Core1_I_Adder_O_VarLShi_A     ),
    .I_IN2     (Core1_I_Adder_FeedBack_A     ),
    .clk       (clk       ),
    .rst       (rst       ),
    .I_SoftRst (Softrst ),
    .Enable    (Enable    ),
    .O_AdderOut (Core1_I_Adder_FeedBack_A  )
);



Right_Shifter #(
.NumShifts ('d2),
.NumBits (OutNumBits)
)u_core_1_Right_Shifter(
    .In  (Core1_I_RightShfter_O_Acc  ),
    .out (Core1_I_Adder_O_RightShfter )
);



Var_Shift_Reg #(
.Shift_Reg_Length ('d16),
.Num_Shift_by_Cycle(Radix)

)u_core_1_Var_Shift_Reg(
    .In        (Core1_I_RightShfter_O_Acc[1:0]          ),
    .clk       (clk       ),
    .rst       (rst       ),
    .I_SoftRst (Softrst ),
    .Enable    (Enable    ),
    .Out_Reg   (Core1_I_Final_Adder_O_VarRightShfter   )
);


// ============== Core 2 =============

/// ======================  Core 1================================= 

//2A/A
left_Shifter #(
    .NumShifts('d1),
    .NumBits (OutNumBits)
)u_core_2__left_Shifter(
    .In  ({{'d32{1'b0}},A}),
    .out (Core2_I_Mux_2A_A_O_left_Shifter_2A )
);


N_bit_MUX #(
    .InWidth(OutNumBits)
)u_core_2__N_bit_MUX_2A_A(
    .IN_True  (Core2_I_Mux_2A_A_O_left_Shifter_2A  ),
    .IN_False ( {{'d32{1'b0}},A}),
    .sel      (Core2_I_mux_2A_O_CTRL_UNIT_MUL_E1 ),
    .Out      (Core2_I_2sComp_O_Mux_2A_A      )
);



/// A/-A
Two_sComp#(
    .NumBits(OutNumBits)
) u_core_2__Two_sComp(
    .In  (Core2_I_2sComp_O_Mux_2A_A  ),
    .Out (Core2_I_MUX_POS_NEG_O_2sComp_2A_A )
);


N_bit_MUX #(
    .InWidth(OutNumBits)
)u_core_2__N_bit_MUX_POS_NEG(
    .IN_True  (Core2_I_MUX_POS_NEG_O_2sComp_2A_A  ),
    .IN_False (Core2_I_2sComp_O_Mux_2A_A),
    .sel      (Core2_I_mux_Neg_O_CTRL_UNIT_MUL_E0),
    .Out      (Core2_I_Mux_zero_A_O_Mux_POS_Neg      )
);

// A /0 
N_bit_MUX #(
    .InWidth(OutNumBits)
)u_core_2__N_bit_MUX_zero_x(
    .IN_True  (Core2_I_Mux_zero_A_O_Mux_POS_Neg  ),
    .IN_False (64'b0),
    .sel      (Core2_I_mux_No0_O_CTRL_UNIT_MUL_E2),
    .Out      (Core2_I_Adder_O_Mux_Zero_A    )
);


wire [OutNumBits-1:0] Core2_I_Adder_O_VarLShi_A ;
wire [OutNumBits-1:0] Core2_I_Adder_FeedBack_A ;

VariableLeftShifter #(
    .NumBits(OutNumBits),
    .CounterNumBits(CounterNumBits) 
)
 u2_VariableLeftShifter(
    .clk        (clk        ),
    .rst        (rst        ),
    .Enable     (Enable     ),
    .I_SoftRst  (Softrst  ),
    .I_Data     (Core2_I_Adder_O_Mux_Zero_A     ),
    .CounterReg (CounterReg ),
    .O_Data     (Core2_I_Adder_O_VarLShi_A     )
);


Adder #(
    .In1_NumBits(OutNumBits),
    .In2_NumBits(OutNumBits),
    .Out_NumBits(OutNumBits)
    )u_core_2__Adder(
    .I_IN1     (Core2_I_Adder_O_VarLShi_A     ),
    .I_IN2     (Core2_I_Adder_FeedBack_A     ),
    .clk       (clk       ),
    .rst       (rst       ),
    .I_SoftRst (Softrst ),
    .Enable    (Enable    ),
    .O_AdderOut  (Core2_I_Adder_FeedBack_A  )
);



Right_Shifter #(
.NumShifts ('d2),
.NumBits (OutNumBits)
)u_core_2__Right_Shifter(
    .In  (Core2_I_RightShfter_O_Acc  ),
    .out (Core2_I_Adder_O_RightShfter )
);


Var_Shift_Reg #(
.Shift_Reg_Length ('d16),
.Num_Shift_by_Cycle(Radix)

)u_core_2__Var_Shift_Reg(
    .In        (Core2_I_RightShfter_O_Acc[1:0]        ),
    .clk       (clk       ),
    .rst       (rst       ),
    .I_SoftRst (Softrst ),
    .Enable    (Enable    ),
    .Out_Reg   (Core2_I_Final_Adder_O_VarRightShfter   )
);


//=========== Final Adder ============

N_bit_MUX #(
    .InWidth('d64)
)u_Validation_IN1_MUX(
    .IN_True  (Core1_I_Adder_FeedBack_A  ),
    .IN_False (64'b0 ),
    .sel      (Valid      ),
    .Out      (Core1_I_Final_Adder_O_ValidMux      )
);



N_bit_MUX #(
    .InWidth('d64)
)u_Validation_IN2_MUX(
    .IN_True  ({Core2_I_Adder_FeedBack_A[OutNumBits-1-16:0],16'b0} ),
    .IN_False (64'b0 ),
    .sel      (Valid      ),
    .Out      (Core2_I_Final_Adder_O_ValidMux      )
);

//============== Bias =========
// For MSB of A Because it isn't Done by ModEncoder 
wire [OutNumBits-1:0] Bias;
N_bit_MUX #(
    .InWidth('d64)
)u_Bias_MUX(
    .IN_True  ({A,32'b0} ),
    .IN_False (64'b0 ),
    .sel      (B[NumBits-1]      ),
    .Out      (Bias      )
);


AdderPlusBias #(
    .In1_NumBits(2*NumBits),
    .In2_NumBits(2*NumBits),
    .Out_NumBits(2*NumBits)
) u_Final_Adder(
    .I_IN1      (Core1_I_Final_Adder_O_ValidMux      ),
    .I_IN2      (Core2_I_Final_Adder_O_ValidMux    ),
    .clk        (clk        ),
    .rst        (rst        ),
    .Bias       (Bias       ),
    .I_SoftRst  (I_SoftRst  ),
    .Enable     (Enable     ),
    .O_AdderOut (in_Result )
);



Delay#(
    .NumDelayCycle(1'd1)
) u_Delay(
    .in  (Valid & |(Core1_I_Final_Adder_O_ValidMux) ), //~|() For Supress 1st Cycle
    .clk (clk ),
    .rst (rst ),
    .out (MulValid )
);



N_bit_MUX #(
    .InWidth('d64)
)u_Validation_Result_MUX(
    .IN_True  (in_Result ),
    .IN_False (64'b0 ),
    .sel      (MulValid      ),
    .Out      (Result      )
);



// TODO REMOVE After Testing

integer Resfile_out_id;
initial Resfile_out_id= $fopen("Result_out.txt","w"); 

always @(posedge MulValid ) 
begin
    if (MulValid) 
    begin
        $fwrite(Resfile_out_id,"%0d\n",u_Final_Adder.O_AdderOut);
    end
end

    
endmodule