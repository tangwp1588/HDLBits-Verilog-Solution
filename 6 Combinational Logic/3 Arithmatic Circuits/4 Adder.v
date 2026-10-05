module top_module (
    input [3:0] x,
    input [3:0] y, 
    output [4:0] sum);

    wire [3:0] cout;
    wire [4:0] carryin = {cout,'0};
    genvar i;
    generate
        for(i=0;i<=3;i=i+1) begin : adder_loop
            fadd1 Add (x[i], y[i], carryin[i], sum[i] ,cout[i]);
        end
    endgenerate
    assign sum[4] = cout[3];
endmodule

module fadd1(
    input a,b,cin,
    output sum,cout);
    
    assign sum = a^b^cin;
    assign cout = (a&b) | cin&(a+b);
endmodule
