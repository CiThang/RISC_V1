//Thanh ghi có 32 phần tử x0-x31, mỗi phần tử rộng 32 bit
module RegisterFile (
    input clk, we,
    input  [4:0] rs1, rs2, rd,
    input  [31:0] wd,
    output [31:0] rd1, rd2
);
    reg [31:0] regs [31:0];

    always @(posedge clk) begin
        if (we && rd != 0) 
            regs[rd] <= wd; // Ghi dữ liệu vào thanh ghi rd nếu we = 1
    end

    assign rd1 = regs[rs1]; // Đọc dữ liệu từ thanh ghi rs1
    assign rd2 = regs[rs2]; // Đọc dữ liệu từ thanh ghi rs2
endmodule
