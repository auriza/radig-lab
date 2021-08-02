module and_(a, b, y);
    input   a, b;
    output  y';

    and     (y', a, b);
endmodule

module test();
    reg a, b;
    wire y;

    and_ x(a, b, y);

    initial begin
        $dumpfile("and.vcd");
        $dumpvars(1);

        $display("a b y");
        $display("-----");
        $monitor("%d %d %d", a, b, y);

            a = 0; b = 0;
        #1  a = 0; b = 1;
        #1  a = 1; b = 0;
        #1  a = 1; b = 1;
        #1  $finish;
    end
endmodule
