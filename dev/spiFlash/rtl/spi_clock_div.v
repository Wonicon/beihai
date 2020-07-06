module spi_clock_div 
#(
parameter N = 2,
parameter WIDTH = 7
)

(
    input clk,
    input rst,              //low effective
    output reg clk_out
);

reg [WIDTH:0]counter;

always @(posedge clk ) begin
	if (!rst) begin
		counter <= 0;
	end
	else if (counter == N-1) begin
		counter <= 0;
	end
	else begin
		counter <= counter + 1;
	end
end

always @(posedge clk ) begin
	if (!rst) begin
		clk_out <= 0;
	end
	else if (counter == N-1) begin
		clk_out <= !clk_out;
	end
end

endmodule
