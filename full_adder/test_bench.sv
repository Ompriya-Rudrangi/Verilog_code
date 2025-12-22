module tb;

reg a,b,c;
wire s,c0;

  full_adder fa(.a(a),.b(b),.c(c),.s(s),.c0(c0));

initial begin
  $monitor("a=%b,b=%b,c=%b--,s=%b,c0=%b",a,b,c,s,c0);

a=0 ; b=0 ;c=0 ;
#1;
a=0 ; b=0 ;c=1 ;
#1;
a=0 ; b=1 ;c=0 ;
#1;
a=0 ; b=1 ;c=1 ;
#1;
a=1 ; b=0 ;c=0 ;
#1;
a=1 ; b=0 ;c=1 ;
#1;
a=1 ; b=1 ;c=0 ;
#1;
a=1 ; b=1 ;c=1 ;
#1;

end

  endmodule
