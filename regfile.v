// Register File (32x32) with 2 read ports and 1 write port
module regfile #(parameter DATA_WIDTH = 32, parameter ADDR_WIDTH = 5) (
    input  wire clk,
    input  wire we3,
    input  wire [ADDR_WIDTH-1:0] ra1, ra2, wa3,
    input  wire [DATA_WIDTH-1:0] wd3,
    output wire [DATA_WIDTH-1:0] rd1, rd2
);
    reg [DATA_WIDTH-1:0] rf[31:0];
    
    always @(posedge clk) begin
        if (we3 && wa3 != 0) 
            rf[wa3] <= wd3;
    end
    
    // Register 0 is hardwired to 0
    assign rd1 = (ra1 != 0) ? rf[ra1] : 0;
    assign rd2 = (ra2 != 0) ? rf[ra2] : 0;
endmodule
