`timescale 1ns / 1ps

module mux (
    input a,       // �Է� 1
    input b,       // �Է� 2
    input sel,     // ���� ��ȣ
    output y       // ���
);

assign y = (sel) ? b : a;

endmodule
