module carry_logic(
    input  a, b, cin,
    output s, cout
);
    wire p = a ^ b;
    wire g = a & b;

    assign s    = p ^ cin;
    assign cout = g | (p & cin);
endmodule


module cla_4bit(
    input  [3:0] a, b,
    input        cin,
    output [3:0] sum,
    output       cout
);
    wire [3:0] c;

    // carry generation
    assign c[0] = cin;
    assign c[1] = (a[0] & b[0]) | ((a[0] ^ b[0]) & c[0]);
    assign c[2] = (a[1] & b[1]) | ((a[1] ^ b[1]) & c[1]);
    assign c[3] = (a[2] & b[2]) | ((a[2] ^ b[2]) & c[2]);
    assign cout = (a[3] & b[3]) | ((a[3] ^ b[3]) & c[3]);

    // sum
    assign sum[0] = a[0] ^ b[0] ^ c[0];
    assign sum[1] = a[1] ^ b[1] ^ c[1];
    assign sum[2] = a[2] ^ b[2] ^ c[2];
    assign sum[3] = a[3] ^ b[3] ^ c[3];
endmodule
