// Testbench code for Not gate
module notgate_tb ();
  reg a;
  wire b;
  notgate duv (.a(a),.b(b));
  initial
    begin
      $dumpfile("test.vcd");
      $dumpvars;
      a=0; #10;
      a=1; #10;
    end
  initial
    begin  
      $monitor("time=%0t a=%b b=%b",$time,a,b);
    end
endmodule
