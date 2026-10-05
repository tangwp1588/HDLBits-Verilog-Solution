module add1 (
    input a,b,cin,
    output cout, sum);
    
    assign cout = (a&b) + (b&cin) + (cin&a);
    assign sum = a^b^cin;
endmodule

module top_module( 
    input [99:0] a, b,
    input cin,
    output [99:0] cout,
    output [99:0] sum );

    wire [100:0] carry = {cout,cin};
    genvar i;
    generate
        for (i=0;i<=99;i=i+1) begin : adder100
            add1 Add1 (
                .a(a[i]),
                .b(b[i]),
                .cin(carry[i]),
                .cout(cout[i]),
                .sum(sum[i])
            );
		end
	endgenerate                  
            
endmodule

