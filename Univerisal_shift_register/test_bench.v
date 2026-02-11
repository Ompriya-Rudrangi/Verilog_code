module tb;
  reg rest_n,clk;
  reg [1:0] sel;
reg s_right ,s_left;
  reg [3:0]p_in;
wire s_right_out ,s_left_out;
  wire [3:0] p_out;
 
 universal_s_reg usr(rest_n,clk,sel,s_right,s_left,p_in,s_right_out,s_left_out,p_out);
initial clk=0;
always #1 clk = ~ clk ;
initial begin 
  $monitor ("rest_n=%b, sel=%b, s_right=%b, s_left=%b, p_in=%b, s_right_out=%b, s_left_out=%b, p_out=%b",rest_n,sel,s_right,s_left,p_in,s_right_out,s_left_out,p_out);
#1;rest_n=0;#1;
rest_n=1;#1;
p_in=4'b1010;
s_right=1'b0;
s_left=1'b1;
sel=2'h1;#1;
sel=2'h2;#1;
sel=2'h3;#1;
sel=2'h0;#1;
$finish;
end
endmodule 
