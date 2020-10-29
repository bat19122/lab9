module Ej12bit(D,clk,Q,rst,en);
input wire [1:0] D;
input wire clk;
input wire rst;
input wire en;
output reg [1:0] Q;
always @(posedge clk)
begin
  if (rst == 1) begin
    Q <= 2'b00;
  end else if (rst == 0) begin
    if (en == 0) begin
      Q <= 2'b00;
    end else if (en == 1) begin
      Q <= D;
    end
  end
end
endmodule
