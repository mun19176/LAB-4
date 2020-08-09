 

module EJERCICIO2T1(input wire A, B, C, D, output wire Y1);

  wire NB, NC, ND, A1, A2, A3, A4;

  not (NB, B);
  not (NC, C);
  not (ND, D);
  or  (Y1, A1, A2, A3, A4);
    and (A1, A, NB);
  and (A2, A, NC);
  and (A3, A, ND);
  and (A4, NB, NC, ND);

endmodule


module EJERCICIO2T2(input wire A, B, C, output wire Y1);

  wire NB;

  not (NB, B);
  or  (Y1, NB, C);

endmodule

module EJERCICIO2T3(input wire A, B, C, D, output wire Y1);

  wire NC, A1, A2;

  not (NC, C);
  or  (Y1, A1, A2, B);
  and (A1, NC, D);
  and (A2, A, D);

endmodule

module EJERCICIO2T4(input wire A, B, C, output wire Y1);

  wire NA, NC, A1;

  not (NA, A);
  not (NC, C);
  or  (Y1, A1, B);
  and (A1, NA, NC);

endmodule

module EJERCICIO1T1(input wire A, B, C, output wire Y1);

  assign Y1 = (A&C)|(A&~B)|(~A&~C);

endmodule


module EJERCICIO1T2(input wire A, B, C, output wire Y1);

  assign Y1 = ~B;

endmodule


module EJERCICIO1T3(input wire A, B, C, D, output wire Y1);

  assign Y1 = (~A&~B&~C&~D)|(A&B&~C&~D)|(~A&B&~C&D)|(A&~B&~C&D)|(~A&~B&C&D)|(A&B&C&D)|(~A&B&C&~D)|(A&~B&C&~D);

endmodule

module EJERCICIO1T4(input wire A, B, C, D, output wire Y1);

  assign Y1 = (A&B)|(A&C)|(A&~D);

endmodule


