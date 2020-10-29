module Ej1A(D,clk,Q,rst,en);
input wire D;
input wire clk;
input wire rst;
input wire en;
output reg Q;
always @(posedge clk)
begin
  if (rst == 1) begin
    Q <= 0;
  end else if (rst == 0) begin
    if (en == 0) begin
      Q <= 0;
    end else if (en == 1) begin
      Q <= D;
    end
  end
end
endmodule
