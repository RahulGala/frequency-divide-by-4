/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : K-2015.06-SP5-1
// Date      : Mon Jan 29 19:43:54 2018
/////////////////////////////////////////////////////////////


module fby4 ( clk, rst, q );
  input clk, rst;
  output q;
  wire   q1, N5, n2, n3;

  CFD1QXL q1_reg ( .D(N5), .CP(clk), .Q(q1) );
  CFD1QXL q_reg ( .D(n2), .CP(clk), .Q(q) );
  CNR2XL U6 ( .A(q1), .B(rst), .Z(N5) );
  CENX1 U7 ( .A(q1), .B(q), .Z(n3) );
  CNR2XL U8 ( .A(n3), .B(rst), .Z(n2) );
endmodule

