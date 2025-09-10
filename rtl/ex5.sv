module ex5(output logic q, input logic a);
    initial q = 1;
    always_comb begin
        q = ~a;
    end
endmodule
