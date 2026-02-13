`timescale 1ns/1ps

module tb_dff;

    reg clk;
    reg rst;
    reg d;
    wire q;

    // Instantiate DUT
    dff dut (
        .clk(clk),
        .rst(rst),
        .d(d),
        .q(q)
    );

    // Clock generation: 10ns period
    always #5 clk = ~clk;

    initial begin
        // Dump waveform
        $dumpfile("dff.vcd");
        $dumpvars(0, tb_dff);

        // Initialize signals
        clk = 0;
        rst = 1;
        d   = 0;

        #12 rst = 0;      // Deassert reset

        #10 d = 1;
        #10 d = 0;
        #10 d = 1;
        #10 d = 0;

        #20 $finish;
    end

endmodule

