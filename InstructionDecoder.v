module InstructionDecoder (
    input [31:0] instr,
    output reg [3:0] ALUOp,
    output reg RegWrite
);
    always @(*) begin
        case (instr[6:0])  // Opcode
            7'b0110011: begin // R-type (ADD, SUB, AND, OR)
                case (instr[14:12])
                    3'b000: ALUOp = (instr[30] == 1) ? 4'b0001 : 4'b0000; // SUB or ADD
                    3'b111: ALUOp = 4'b0010; // AND
                    3'b110: ALUOp = 4'b0011; // OR
                    3'b100: ALUOp = 4'b0100; // XOR
                    3'b010: ALUOp = 4'b0101; // SLT
                    default: ALUOp = 4'b0000;
                endcase
                RegWrite = 1;
            end
            default: begin
                ALUOp = 4'b0000;
                RegWrite = 0;
            end
        endcase
    end
endmodule
