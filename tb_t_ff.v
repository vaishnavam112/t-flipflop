`timescale 1ns / 1ps

module tb_t_ff( );

    reg clk,t,rstn;
    wire q;
    integer i;
    t_ff tff(.clk(clk), .t(t), .rstn(rstn),.q(q));
    
    //always #7 t=~t;
    always #3 clk=~clk;
    
    initial 
    begin
     rstn=0;
     clk=0;
     t=0;
     #4;
     rstn=1;
     t=1;
     #10
    
     for(i=0;i<=20;i=i+1)begin
        t<=$urandom_range(1,0);
        #7;
     end
     $finish;
     
     
     end
    
    
endmodule
