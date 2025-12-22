module tb;

reg a,b;
wire s,c;

  half_adder ha(.a(a),.b(b),.s(s),.c(c));

initial begin
a=0 ; b=0 ;
 #1 $display("a=%b,b=%b---s=%b,c=%b",a,b,s,c);
a=0 ; b=1;
  #1 $display("a=%b,b=%b---s=%b,c=%b",a,b,s,c);
a=1 ; b=0 ;
 #1 $display("a=%b,b=%b---s=%b,c=%b",a,b,s,c);
a=1 ; b=1;
  #1 $display("a=%b,b=%b---s=%b,c=%b",a,b,s,c);
end
endmodule 
