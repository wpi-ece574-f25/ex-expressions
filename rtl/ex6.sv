module ex6(output logic q, input logic a, b);
    logic t;

    always @(a) begin
        t = a ^ 1;
        q = b ^ t;
    end
endmodule
