module ex1(output logic q, input logic a, input logic b);
    assign q = (a & ~b) | (~a & b);
endmodule
