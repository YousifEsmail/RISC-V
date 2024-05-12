module Counter #(
    parameter NumBits=4
) (
    input   wire clk,
    input   rst,
    input   Enable,
    input   wire [NumBits-1:0] I_seed ,
    input   wire I_SoftRst ,
    input   wire I_Load, 
    output  wire O_Finsih
);


reg [NumBits-1:0] CounterReg;

always @(posedge clk or negedge rst) 
begin
    if(!rst)
        begin
            CounterReg<='b0;
        end
    else if (!I_SoftRst)
        begin
            CounterReg<='b0;
        end
    else if (I_Load || O_Finsih)
        begin
            CounterReg<=I_seed;
        end
    else if (Enable)
        begin
            CounterReg<=CounterReg-1'd1;
        end
    
end

assign O_Finsih= ~|(CounterReg);
    
endmodule