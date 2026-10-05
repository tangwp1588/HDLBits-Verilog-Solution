module top_module (
    input [7:0] a, b, c, d,
    output [7:0] min);//

    // assign intermediate_result1 = compare? true: false;
    wire [7:0] temp_1 = (a < b) ? a : b;
    wire [7:0] temp_2 = (c < d) ? c : d;
    assign min = (temp_1 < temp_2) ? temp_1 : temp_2;
    /*
    reg [7:0] intermediate;
    always @(*) begin
        intermediate = (a < b) ? a : b;
    	intermediate = (intermediate < c) ? intermediate : c;
        min = (intermediate < d)? intermediate : d;       
    end
    */
endmodule

