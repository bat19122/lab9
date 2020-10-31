module TriBuff(en, clk, rst, In, Ou);
input wire en;
input wire clk;
input wire rst;
input wire [3:0] In;
output reg [3:0]Ou;

always @(posedge clk) begin
    if (rst == 1) begin
      Ou <= 0;
    end else if (rst == 0) begin
      if (en == 0) begin
        Ou <= 4'bzzzz;
      end else if (en == 1) begin
        Ou <= In;
      end
    end
  end


endmodule
