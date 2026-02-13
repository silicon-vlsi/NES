`timescale 1ns/1ps 
 
module tb_mux41; 
 
    reg d0; 
    reg d1; 
    reg d2; 
    reg d3; 
    reg [1:0] sel; 
    wire y; 
 
    // Instantiate DUT 
    mux41 dut ( 
        .d0(d0), 
        .d1(d1), 
        .d2(d2), 
        .d3(d3), 
        .sel(sel), 
        .y(y) 
    ); 
 
    initial begin 
        // Dump waveform 
        $dumpfile("mux41.vcd"); 
        $dumpvars(0, tb_mux41); 
 
        // Initialize signals 
        d0 = 0; 
        d1 = 1; 
        d2 = 0; 
        d3 = 1; 
        sel = 2'b00; 
 
        // Apply different select values 
        #10 sel = 2'b00;   // expect y = d0 
        #10 sel = 2'b01;   // expect y = d1 
        #10 sel = 2'b10;   // expect y = d2 
        #10 sel = 2'b11;   // expect y = d3 
 
        // Change inputs 
        #10 d0 = 1; d1 = 0; d2 = 1; d3 = 0; 
 
        #10 sel = 2'b00; 
        #10 sel = 2'b01; 
        #10 sel = 2'b10; 
        #10 sel = 2'b11; 
 
        #20 $finish; 
    end 
 
endmodule
