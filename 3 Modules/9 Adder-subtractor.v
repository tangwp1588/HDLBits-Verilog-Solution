module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
    wire carry;
	wire [31:0]b_processed = (sub == 1) ? ~b : b;
    add16 add16_1 (.a(a[15:0]), .b(b_processed[15:0]), .cin(sub), .sum(sum[15:0]), .cout(carry));
    add16 add16_2 (.a(a[31:16]), .b(b_processed[31:16]), .cin(carry), .sum(sum[31:16]), .cout());
    
endmodule

