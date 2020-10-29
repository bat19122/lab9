module Ej2_tb();
reg clk;
reg rst;
reg en;
wire Q;

Ej2 U1(clk,Q,rst,en);

always begin
clk = 1;
#1 clk<=~clk;
end
initial begin
$display("Clk1bit");
    $display("rst en clk | Q");
    $display("------------------------------");
    $monitor("%b %b %b | %b", rst, en, clk, Q);
  end
initial begin
 rst=1; en = 0;
 #5;
 #5;
 en = 1;
 #5;
 #5
 rst=0; en = 0;
 #5;
 #5;
 en = 1;
 #5;
end



initial
    #40 $finish;
  initial begin
    $dumpfile("Ej2_tb.vcd");
    $dumpvars(0,Ej2_tb);
  end
endmodule
