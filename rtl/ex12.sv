module ex12(output logic [2:0] q, input logic [4:0] a);
    logic [2:0] tmp;
    integer i;

    always_comb begin
        tmp = 0;
        tmp = tmp + a[0];
        tmp = tmp + a[1];
        tmp = tmp + a[2];
        tmp = tmp + a[3];
        tmp = tmp + a[4];
        q = tmp;
    end
endmodule
