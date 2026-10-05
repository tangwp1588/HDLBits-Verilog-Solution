`default_nettype none
module top_module(
    input a,
    input b,
    input c,
    input d,
    output out,
    output out_n   ); 

    wire and1_in;
    wire and2_in;
    wire or_in;
    
    assign and1_in = a & b;
    assign and2_in = c & d;
    assign or_in = and1_in | and2_in;
    assign out = or_in;
    assign out_n = ~or_in;
endmodule
