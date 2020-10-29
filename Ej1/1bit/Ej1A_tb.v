
module Ej1A_tb();
reg D;
reg clk;
reg rst;
reg en;
wire Q;

Ej1A U1(D,clk,Q,rst,en);

always begin
clk = 1;
#1 clk<=~clk;
end
initial begin
$display("Clk1bit");
    $display("rst en clk | D Q");
    $display("------------------------------");
    $monitor("%b %b %b | %b %b", rst, en, clk, D, Q);
  end
initial begin
 rst=1; en = 0;
 D <= 0;
 #5;
 D <= 1;
 #5;
 en = 1;
 D <= 0;
 #5;
 D <= 1;
 #5
 rst=0; en = 0;
 D <= 0;
 #5;
 D <= 1;
 #5;
 en = 1;
 D <= 0;
 #5;
 D <= 1;
end



initial
    #40 $finish;
  initial begin
    $dumpfile("Ej1A_tb.vcd");
    $dumpvars(0,Ej1A_tb);
  end
endmodule
