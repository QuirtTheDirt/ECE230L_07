module twos_compliment (

input A0,A1,A2,A3,A4,A5,A6,A7,
output Y0,Y1,Y2,Y3,Y4,Y5,Y6,Y7
);


wire w0,w1,w2,w3;
wire cw0,cw1,cw2,cw3,cw4,cw5,cw6,cw7;

full_adder fullAdder0_inst(
    .A(~A0),
    .B(0),
    .Cin(1),
    .Y(Y0),
    .Cout(cw0)
);

full_adder fullAdder1_inst(
    .A(~A1),
    .B(0),
    .Cin(cw0),
    .Y(Y1),
    .Cout(cw1)
);

full_adder fullAdder2_inst(
    .A(~A2),
    .B(0),
    .Cin(cw1),
    .Y(Y2),
    .Cout(cw2)
);
full_adder fullAdder3_inst(
    .A(~A3),
    .B(0),
    .Cin(cw2),
    .Y(Y3),
    .Cout(cw3)
);

full_adder fullAdder4_inst(
    .A(~A4),
    .B(0),
    .Cin(cw3),
    .Y(Y4),
    .Cout(cw4)
);
full_adder fullAdder5_inst(
    .A(~A5),
    .B(0),
    .Cin(cw4),
    .Y(Y5),
    .Cout(cw5)
);
full_adder fullAdder6_inst(
    .A(~A6),
    .B(0),
    .Cin(cw5),
    .Y(Y6),
    .Cout(cw6)
);
full_adder fullAdder7_inst(
    .A(~A7),
    .B(0),
    .Cin(cw6),
    .Y(Y7),
    .Cout(cw7)
);

endmodule