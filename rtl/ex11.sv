module ex11(output logic [2:0] q, input logic [4:0] a);
    logic [2:0] tmp;
    integer i;

    always_comb begin
        tmp = 0;
        for (i = 0; i < 5; i = i + 1)
            tmp = tmp + a[i];
        q = tmp;
    end
endmodule
