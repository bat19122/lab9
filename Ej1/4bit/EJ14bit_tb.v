module EJ14bit_tb();
reg [3:0]D;
reg clk;
reg rst;
reg en;
wire [3:0]Q;

EJ14bit U1(D,clk,Q,rst,en);

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
 rst=1; en = 0; D <= 4'b0000;
 #5 D <= 4'b0001;
 #5 D <= 4'b10;
 #5 D <= 4'b11;
 #5 D <= 4'b100;
 #5 D <= 4'b101;
 #5 D <= 4'b110;
 #5 D <= 4'b111;
 #5 D <= 4'b1000;
 #5 D <= 4'b1001;
 #5 D <= 4'b1010;
 #5 D <= 4'b1011;
 #5 D <= 4'b1100;
 #5 D <= 4'b1101;
 #5 D <= 4'b1110;
 #5 D <= 4'b1111;
 #5 en = 1; D <= 4'b0000;
 #5 D <= 4'b0001;
 #5 D <= 4'b10;
 #5 D <= 4'b11;
 #5 D <= 4'b100;
 #5 D <= 4'b101;
 #5 D <= 4'b110;
 #5 D <= 4'b111;
 #5 D <= 4'b1000;
 #5 D <= 4'b1001;
 #5 D <= 4'b1010;
 #5 D <= 4'b1011;
 #5 D <= 4'b1100;
 #5 D <= 4'b1101;
 #5 D <= 4'b1110;
 #5 D <= 4'b1111;
 #5 rst=0; en = 0; D <= 4'b0000;
 #5 D <= 4'b0001;
 #5 D <= 4'b10;
 #5 D <= 4'b11;
 #5 D <= 4'b100;
 #5 D <= 4'b101;
 #5 D <= 4'b110;
 #5 D <= 4'b111;
 #5 D <= 4'b1000;
 #5 D <= 4'b1001;
 #5 D <= 4'b1010;
 #5 D <= 4'b1011;
 #5 D <= 4'b1100;
 #5 D <= 4'b1101;
 #5 D <= 4'b1110;
 #5 D <= 4'b1111;
 #5 en = 1; D <= 4'b0000;
 #5 D <= 4'b0001;
 #5 D <= 4'b10;
 #5 D <= 4'b11;
 #5 D <= 4'b100;
 #5 D <= 4'b101;
 #5 D <= 4'b110;
 #5 D <= 4'b111;
 #5 D <= 4'b1000;
 #5 D <= 4'b1001;
 #5 D <= 4'b1010;
 #5 D <= 4'b1011;
 #5 D <= 4'b1100;
 #5 D <= 4'b1101;
 #5 D <= 4'b1110;
 #5 D <= 4'b1111;

end



initial
    #320 $finish;
  initial begin
    $dumpfile("EJ14bit_tb.vcd");
    $dumpvars(0,EJ14bit_tb);
  end
endmodule
