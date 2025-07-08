`timescale 1ns / 1ps

module csa_16(
    input [15:0] a, b,
    input Cin, C0, C1,
    output [15:0] sum,
    output Cout
    );
    wire c;
    wire [13:0] c0;
    wire [13:0] c1;
    wire [3:0] cout;
    wire [15:2] s0; 
    wire [15:2] s1;
    
    fa fa11 (a[0], b[0], Cin, sum[0], c);
    fa fa12 (a[1], b[1], c, sum[1], cout[0]);
    
    fa fa21 (a[2], b[2], C0, s0[2], c0[0]);
    fa fa22 (a[3], b[3], c0[0], s0[3], c0[1]);
    
    fa fa23 (a[2], b[2], C1, s1[2], c1[0]);
    fa fa24 (a[3], b[3], c1[0], s1[3], c1[1]);
    
    mux mux1 (s0[2], s1[2], cout[0], sum[2]);
    mux mux2 (s0[3], s1[3], cout[0], sum[3]);
    mux mux3 (c0[1], c1[1], cout[0], cout[1]);
    
    
    fa fa31 (a[4], b[4], C0, s0[4], c0[2]);
    fa fa32 (a[5], b[5], c0[2], s0[5], c0[3]);
    fa fa33 (a[6], b[6], c0[3], s0[6], c0[4]);
    
    fa fa34 (a[4], b[4], C1, s1[4], c1[2]);
    fa fa35 (a[5], b[5], c1[2], s1[5], c1[3]);
    fa fa36 (a[6], b[6], c1[3], s1[6], c1[4]);

    mux mux4 (s0[4], s1[4], cout[1], sum[4]);
    mux mux5 (s0[5], s1[5], cout[1], sum[5]);
    mux mux6 (s0[6], s1[6], cout[1], sum[6]);
    mux mux7 (c0[4], c1[4], cout[1], cout[2]);
    


    fa fa41 (a[7], b[7], C0, s0[7], c0[5]);
    fa fa42 (a[8], b[8], c0[5], s0[8], c0[6]);
    fa fa43 (a[9], b[9], c0[6], s0[9], c0[7]);
    fa fa44 (a[10], b[10], c0[7], s0[10], c0[8]);
    
    fa fa45 (a[7], b[7], C1, s1[7], c1[5]);
    fa fa46 (a[8], b[8], c1[5], s1[8], c1[6]);
    fa fa47 (a[9], b[9], c1[6], s1[9], c1[7]);
    fa fa48 (a[10], b[10], c1[7], s1[10], c1[8]);

    mux mux8 (s0[7], s1[7], cout[2], sum[7]);
    mux mux9 (s0[8], s1[8], cout[2], sum[8]);
    mux mux10 (s0[9], s1[9], cout[2], sum[9]);
    mux mux11 (s0[10], s1[10], cout[2], sum[10]);    
    mux mux12 (c0[8], c1[8], cout[2], cout[3]);    



    fa fa51 (a[11], b[11], C0, s0[11], c0[9]);
    fa fa52 (a[12], b[12], c0[9], s0[12], c0[10]);
    fa fa53 (a[13], b[13], c0[10], s0[13], c0[11]);
    fa fa54 (a[14], b[14], c0[11], s0[14], c0[12]);
    fa fa55 (a[15], b[15], c0[12], s0[15], c0[13]);
    
    fa fa56 (a[11], b[11], C1, s1[11], c1[9]);
    fa fa57 (a[12], b[12], c1[9], s1[12], c1[10]);
    fa fa58 (a[13], b[13], c1[10], s1[13], c1[11]);
    fa fa59 (a[14], b[14], c1[11], s1[14], c1[12]);
    fa fa510 (a[15], b[15], c1[12], s1[15], c1[13]);

    mux mux13 (s0[11], s1[11], cout[3], sum[11]);
    mux mux14 (s0[12], s1[12], cout[3], sum[12]);
    mux mux15 (s0[13], s1[13], cout[3], sum[13]);
    mux mux16 (s0[14], s1[14], cout[3], sum[14]);
    mux mux17 (s0[15], s1[15], cout[3], sum[15]);    
    mux mux18 (c0[13], c1[13], cout[3], Cout); 
    
endmodule
