module top_module( 
    input [99:0] in,
    output [99:0] out
);

    integer i;
    parameter p = 99;
    always @(*) begin
        for(i = 0; i <= p; i = i + 1) out[i] = in[p-i];
    end
endmodule

