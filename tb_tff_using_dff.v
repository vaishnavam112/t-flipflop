`timescale 1ns / 1ps

module tb_tff_using_dff();
    reg clk,rstn,t;
    wire q;
    integer i;
    
    tff_using_dff tud(.clk(clk), .rstn(rstn), .t(t), .q(q));
    
    always #3 clk=~clk;
    //always #15 t=~t;
    //always #15 rstn=~rstn;
    
    initial 
        begin
            clk=0;
            rstn=0;
            t=0;
            #10;
            rstn=1;
            for(i=0; i<=20; i=i+1)
                t<= $urandom_range(1,0);
                #7;
          
            #140;
         $finish;
         end
         
         initial 
         begin
         $monitor("time=%0t clk=%0b rstn=%0b t=%0b q=%0b",$time,clk,rstn,t,q);
         
         
         end
         
    
endmodule
