//ALU thực hiện các phép toán như ADD, SUB, AND, OR, XOR, SLT
module ALU (
    input  [31:0] A, B,
    input  [3:0]  ALUOp,
    output reg [31:0] Result
);
    always @(*) begin
        case (ALUOp)
            4'b0000: Result = A + B;   // ADD
            4'b0001: Result = A - B;   // SUB
            4'b0010: Result = A & B;   // AND
            4'b0011: Result = A | B;   // OR
            4'b0100: Result = A ^ B;   // XOR
            4'b0101: Result = (A < B) ? 1 : 0;  // SLT (Set Less Than)
            default: Result = 0;
        endcase
    end
endmodule
