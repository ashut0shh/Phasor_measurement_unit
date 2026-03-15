
module rocof(
    input  wire clk,
    input  wire signed [31:0] freq_in,
    input  wire valid_in,

    output reg signed [31:0] rocof_out,
    output reg valid_out
);

reg signed [31:0] freq_prev = 0;

always @(posedge clk) begin
    if(valid_in) begin
        // difference between consecutive frequency samples
        rocof_out <= freq_in - freq_prev;

        // store previous frequency
        freq_prev <= freq_in;

        valid_out <= 1'b1;
    end
    else begin
        valid_out <= 1'b0;
    end
end

endmodule