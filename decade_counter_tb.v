module tb_decade_counter;
wire clk;
wire reset;
reg [3:0]q;

decade_counter dut(.clk(clk),.reset(reset),.q(q));

initial begin
forever begin
clk = ~clk;
#10;
end
end

initial begin
$dumpfile("tb_decade_counter.vcd");
$dumpvars(0,tb_decade_counter);
$monitor ("Time = 0%t, clk =%b,reset=%b,q=%b",$time,clk,reset,q);
 
reset = 0;
#20;
reset = 1;
#20;
reset = 0;
#200;
$finish;
end
endmodule


