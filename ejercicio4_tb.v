module testbench();


  reg A11, B11, C11, A12, B12, C12, A13, B13, C13, D13, A14, B14, C14, D14, A21, B21, C21, D21, A22, B22, C22, A23, B23, C23, D23, A24, B24, C24;
  
  wire EJER1T1, EJER1T2, EJER1T3, EJER1T4, EJER2T1, EJER2T2, EJER2T3, EJER2T4 ;


  EJERCICIO1T1 OL1(A11, B11, C11, EJER1T1);
  EJERCICIO1T2 OL2(A12, B12, C12, EJER1T2);
  EJERCICIO1T3 OL3(A13, B13, C13, D13, EJER1T3);
  EJERCICIO1T4 OL4(A14, B14, C14, D14, EJER1T4);
  
  Ejer2Tabla1 G1(A21, B21, C21, D21, EJER2T1);
  Ejer2Tabla2 G2(A22, B22, C22, EJER2T2);
  Ejer2Tabla3 G3(A23, B23, C23, D23, EJER2T3);
  Ejer2Tabla4 G4(A24, B24, C24, EJER2T4);

  initial begin
	#4
    $display("\n");
	$display("E2, T1");
    $display("A B C D | Y");
    $monitor("%b %b %b %b | %b", A21, B21, C21, D21, EJER2T1);
       A21 = 0; B21 = 0; C21 = 0; D21 = 0;
    #1 A21 = 0; B21 = 0; C21 = 0; D21 = 1;
    #1 A21 = 0; B21 = 0; C21 = 1; D21 = 0;
    #1 A21 = 0; B21 = 0; C21 = 1; D21 = 1;
    #1 A21 = 0; B21 = 1; C21 = 0; D21 = 0;
    #1 A21 = 0; B21 = 1; C21 = 0; D21 = 1;
    #1 A21 = 0; B21 = 1; C21 = 1; D21 = 0;
    #1 A21 = 0; B21 = 1; C21 = 1; D21 = 1;
	#1 A21 = 1; B21 = 0; C21 = 0; D21 = 0;
	#1 A21 = 1; B21 = 0; C21 = 0; D21 = 1;
	#1 A21 = 1; B21 = 0; C21 = 1; D21 = 0;
	#1 A21 = 1; B21 = 0; C21 = 1; D21 = 1;
	#1 A21 = 1; B21 = 1; C21 = 0; D21 = 0;
	#1 A21 = 1; B21 = 1; C21 = 0; D21 = 1;
	#1 A21 = 1; B21 = 1; C21 = 1; D21 = 0;
	#1 A21 = 1; B21 = 1; C21 = 1; D21 = 1;
  end
  
    initial begin
	#20
	$display("E2, T2");
    $display("A B C | Y");
    $display("------|--");
    $monitor("%b %b %b | %b", A22, B22, C22, EJER2T2);
       A22 = 0; B22 = 0; C22 = 0;
    #1 A22 = 0; B22 = 0; C22 = 1;
    #1 A22 = 0; B22 = 1; C22 = 0;
    #1 A22 = 0; B22	= 1; C22 = 1;
    #1 A22 = 1; B22 = 0; C22 = 0;
    #1 A22 = 1; B22 = 0; C22 = 1;
    #1 A22 = 1; B22 = 1; C22 = 0;
    #1 A22 = 1; B22 = 1; C22 = 1;
  end
  
   initial begin
   #30
	$display("E2, T3");
    $display("A B C D | Y");
    $display("--------|--");
    $monitor("%b %b %b %b | %b", A23, B23, C23, D23, EJER2T3);
       A23 = 0; B23 = 0; C23 = 0; D23 = 0;
    #1 A23 = 0; B23 = 0; C23 = 0; D23 = 1;
    #1 A23 = 0; B23 = 0; C23 = 1; D23 = 0;
    #1 A23 = 0; B23 = 0; C23 = 1; D23 = 1;
    #1 A23 = 0; B23 = 1; C23 = 0; D23 = 0;
    #1 A23 = 0; B23 = 1; C23 = 0; D23 = 1;
    #1 A23 = 0; B23 = 1; C23 = 1; D23 = 0;
    #1 A23 = 0; B23 = 1; C23 = 1; D23 = 1;
	#1 A23 = 1; B23 = 0; C23 = 0; D23 = 0;
	#1 A23 = 1; B23 = 0; C23 = 0; D23 = 1;
	#1 A23 = 1; B23 = 0; C23 = 1; D23 = 0;
	#1 A23 = 1; B23 = 0; C23 = 1; D23 = 1;
	#1 A23 = 1; B23 = 1; C23 = 0; D23 = 0;
	#1 A23 = 1; B23 = 1; C23 = 0; D23 = 1;
	#1 A23 = 1; B23 = 1; C23 = 1; D23 = 0;
	#1 A23 = 1; B23 = 1; C23 = 1; D23 = 1;
  end


  initial begin
	#45
	$display("\n");
	$display("E2, T4");
    $display("A B C | Y");
    $display("------|--");
    $monitor("%b %b %b | %b", A24, B24, C24, EJER2T4);
       A24 = 0; B24 = 0; C24 = 0;
    #1 A24 = 0; B24 = 0; C24 = 1;
    #1 A24 = 0; B24 = 1; C24 = 0;
    #1 A24 = 0; B24	= 1; C24 = 1;
    #1 A24 = 1; B24 = 0; C24 = 0;
    #1 A24 = 1; B24 = 0; C24 = 1;
    #1 A24 = 1; B24 = 1; C24 = 0;
    #1 A24 = 1; B24 = 1; C24 = 1;
  end
  

  initial begin
    #55

	$display("E1, T1");
    $display("A B C | Y");
    $display("------|--");
    $monitor("%b %b %b | %b", A11, B11, C11, EJER1T1);
       A11 = 0; B11 = 0; C11 = 0;
    #1 A11 = 0; B11 = 0; C11 = 1;
    #1 A11 = 0; B11 = 1; C11 = 0;
    #1 A11 = 0; B11 = 1; C11 = 1;
    #1 A11 = 1; B11 = 0; C11 = 0;
    #1 A11 = 1; B11 = 0; C11 = 1;
    #1 A11 = 1; B11 = 1; C11 = 0;
    #1 A11 = 1; B11 = 1; C11 = 1;
  end


  initial begin
    #65

	$display("E1, T2");
    $display("A B C | Y");
    $display("------|--");
    $monitor("%b %b %b | %b", A12, B12, C12, EJER1T2);
       A12 = 0; B12 = 0; C12 = 0;
    #1 A12 = 0; B12 = 0; C12 = 1;
    #1 A12 = 0; B12 = 1; C12 = 0;
    #1 A12 = 0; B12 = 1; C12 = 1;
    #1 A12 = 1; B12 = 0; C12 = 0;
    #1 A12 = 1; B12 = 0; C12 = 1;
    #1 A12 = 1; B12 = 1; C12 = 0;
    #1 A12 = 1; B12 = 1; C12 = 1;
  end
  

  initial begin
    #75
	$display("E1, T3");
    $display("A B C D | Y");
    $display("--------|--");
    $monitor("%b %b %b %b | %b", A13, B13, C13, D13, EJER1T3);
       A13 = 0; B13 = 0; C13 = 0; D13 = 0;
    #1 A13 = 0; B13 = 0; C13 = 0; D13 = 1;
    #1 A13 = 0; B13 = 0; C13 = 1; D13 = 0;
    #1 A13 = 0; B13 = 0; C13 = 1; D13 = 1;
    #1 A13 = 0; B13 = 1; C13 = 0; D13 = 0;
    #1 A13 = 0; B13 = 1; C13 = 0; D13 = 1;
    #1 A13 = 0; B13 = 1; C13 = 1; D13 = 0;
    #1 A13 = 0; B13 = 1; C13 = 1; D13 = 1;
	#1 A13 = 1; B13 = 0; C13 = 0; D13 = 0;
	#1 A13 = 1; B13 = 0; C13 = 0; D13 = 1;
	#1 A13 = 1; B13 = 0; C13 = 1; D13 = 0;
	#1 A13 = 1; B13 = 0; C13 = 1; D13 = 1;
	#1 A13 = 1; B13 = 1; C13 = 0; D13 = 0;
	#1 A13 = 1; B13 = 1; C13 = 0; D13 = 1;
	#1 A13 = 1; B13 = 1; C13 = 1; D13 = 0;
	#1 A13 = 1; B13 = 1; C13 = 1; D13 = 1;
  end
  

  initial begin
    #90
    $display("\n");
	$display("E1, T4");
    $display("A B C D | Y");
    $display("--------|--");
    $monitor("%b %b %b %b | %b", A14, B14, C14, D14, EJER1T4);
       A14 = 0; B14 = 0; C14 = 0; D14 = 0;
    #1 A14 = 0; B14 = 0; C14 = 0; D14 = 1;
    #1 A14 = 0; B14 = 0; C14 = 1; D14 = 0;
    #1 A14 = 0; B14 = 0; C14 = 1; D14 = 1;
    #1 A14 = 0; B14 = 1; C14 = 0; D14 = 0;
    #1 A14 = 0; B14 = 1; C14 = 0; D14 = 1;
    #1 A14 = 0; B14 = 1; C14 = 1; D14 = 0;
    #1 A14 = 0; B14 = 1; C14 = 1; D14 = 1;
	#1 A14 = 1; B14 = 0; C14 = 0; D14 = 0;
	#1 A14 = 1; B14 = 0; C14 = 0; D14 = 1;
	#1 A14 = 1; B14 = 0; C14 = 1; D14 = 0;
	#1 A14 = 1; B14 = 0; C14 = 1; D14 = 1;
	#1 A14 = 1; B14 = 1; C14 = 0; D14 = 0;
	#1 A14 = 1; B14 = 1; C14 = 0; D14 = 1;
	#1 A14 = 1; B14 = 1; C14 = 1; D14 = 0;
	#1 A14 = 1; B14 = 1; C14 = 1; D14 = 1;
  end

  initial
    #110 $finish;
  
  initial begin
    $dumpfile("EJERCICIO4_tb.vcd");
    $dumpvars(0, testbench);
  end
  
endmodule