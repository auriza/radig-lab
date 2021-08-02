module soal31a(F, A, B, C, D);
    input   A, B, C, D;
    wire    w1, w2, w3, w4, C_;
    output  F;

    and     (w1, C, D);
    or      (w2, w1, B);
    and     (w3, w2, A);
    not     (C_, C);
    and     (w4, B, C_);
    or      (F, w3, w4);
endmodule

module soal31a_test;
    reg     A, B, C, D;
    wire    Y;
    soal31a test(Y, A, B, C, D);

    initial begin
        $dumpvars;
        $monitor("%d: %b %b %b %b | %b", $time, A, B, C, D, Y);
        A = 0; B = 0; C = 0; D = 0;
    #1                       D = 1;
    #1                C = 1; D = 0;
    #1                       D = 1;
    #1         B = 1; C = 0; D = 0;
    #1                       D = 1;
    #1                C = 1; D = 0;
    #1                       D = 1;
    #1  A = 1; B = 0; C = 0; D = 0;
    #1                       D = 1;
    #1                C = 1; D = 0;
    #1                       D = 1;
    #1         B = 1; C = 0; D = 0;
    #1                       D = 1;
    #1                C = 1; D = 0;
    #1                       D = 1;
    #1  $finish;
    end
endmodule
