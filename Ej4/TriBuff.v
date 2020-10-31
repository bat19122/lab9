module TriBuff(en, clk, rst, In, Ou);
input wire en;
input wire clk;
input wire rst;
input wire [3:0] In;
output reg Ou;

always @(posedge clk) begin
    if (rst == 1) begin
      Ou <= 0;
    end else if (rst == 0) begin
      if (en == 0) begin
        Ou <= 0;
      end else if (en == 1) begin
        if (In <= 4'd4) begin
          Ou <= 0;
        end else if (In <= 4'd9) begin
          Ou <= 1;
        end else if (In <= 4'd15) begin
          Ou <='bz;
        end
      end
    end
  end


endmodule
