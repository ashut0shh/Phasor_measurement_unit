module divider(
input clk,
input wire signed [17:0]sum,
input valid_adder,
output reg div_valid,
output reg signed [15:0] quotient);

always (@posedge clk)begin
	quotient<= sum>>>2;
	div_valid<=valid_adder;
	end 
	endmodule
	