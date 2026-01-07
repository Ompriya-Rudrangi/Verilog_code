module binary_gray #(parameter size=4)(input [size-1:0]b,
                                       output [size-1:0]g);

genvar i;
generate
for(i=0;i<size-1;i=i+1) begin
assign g[i]=b[i]^b[i+1];
end
endgenerate
assign g[size-1]=b[size-1];

endmodule 
