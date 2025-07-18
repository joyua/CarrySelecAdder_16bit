`timescale 1ns / 1ps

module mux (
    input a,       // 입력 1
    input b,       // 입력 2
    input sel,     // 선택 신호
    output y       // 출력
);

assign y = (sel) ? b : a;

endmodule
