module ex20(
    output logic q,
    input logic i,
    input logic clk,
    input logic reset
);
    logic rq;

    logic [1:0] state, state_next;

    localparam s0 = 2'b00, s1 = 2'b01, s2 = 2'b10;

    always_ff @(posedge clk or posedge reset) begin
        if (reset)
            state <= s0;
        else
            state <= state_next;
    end

    always_comb begin
        state_next = s0;
        rq = 1'b0;
        case (state)
            s0: begin
                rq = 1'b0;
                if (i == 1'b1)
                    state_next = s1;
                else
                    state_next = s0;
            end
            s1: begin
                rq = 1'b1;
                if (i == 1'b1)
                    state_next = s2;
                else
                    state_next = s0;
            end
            s2: begin
                rq = 1'b0;
                if (i == 1'b1)
                    state_next = s2;
                else
                    state_next = s0;
            end
        endcase
    end

    assign q = rq;
endmodule
