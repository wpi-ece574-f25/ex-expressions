module ex21(
    output logic q,
    input logic i,
    input logic clk,
    input logic reset
);
    logic [1:0] state, state_next;

    localparam s0 = 2'b00, s1 = 2'b01, s2 = 2'b10;

    always_ff @(posedge clk or posedge reset) begin
        if (reset)
            state <= s0;
        else begin
            state <= s0;
            case (state)
                s0: begin
                    if (i == 1'b1)
                        state <= s1;
                    else
                        state <= s0;
                end
                s1: begin
                    if (i == 1'b1)
                        state <= s2;
                    else
                        state <= s0;
                end
                s2: begin
                    if (i == 1'b1)
                        state <= s2;
                    else
                        state <= s0;
                end
            endcase
        end
    end

    assign q = (state == s1);
endmodule

