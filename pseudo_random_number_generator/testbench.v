module tb;
  reg clk,rst ;
  wire [3:0] q;
  lfsr dut(clk,rst,q);
initial begin
clk =0;
rst=1;
#50 rst=0;
#100 $finish;
end 
always   #2 clk =~clk;
initial begin
$monitor ("q =%b",q);
#50;
$dumpfile("dump.vcd"); $dumpvars;
end
endmodule 
