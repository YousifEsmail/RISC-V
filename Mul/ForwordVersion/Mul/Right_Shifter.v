module Right_Shifter #(
    parameter   NumShifts='d2,
                NumBits='d16
) (
    input    wire signed [NumBits-1:0] In ,
    output   wire signed [NumBits-1:0] out
);
    

    assign out = In >>>NumShifts;
endmodule