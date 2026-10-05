module top_module (
    input [4:0] a, b, c, d, e, f,
    output [7:0] w, x, y, z );//

    // assign { ... } = { ... };
    wire [31:0]vector_in = {a,b,c,d,e,f,2'b11};
    assign w = vector_in[31:24];
    assign x = vector_in[23:16];
    assign y = vector_in[15:8];
    assign z = vector_in[7:0];
endmodule

