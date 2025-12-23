module tb;

reg a,b,c;
wire d,b0;

  full_sub fs(.a(a),.b(b),.c(c),.d(d),.b0(b0));

initial begin
  $monitor("a=%b,b=%b,c=%b--,d=%b,b0=%b",a,b,c,d,b0);

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
