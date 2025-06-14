// Testbench code for 2:1 Mux
module mux2to1_tb ();
  reg a,b,s;
  wire c;
  mux2to1 duv (.a(a),.b(b),.s(s),.c(c));
  initial
    begin
      $dumpfile("test.vcd");
      $dumpvars;
      s=0; a=0; b=0; #10;
      s=0; a=0; b=1; #10;
      s=0; a=1; b=0; #10;
      s=0; a=1; b=1; #10;
      s=1; a=0; b=0; #10;
      s=1; a=0; b=1; #10;
      s=1; a=1; b=0; #10;
      s=1; a=1; b=1; #10;
    end
  initial
    begin
      $monitor("time=%0t a=%b b=%b s=%b c=%b",$time,a,b,s,c);
    end
endmodule
