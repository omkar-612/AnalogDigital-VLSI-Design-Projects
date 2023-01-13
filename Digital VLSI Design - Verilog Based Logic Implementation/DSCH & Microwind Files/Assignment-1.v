// DSCH3
// 10-10-2022 15:24:49
// C:\Users\omkar\Downloads\DSCH\examples\Assignment-1.sch

module Assignment1( H,D,B,F,E,FunctionOutputX);
 input H,D,B,F,E;
 output FunctionOutputX;
 wire w3,w4,w6,w8,w11,w12,w13,w14;
 wire ;
 not #(1) inv_1(w3,H);
 nmos #(1) nmos_2(w6,w4,E); // 1.0u 0.12u
 nmos #(1) nmos_3(FunctionOutputX,w8,B); // 1.0u 0.12u
 nmos #(1) nmos_4(w6,w11,w11); // 1.0u 0.12u
 not #(1) inv_5(w11,E);
 nmos #(1) nmos_6(w6,w12,w12); // 1.0u 0.12u
 not #(1) inv_7(w8,B);
 nmos #(1) nmos_8(w4,w13,D); // 1.0u 0.12u
 nmos #(1) nmos_9(w14,w6,w8); // 1.0u 0.12u
 nmos #(1) nmos_10(FunctionOutputX,w14,w3); // 1.0u 0.12u
 not #(1) inv_11(w13,F);
 nmos #(1) nmos_12(FunctionOutputX,w3,H); // 1.0u 0.12u
 not #(1) inv_13(w12,D);
 capa #(1) Capa_14(vss,FunctionOutputX); // 0.2pF
endmodule

// Simulation parameters in Verilog Format
always
#10 H=~H;
#20 D=~D;
#40 B=~B;
#80 F=~F;
#160 E=~E;

// Simulation parameters
// H CLK 10 10
// D CLK 20 20
// B CLK 40 40
// F CLK 80 80
// E CLK 160 160
