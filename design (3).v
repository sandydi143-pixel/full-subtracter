module half_subtractor(
    input x,
    input y,
    output diff,
    output borrow
);
    assign diff = x ^ y;
    assign borrow = (~x) & y;
endmodule

module full_subtractor(
    input a,
    input b,
    input bin,
    output diff,
    output bout
);
    wire d1, b1, b2;

    half_subtractor h1(a,b,d1,b1);
    half_subtractor h2(d1,bin,diff,b2);

    or g1(bout,b1,b2);
endmodule

