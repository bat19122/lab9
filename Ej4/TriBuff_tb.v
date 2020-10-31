module TriBuff_tb();

  reg en;
  reg clk;
  reg rst;
  reg [3:0] In;
  wire [3:0] Ou;
  TriBuff T1(en, clk, rst, In, Ou);

  always begin
    clk = 1;
    #1 clk<=~clk;
  end

  initial begin
    $display("TriState Buffer (4 bit)");
    $display("rst en clk | In | Ou");
    $display("------------------------------");
    $monitor("%b %b %b | %b | %b", rst, en, clk, In, Ou);
  end

  initial begin
    rst = 1; en = 0; In <= 4'd0;
    #5 In <= 4'd1;
    #5 In <= 4'd2;
    #5 In <= 4'd3;
    #5 In <= 4'd4;
    #5 In <= 4'd5;
    #5 In <= 4'd6;
    #5 In <= 4'd7;
    #5 In <= 4'd8;
    #5 In <= 4'd9;
    #5 In <= 4'd10;
    #5 In <= 4'd11;
    #5 In <= 4'd12;
    #5 In <= 4'd13;
    #5 In <= 4'd14;
    #5 In <= 4'd15;
    #5 en = 1; In <= 4'd0;
    #5 In <= 4'd1;
    #5 In <= 4'd2;
    #5 In <= 4'd3;
    #5 In <= 4'd4;
    #5 In <= 4'd5;
    #5 In <= 4'd6;
    #5 In <= 4'd7;
    #5 In <= 4'd8;
    #5 In <= 4'd9;
    #5 In <= 4'd10;
    #5 In <= 4'd11;
    #5 In <= 4'd12;
    #5 In <= 4'd13;
    #5 In <= 4'd14;
    #5 In <= 4'd15;
    rst = 0; en = 0; In <= 4'd0;
    #5 In <= 4'd1;
    #5 In <= 4'd2;
    #5 In <= 4'd3;
    #5 In <= 4'd4;
    #5 In <= 4'd5;
    #5 In <= 4'd6;
    #5 In <= 4'd7;
    #5 In <= 4'd8;
    #5 In <= 4'd9;
    #5 In <= 4'd10;
    #5 In <= 4'd11;
    #5 In <= 4'd12;
    #5 In <= 4'd13;
    #5 In <= 4'd14;
    #5 In <= 4'd15;
    #5 en = 1; In <= 4'd0;
    #5 In <= 4'd1;
    #5 In <= 4'd2;
    #5 In <= 4'd3;
    #5 In <= 4'd4;
    #5 In <= 4'd5;
    #5 In <= 4'd6;
    #5 In <= 4'd7;
    #5 In <= 4'd8;
    #5 In <= 4'd9;
    #5 In <= 4'd10;
    #5 In <= 4'd11;
    #5 In <= 4'd12;
    #5 In <= 4'd13;
    #5 In <= 4'd14;
    #5 In <= 4'd15;
  end

  initial
      #320 $finish;
    initial begin
      $dumpfile("TriBuff_tb.vcd");
      $dumpvars(0,TriBuff_tb);
    end


endmodule
