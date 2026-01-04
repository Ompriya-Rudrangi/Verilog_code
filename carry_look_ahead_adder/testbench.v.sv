module tb;
    reg [3:0] a, b;
    reg cin;
    wire [3:0] sum;
    wire cout;

    cla_4bit uut(a,b,cin,sum,cout);

    initial begin
        cin = 0;

        $monitor("a=%b b=%b cin=%b -> sum=%b cout=%b", a,b,cin,sum,cout);

        a = 4'b0110; b = 4'b0011; #10;
        a = 4'b1100; b = 4'b1010; #10;
        a = 4'b1111; b = 4'b0001; #10;
        a = 4'b1001; b = 4'b1001; #10;
        $finish;
    end
endmodule

