module VariableLeftShifter #(
    parameter   NumBits=64,
                CounterNumBits=4
) (
    input   wire clk,
    input   wire rst,
    input   wire Enable,
    input   wire I_SoftRst ,
    input   wire [NumBits-1:0] I_Data , 
    input   wire [CounterNumBits-1:0] CounterReg,
    output   reg [NumBits-1:0] O_Data 
);



always @(posedge clk or negedge rst) 
begin
    if(!rst)
        begin
            O_Data<='b0;
        end
    else if (!I_SoftRst)
        begin
            O_Data<='b0;
        end
    else if (Enable)
        begin
           case (CounterReg)
            'b1000:
            begin
                O_Data<=I_Data; 
            end
            'b0111:
            begin
                O_Data<=(I_Data<<'d2);
            end
            'b0110:
            begin
                O_Data<=(I_Data<<'d4);
            end
            'b0101:
            begin
                O_Data<=(I_Data<<'d6);
            end
            'b0100:
            begin
                O_Data<=(I_Data<<'d8);
            end
            'b0011:
            begin
                O_Data<=(I_Data<<'d10);
            end
            'b0010:
            begin
                O_Data<=(I_Data<<'d12);
            end
            'b0001:
            begin
                O_Data<=(I_Data<<'d14);
            end 
            default: O_Data<='b0;
           endcase
        end
    
end

    
endmodule