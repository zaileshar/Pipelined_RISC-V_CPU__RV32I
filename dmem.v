// Data Memory (RAM)
module dmem (
    input  wire clk, we,
    input  wire [31:0] a, wd,
    output wire [31:0] rd
);
    reg [31:0] ram[63:0];
    
    // Read combinationally
    assign rd = ram[a[31:2]];
    
    // Write synchronously
    always @(posedge clk) begin
        if (we)
            ram[a[31:2]] <= wd;
    end
endmodule
