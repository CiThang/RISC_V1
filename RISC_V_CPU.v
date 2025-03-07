module RISC_V_CPU (
    input clk
);
    wire [31:0] instr, pc, rd1, rd2, result;
    wire [3:0] ALUOp;
    wire RegWrite;

    RegisterFile rf (clk, RegWrite, instr[19:15], instr[24:20], instr[11:7], result, rd1, rd2);
    ALU alu (rd1, rd2, ALUOp, result);
    InstructionDecoder decoder (instr, ALUOp, RegWrite);

endmodule
