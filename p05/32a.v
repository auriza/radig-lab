module soal32a(F, A, B, C, D);
    input   A, B, C, D;
    output  F;

    assign  F = (C&D | B)&A | B&~C;
endmodule

module soal32a_test;
    reg     A, B, C, D;
    wire    Y;
    soal32a test(Y, A, B, C, D);

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
