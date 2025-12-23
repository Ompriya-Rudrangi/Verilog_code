module full_sub(input a,b,c, output d,b0);

assign d=a^b^c;
assign b0=~a&b | ~a&c | b&c ;

endmodule
