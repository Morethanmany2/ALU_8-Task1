module testbench();
  reg [3:0] a,b;
  reg [2:0] op;
  wire [3:0] out;
  ALU_8 uut(a,b,op,out);
  initial 
    begin
      $dumpfile("dump.vcd");
      $dumpvars(0,testbench);
    end
  initial
    begin
      $monitor($time,"a=%b, b=%b, op=%b, out=%b", a,b,op,out);
      #5 op=3'b000; a=4'b0011; b=4'b0010;
      #5 op=3'b001; a=4'b0011; b=4'b0010;
      #5 op=3'b010; a=4'b0011; b=4'b0010;
      #5 op=3'b011; a=4'b0011; b=4'b0010;
      #5 op=3'b100; a=4'b0011; b=4'b0010;
      #5 op=3'b101; a=4'b0011; b=4'b0010;
      #5 op=3'b110; a=4'b0011; b=4'b0010;
      #5 $finish;
    end
endmodule
