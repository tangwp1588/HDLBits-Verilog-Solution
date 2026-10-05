module top_module (
    input c,
    input d,
    output [3:0] mux_in
); 

    mux2to1 m1 (c, d, 1'b1, mux_in[0]);
    mux2to1 m2 (1'b0, 1'b0, 1'b0, mux_in[1]);
    mux2to1 m4 (c, 1'b0, d,mux_in[3]);
    mux2to1 m3 (d, 1'b1, 1'b0, mux_in[2]);
    
endmodule

module mux2to1 (
    input S, I0, I1,
    output Y
);
    assign Y = (~S & I0) | (S & I1);
endmodule
