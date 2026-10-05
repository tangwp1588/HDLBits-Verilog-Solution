module top_module ( input [1:0] A, input [1:0] B, output z ); 

    wire temp_1 = A[1] ~^ B[1];
    wire temp_2 = A[0] ~^ B[0];
    assign z = temp_1&temp_2;
endmodule

