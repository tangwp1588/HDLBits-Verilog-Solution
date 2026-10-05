module top_module (
    input [4:1] x, 
    output f );

    wire a = x[1];
    wire b = x[2];
    wire c = x[3];
    wire d = x[4];

    assign f = (~a&c) | (b&d);
endmodule

