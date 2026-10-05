module top_module( 
    input [2:0] a, b,
    input cin,
    output [2:0] cout,
    output [2:0] sum );

    wire [3:0] carryin = {cout,cin};
    genvar i;
    generate
        for(i=0;i<3;i=i+1) begin : adder_loop
            fadd1 Add (a[i], b[i], carryin[i], sum[i] ,cout[i]);
        end
    endgenerate
endmodule

module fadd1(
    input a,b,cin,
    output sum,cout);
    
    assign sum = a^b^cin;
    assign cout = (a&b) | cin&(a+b);
endmodule

