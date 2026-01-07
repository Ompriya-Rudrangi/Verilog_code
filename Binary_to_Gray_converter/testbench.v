module tb;
reg [3:0] b;
wire [3:0]g;

binary_gray b2g(b,g);
initial begin

$monitor("b=%b--->g=%b",b,g);
b=4'b1010;
#1;
b=4'b1001;
#1;
end
endmodule 
