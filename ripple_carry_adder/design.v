module full_adder(input a,b,c , output s_out,c_out);

assign s_out=a^b^c;
assign c_out= a&b | b&c | c&a ;

endmodule 

module ripple_adder(input [3:0]a,b ,
                   input c ,
                    output [3:0] s_out ,
                    output c4 );
wire c1,c2,c3;
  full_adder fa1(a[0],b[0],c,s_out[0],c1);
  full_adder fa2(a[1],b[1],c1,s_out[1],c2);
  full_adder fa3(a[2],b[2],c2,s_out[2],c3);
  full_adder fa4(a[3],b[3],c3,s_out[3],c4);
  //assign s_out=fa4.s3;
  //assign c_out=fa4(c4);

endmodule

