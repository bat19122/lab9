module Ej2(clk,Q,rst,en);
input wire clk;
input wire rst;
input wire en;
output reg Q;
initial Q = 0;
always @(posedge clk)
begin
  if (rst == 1) begin
    Q <= 0;
  end else if (rst == 0) begin
    if (en == 0) begin
      Q <= 0;
    end else if (en == 1) begin
      Q <= ~Q;
    end
  end
end
endmodule
