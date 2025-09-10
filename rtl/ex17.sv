module ex17(
    output logic q,
    input logic enable,
    input logic clk,
    input logic d
);
    logic qr;

    always_ff @(posedge clk) begin
        if (enable)
            qr <= d;
    end

    assign q = qr;
endmodule
