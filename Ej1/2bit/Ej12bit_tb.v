module Ej12bit_tb();
reg [1:0]D;
reg clk;
reg rst;
reg en;
wire [1:0]Q;

Ej12bit U1(D,clk,Q,rst,en);

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
 rst=1; en = 0; D <= 2'b00;
 #5 D <= 2'b01;
 #5 D <= 2'b10;
 #5 D <= 2'b11;
 #5 en = 1; D <= 2'b00;
 #5 D <= 2'b01;
 #5 D <= 2'b10;
 #5 D <= 2'b11;
 #5 rst=0; en = 0; D <= 2'b00;
 #5 D <= 2'b01;
 #5 D <= 2'b10;
 #5 D <= 2'b11;
 #5 en = 1; D <= 2'b00;
 #5 D <= 2'b01;
 #5 D <= 2'b10;
 #5 D <= 2'b11;
end



initial
    #80 $finish;
  initial begin
    $dumpfile("Ej12bit_tb.vcd");
    $dumpvars(0,Ej12bit_tb);
  end
endmodule
