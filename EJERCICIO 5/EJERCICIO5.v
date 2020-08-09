 

module EJSOP(input wire A, B, C, output wire Y1);


  wire NB, NC, A1, A2, A3;

  and (A1, A, NB, NC);
  and (A2, A, NB, C);
  and (A3, A, B, C);
  not (NB, B);
  not (NC, C);
  or  (Y1, A1, A2, A3);

endmodule

module EJPOS(input wire A, B, C, output wire Y1);


  wire NA, NB, NC, O1, O2, O3, O4, O5;

 

  and (Y1, O1, O2, O3, O4, O5);
  not (NA, A);
  not (NB, B);
  not (NC, C);
  or  (O1, A, B, C);
  or  (O2, A, B, NC);
  or  (O3, A, NB, C);
  or  (O4, A, NB, NC);
  or  (O5, NA, NB, C);

endmodule

module MKG(input wire A, B, C, output wire Y1);

  wire NB, A1, A2;

  
  and (A1, A, NB);
  and (A2, A, C);
  not (NB, B);
  or  (Y1, A1, A2);

endmodule


module SOP(input wire A, B, C, output wire Y1);

  assign Y1 = (A&~B&~C)|(A&~B&C)|(A&B&C);

endmodule

module POS(input wire A, B, C, output wire Y1);

  assign Y1 = (A|B|C)&(A|B|~C)&(A|~B|C)&(A|~B|~C)&(~A|~B|C);

endmodule


module MK(input wire A, B, C, output wire Y1);

  assign Y1 = (A&~B)|(A&C);

endmodule




