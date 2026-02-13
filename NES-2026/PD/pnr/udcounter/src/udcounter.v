module udcounter (
    input        clk,
    input        rst,
    input        up_dn,
    output reg [3:0] count
);

always @(posedge clk) begin
    if (rst)
        count <= 4'd0;
    else begin
        if (up_dn) begin
            if (count == 4'd15)
                count <= 4'd0;
            else
                count <= count + 1'b1;
        end else begin
            if (count == 4'd0)
                count <= 4'd15;
            else
                count <= count - 1'b1;
        end
    end
end

endmodule

