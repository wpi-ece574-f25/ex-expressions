module ex10(output logic q, input logic [1:0] a, input logic b);
    always_comb begin
        case (a)
            1: q = ~b;
            2: q = b;
            default: q = 0;
        endcase
    end
endmodule
