module left_Shifter #(
    parameter   NumShifts=2,
                NumBits=16
) (
    input    wire signed [NumBits-1:0] In ,
    output   wire signed [NumBits-1:0] out
);
    

    assign out = In <<NumShifts;
endmodule