module ex18(
    input wire clk,
    input wire reset,
    output logic q,
    output logic sync
);
    localparam Sidle = 0, S0 = 1, S1 = 2;

    logic [1:0] state, state_next;
    logic d, d_next;

    always_ff @(posedge clk or posedge reset) begin
        if (reset) begin
            d <= 1'b0;
            state <= Sidle;
        end else begin
            d <= d_next;
            state <= state_next;
        end
    end

    logic syncvar;
    logic qvar;

    assign q = qvar;
    assign sync = syncvar;

    always_comb begin
        syncvar = 1'b0;
        qvar = 1'b0;

        d_next = d + 1;
        state_next = state;

        case (state)
            Sidle: begin
                state_next = S0;
            end
            S0: begin
                syncvar = 1'b1;
                qvar = d;
                state_next = S1;
            end
            S1: begin
                syncvar = 1'b0;
                state_next = Sidle;
            end
            default: begin
                state_next = Sidle;
            end
        endcase
    end
endmodule
