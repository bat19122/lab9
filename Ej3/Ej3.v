module Ej3(J,K,clk,Q,rst,en);
input wire J;
input wire K;
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
      if(J == 0)begin
        if (K == 0) begin
          Q<=Q;
        end else if(K == 1)begin
          Q<=0;
        end
      end else if(J == 1)begin
        if(K == 0)begin
          Q<=1;
        end else if(K == 1)begin
          Q<=~Q;
        end
      end        
    end
  end
end
endmodule
