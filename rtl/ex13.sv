module ex13(output logic [2:0] q, input logic [4:0] a);
    always_comb begin
        q = 0 + a[0] + a[1] + a[2] + a[3] + a[4];
    end
endmodule
