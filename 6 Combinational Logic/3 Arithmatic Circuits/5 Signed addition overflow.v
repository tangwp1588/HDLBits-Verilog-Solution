module top_module (
    input [7:0] a,
    input [7:0] b,
    output [7:0] s,
    output overflow
);
    wire [8:0] result = a + b;
    assign s = result[7:0];
    //assign overflow = (a[7] != b[7]) ? '0 :
     //   (a[7] ~^ s[7]) ? '0 : 1'b1;
	assign overflow = (a[7] == b[7]) & (a[7] != s[7]);
endmodule

