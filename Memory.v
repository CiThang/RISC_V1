module Memory (
    input clk, we,
    input  [31:0] addr, wd,
    output [31:0] rd
);
    reg [31:0] mem [255:0];

    always @(posedge clk) begin
        if (we)
            mem[addr >> 2] <= wd; // Ghi dữ liệu vào bộ nhớ
    end

    assign rd = mem[addr >> 2]; // Đọc dữ liệu từ bộ nhớ
endmodule
