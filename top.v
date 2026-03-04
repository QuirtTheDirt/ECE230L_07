// Implement top level module

module top (
    input [9:0] sw,
    output [13:0] led
);

wire w1;

half_sub half_sub_inst(
    .A(sw[0]),
    .B(sw[1]),
    .Y(led[0]),
    .Borrow(led[1])
);
ones_compliment ones_compliment_inst(
    .A0(sw[2]),
    .A1(sw[3]),
    .A2(sw[4]),
    .A3(sw[5]),
    .B0(sw[6]),
    .B1(sw[7]),
    .B2(sw[8]),
    .B3(sw[9]),
    .Y0(led[2]),
    .Y1(led[3]),
    .Y2(led[4]),
    .Y3(led[5])
);

twos_compliment twos_compliment_inst(
    .A0(sw[2]),
    .A1(sw[3]),
    .A2(sw[4]),
    .A3(sw[5]),
    .A4(sw[6]),
    .A5(sw[7]),
    .A6(sw[8]),
    .A7(sw[9]),
    .Y0(led[6]),
    .Y1(led[7]),
    .Y2(led[8]),
    .Y3(led[9]),
    .Y4(led[10]),
    .Y5(led[11]),
    .Y6(led[12]),
    .Y7(led[13])
);

endmodule