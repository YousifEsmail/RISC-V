module CTRL_UNIT_MUL #(
    parameter   NumBits=32,
                NumPartialProducts=16,
                NumMulCore=2,
                No_PP_in_Core=NumPartialProducts/NumMulCore

) ( 
        input   wire                     Enable_MUL,
        input   wire                     clk,
        input   wire                     rst,
        input   wire                     I_Load,
        input   wire                     I_Counter_SoftRst ,
        input   wire [NumPartialProducts-1:0] I_E0,
        input   wire [NumPartialProducts-1:0] I_E1,
        input   wire [NumPartialProducts-1:0] I_E2,
        output  wire O_Core1_E0,
        output  wire O_Core1_E1,
        output  wire O_Core1_E2,
        output  wire O_Core2_E0,
        output  wire O_Core2_E1,
        output  wire O_Core2_E2,
        output  wire Valid 
        
);

// Interrnals 
wire O_Finsih;
localparam CounterNumBits =$clog2(NumPartialProducts) ;

Mul_Core_CTRL u_LSB_Mul_Core_CTRL(
    .I_E0   (I_E0[No_PP_in_Core-1:0]   ),
    .I_E1   (I_E1[No_PP_in_Core-1:0]   ),
    .I_E2   (I_E2[No_PP_in_Core-1:0]   ),
    .I_Load (I_Load ),
    .Enable (!O_Finsih ),
    .clk    (clk    ),
    .rst    (rst    ),
    .O_E0   (O_Core1_E0   ),
    .O_E1   (O_Core1_E1   ),
    .O_E2   (O_Core1_E2   )
);





Mul_Core_CTRL u_MSB_Mul_Core_CTRL(
    .I_E0   (I_E0[NumPartialProducts-1:No_PP_in_Core]   ),
    .I_E1   (I_E1[NumPartialProducts-1:No_PP_in_Core]   ),
    .I_E2   (I_E2[NumPartialProducts-1:No_PP_in_Core]   ),
    .I_Load (I_Load ),
    .Enable (!O_Finsih ),
    .clk    (clk    ),
    .rst    (rst    ),
    .O_E0   (O_Core2_E0   ),
    .O_E1   (O_Core2_E1   ),
    .O_E2   (O_Core2_E2   )
);

Counter #(
    .NumBits (CounterNumBits)
)
u_Counter(
    .clk       (clk       ),
    .rst       (rst       ),
    .Enable    (Enable_MUL    ),
    .I_seed    (4'd8    ),
    .I_SoftRst (I_Counter_SoftRst ),
    .I_Load    (I_Load    ),
    .O_Finsih  (O_Finsih  )
);


Delay#(
    .NumDelayCycle(1'd1)
) u_Delay(
    .in  (O_Finsih  ),
    .clk (clk ),
    .rst (rst ),
    .out (Valid )
);



    
endmodule