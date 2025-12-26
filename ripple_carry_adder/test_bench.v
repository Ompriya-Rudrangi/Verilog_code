module tb;

  reg [3:0] a,b;
reg c;
  wire [3:0]s_out;
wire c4;

  ripple_adder ra(a,b,c,s_out,c4);

initial begin

c=0;
$monitor("a=%b,b=%b,c=%b,s_out=%b,carry=%b",a,b,c,s_out,c4);

a = 4'b0110;
b = 4'b1100;
#10
a = 4'b1110;
b = 4'b1000;
#10
a = 4'b0111;
b = 4'b1110;
#10
a = 4'b0010;
b = 4'b1001;
#10
$finish();
end
endmodule
