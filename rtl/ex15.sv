module ex15(
    input logic d,
    input logic reset,
    input logic clk,
    output logic q1,
    output logic q2
);
    logic q1r, q2r;

    always_ff @(posedge clk) begin
        if (reset) begin
            q1r <= 1'b0;
            q2r <= 1'b0;
        end else begin
            q1r <= q2r;
            q2r <= q1r ^ d;
        end
    end

    assign q1 = q1r;
    assign q2 = q2r;
endmodule
