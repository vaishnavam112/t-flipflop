`timescale 1ns / 1ps

module tff_using_dff(
    input t,clk,rstn,
    output q
    );
    
    wire out1;
    wire out2;
    assign out1= t ^ out2; 
    
    d_flipflop dff(.t(out1), .clk(clk), .rstn(rstn), .q(out2));
    
    //assign q = out2; 
    
    //d_flipflop d_ff(q,clk,rstn,d);
    //assign d= t ^ q;
    
endmodule
