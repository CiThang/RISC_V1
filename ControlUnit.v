module ControlUnit (
    input [6:0] opcode,
    output reg RegWrite, ALUSrc
);
    always @(*) begin
        case (opcode)
            7'b0110011: begin // R-type
                RegWrite = 1;
                ALUSrc = 0;
            end
            default: begin
                RegWrite = 0;
                ALUSrc = 0;
            end
        endcase
    end
endmodule
