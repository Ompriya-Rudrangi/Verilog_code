module universal_s_reg(input rest_n,clk,
                       input [1:0] sel ,
           input s_right,s_left,
           input  [3:0] p_in,
           output   s_right_out,s_left_out,
           output reg [3:0] p_out);

  always @(posedge clk) begin
    if (!rest_n) p_out <= 0;
else begin 
  case(sel)
    2'h1 :p_out <= {s_right,p_out[3:1]};
    2'h2 :p_out <= {p_out[2:0],s_left};
    2'h3 :p_out <=  p_in ;
    default : p_out <= p_out;
  endcase
end
  end
  
  assign s_right_out = p_out[3] ;
  assign s_left_out  = p_out[0];
endmodule 

