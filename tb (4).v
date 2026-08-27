module tb_full_subtractor;
    reg a,b,bin;
    wire diff,bout;

    full_subtractor dut(a,b,bin,diff,bout);

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0,tb_full_subtractor);
        $monitor("a=%b b=%b bin=%b diff=%b bout=%b",
                  a,b,bin,diff,bout);
        {a,b,bin}=3'b000; #10;
        {a,b,bin}=3'b001; #10;
        {a,b,bin}=3'b010; #10;
        {a,b,bin}=3'b011; #10;
        {a,b,bin}=3'b100; #10;
        {a,b,bin}=3'b101; #10;
        {a,b,bin}=3'b110; #10;
        {a,b,bin}=3'b111; #10;

        $finish;
    end
endmodule