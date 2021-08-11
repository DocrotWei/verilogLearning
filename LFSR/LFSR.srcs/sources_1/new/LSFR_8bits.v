
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/08/11 10:21:03
// Design Name: 
// Module Name: LSFR_8bits
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module LSFR_8bits(
input CLK,
input rst,
input enable,

output[7: 0] d_o,
    );
    reg [7:0] LSFR_8 = 8'h00;

    always @(posedge CLK)
        if(rst)
            LSFR_8 <= 8'h00;
        else if (enable) begin
            LSFR_8[7:1] <= LSFR_8[6:0];
            LSFR_8[0] <= ~^{LSFR_8[7], LSFR_8[5:3]};
        end
assdas
    assign d_o = LSFR_8;
endmodule
