module ex7(output logic q, input logic [1:0] a, input logic b);
    always_comb begin
        if (a[1])
            q = b;
        else if (a[0])
            q = ~b;
    end
endmodule
