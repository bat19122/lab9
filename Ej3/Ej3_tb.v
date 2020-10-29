module Ej3_tb();
reg J;
reg K;
reg clk;
reg rst;
reg en;
wire Q;

Ej3 U1(J,K,clk,Q,rst,en);

always begin
clk = 1;
#1 clk<=~clk;
end
initial begin
$display("JKFlipFlop");
    $display("rst en clk | J K | Q");
    $display("------------------------------");
    $monitor("%b %b %b | %b %b | %b", rst, en, clk, J, K,Q);
  end
initial begin
 rst=1; en = 0;
 J <= 0; K <= 0;
 #5;
 K <= 1;
 #5;
 J <= 1;  K <= 0;
 #5;
 K <= 1;
 #5;
 en = 1;
 J <= 0; K <= 0;
 #5;
 K <= 1;
 #5;
 J <= 1;  K <= 0;
 #5;
 K <= 1;
 #5;
 rst=0; en = 0;
 J <= 0; K <= 0;
 #5;
 K <= 1;
 #5;
 J <= 1;  K <= 0;
 #5;
 K <= 1;
 #5;
 en = 1;
 J <= 0; K <= 0;
 #5;
 K <= 1;
 #5;
 J <= 1;  K <= 0;
 #5;
 K <= 1;
end



initial
    #80 $finish;
  initial begin
    $dumpfile("Ej3_tb.vcd");
    $dumpvars(0,Ej3_tb);
  end
endmodule
