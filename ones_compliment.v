module ones_compliment (
input A0,A1,A2,A3,B0,B1,B2,B3,
output Y0,Y1,Y2,Y3
);

wire w0,w1,w2,w3;
wire cw0,cw1,cw2,cw3,cw4, cw5, cw6, cw7;

full_adder fullAdder0_inst(
    .A(A0),
    .B(B0),
    .Cin(0),
    .Y(w0),
    .Cout(cw0)
);

full_adder fullAdder1_inst(
    .A(A1),
    .B(B1),
    .Cin(cw0),
    .Y(w1),
    .Cout(cw1)
);

full_adder fullAdder2_inst(
    .A(A2),
    .B(B2),
    .Cin(cw1),
    .Y(w2),
    .Cout(cw2)
);
full_adder fullAdder3_inst(
    .A(A3),
    .B(B3),
    .Cin(cw2),
    .Y(w3),
    .Cout(cw3)
);

//----------------------second layer----------------------

full_adder fullAdder4_inst(
    .A(w0),
    .B(0),
    .Cin(cw3),
    .Y(Y0),
    .Cout(cw4)
);
full_adder fullAdder5_inst(
    .A(w1),
    .B(0),
    .Cin(cw4),
    .Y(Y1),
    .Cout(cw5)
);
full_adder fullAdder6_inst(
    .A(w2),
    .B(0),
    .Cin(cw5),
    .Y(Y2),
    .Cout(cw6)
);
full_adder fullAdder7_inst(
    .A(w3),
    .B(0),
    .Cin(cw6),
    .Y(Y3),
    .Cout(cw7)
);


endmodule