module mux4 (
    input  wire d0,
    input  wire d1,
    input  wire d2,
    input  wire d3,
    input  wire [1:0] sel,
    output wire y
);

    wire y0, y1;

    // First stage
    mux2 m0 (.a(d0), .b(d1), .sel(sel[0]), .y(y0));
    mux2 m1 (.a(d2), .b(d3), .sel(sel[0]), .y(y1));

    // Second stage
    mux2 m2 (.a(y0), .b(y1), .sel(sel[1]), .y(y));

endmodule

