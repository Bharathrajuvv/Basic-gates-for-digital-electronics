// Design code for SR Latch using gata level 
module sr_latch(input s,r, output q,qb);
  nor g1(q,r,qb);
  nor g2(qb,s,q);
endmodule


// Test bench code for SR Latch using gata level
module sr_latch_tb;
    reg s, r;
    wire q, qb;
    
    sr_latch dut(s, r, q, qb);
    
    initial begin
        $dumpfile("sr_latch.vcd");
        $dumpvars(0, sr_latch_tb);
        
        s=0; r=0; #10; $display("%0t: s=%b r=%b | q=%b qb=%b", $time, s, r, q, qb);
        s=0; r=1; #10; $display("%0t: s=%b r=%b | q=%b qb=%b", $time, s, r, q, qb);
        s=1; r=0; #10; $display("%0t: s=%b r=%b | q=%b qb=%b", $time, s, r, q, qb);
        s=1; r=1; #10; $display("%0t: s=%b r=%b | q=%b qb=%b", $time, s, r, q, qb);
        
        $finish;
    end
endmodule
