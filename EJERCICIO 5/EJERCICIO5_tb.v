module testbench();

  reg ASG, BSG, CSG, APG, BPG, CPG, AMG, BMG, CMG, ASO, BSO, CSO, APO, BPO, CPO, AMO, BMO, CMO;
  wire GESOP, GEPOS, MKG, SOPY, POSY, MKY;

  GATESOP GATE1(ASG, BSG, CSG, GESOP);
  GATEPOS GATE2(APG, BPG, CPG, GEPOS);
  GATEMK GATE3(AMG, BMG, CMG, MKG);

  OLSOP OL1(ASO, BSO, CSO, SOPY);
  OLPOS OL2(APO, BPO, CPO, POSY);
  OLMK OP3(AMO, BMO, CMO, MKY);

  initial begin
	#5

	$display("E5, SOP Gate");
    $display("A B C | Y");
    $display("------|--");
    $monitor("%b %b %b | %b", ASG, BSG, CSG, GESOP);
       ASG = 0; BSG = 0; CSG = 0;
    #1 ASG = 0; BSG = 0; CSG = 1;
    #1 ASG = 0; BSG = 1; CSG = 0;
    #1 ASG = 0; BSG	= 1; CSG = 1;
    #1 ASG = 1; BSG = 0; CSG = 0;
    #1 ASG = 1; BSG = 0; CSG = 1;
    #1 ASG = 1; BSG = 1; CSG = 0;
    #1 ASG = 1; BSG = 1; CSG = 1;
  end
  
  
    initial begin
	#15
	$display("E5, EJ POS");
    $display("A B C | Y");
    $display("------|--");
    $monitor("%b %b %b | %b", APG, BPG, CPG, GEPOS);
       APG = 0; BPG = 0; CPG = 0;
    #1 APG = 0; BPG = 0; CPG = 1;
    #1 APG = 0; BPG = 1; CPG = 0;
    #1 APG = 0; BPG	= 1; CPG = 1;
    #1 APG = 1; BPG = 0; CPG = 0;
    #1 APG = 1; BPG = 0; CPG = 1;
    #1 APG = 1; BPG = 1; CPG = 0;
    #1 APG = 1; BPG = 1; CPG = 1;
  end
  
   initial begin
   #25
	$display("E5, Mapa de Karnaugh ");
    $display("A B C | Y");
    $display("------|--");
    $monitor("%b %b %b | %b", AMG, BMG, CMG, MKG);
       AMG = 0; BMG = 0; CMG = 0;
    #1 AMG = 0; BMG = 0; CMG = 1;
    #1 AMG = 0; BMG = 1; CMG = 0;
    #1 AMG = 0; BMG	= 1; CMG = 1;
    #1 AMG = 1; BMG = 0; CMG = 0;
    #1 AMG = 1; BMG = 0; CMG = 1;
    #1 AMG = 1; BMG = 1; CMG = 0;
    #1 AMG = 1; BMG = 1; CMG = 1;
  end


  initial begin
	#30
	$display("E5, EJ SOP");
    $display("A B C | Y");
    $display("------|--");
    $monitor("%b %b %b | %b", ASO, BSO, CSO, SOPY);
       ASO = 0; BSO = 0; CSO = 0;
    #1 ASO = 0; BSO = 0; CSO = 1;
    #1 ASO = 0; BSO = 1; CSO = 0;
    #1 ASO = 0; BSO	= 1; CSO = 1;
    #1 ASO = 1; BSO = 0; CSO = 0;
    #1 ASO = 1; BSO = 0; CSO = 1;
    #1 ASO = 1; BSO = 1; CSO = 0;
    #1 ASO = 1; BSO = 1; CSO = 1;
  end
  
  initial begin
    #40
	$display("E5, POS OPERADORES L");
    $display("A B C | Y");
    $display("------|--");
    $monitor("%b %b %b | %b", APO, BPO, CPO, POSY);
       APO = 0; BPO = 0; CPO = 0;
    #1 APO = 0; BPO = 0; CPO = 1;
    #1 APO = 0; BPO = 1; CPO = 0;
    #1 APO = 0; BPO	= 1; CPO = 1;
    #1 APO = 1; BPO = 0; CPO = 0;
    #1 APO = 1; BPO = 0; CPO = 1;
    #1 APO = 1; BPO = 1; CPO = 0;
    #1 APO = 1; BPO = 1; CPO = 1;
  end

  initial begin
    #50
	$display("E5, Mapa de Karnaugh Operadores");
    $display("A B C | Y");
    $display("------|--");
    $monitor("%b %b %b | %b", AMO, BMO, CMO, MKY);
       AMO = 0; BMO = 0; CMO = 0;
    #1 AMO = 0; BMO = 0; CMO = 1;
    #1 AMO = 0; BMO = 1; CMO = 0;
    #1 AMO = 0; BMO	= 1; CMO = 1;
    #1 AMO = 1; BMO = 0; CMO = 0;
    #1 AMO = 1; BMO = 0; CMO = 1;
    #1 AMO = 1; BMO = 1; CMO = 0;
    #1 AMO = 1; BMO = 1; CMO = 1;
  end
 
 
  initial
    #65 $finish;
  
  initial begin
    $dumpfile("EJERCICIO5_tb.vcd");
    $dumpvars(0, testbench);
  end
  
endmodule