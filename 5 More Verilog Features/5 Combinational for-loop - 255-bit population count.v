module top_module( 
    input [254:0] in,
    output [7:0] out );

    reg [7:0] count;
    integer i;
    parameter p = 254;
    always @(*) begin
        count = '0;
        for (i = 0; i <= p; i = i + 1) count = (in[i]) ? (count + 8'b1):count;
        out = count;
    end
endmodule

