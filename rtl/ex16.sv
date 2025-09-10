module ex16(
    output logic q,
    input logic enable,
    input logic clk,
    input logic d
);
    logic qr;
    wire gatedclk;

    // An example of how NOT to gate a clock!
    assign gatedclk = clk & enable;

    always_ff @(posedge gatedclk) begin
        qr <= d;
    end

    assign q = qr;
endmodule
