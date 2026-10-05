module top_module( 
    input [399:0] a, b,
    input cin,
    output cout,
    output [399:0] sum );

    wire [99:-1] carry;
    assign carry[-1] = cin;
    genvar i;
    generate
        for (i=0;i<=99;i=i+1) begin : adders
            bcd_fadd inst1 (
                .a(a[(i+1)*4 - 1:i*4]),
                .b(b[(i+1)*4 - 1:i*4]),
                .cin(carry[i-1]),
                .cout(carry[i]),
                .sum(sum[(i+1)*4 - 1:i*4])
            );
		end
	endgenerate
    assign cout = carry[99];
endmodule

