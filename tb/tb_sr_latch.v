module tb_sr_latch;

reg S, R;
wire Q;

sr_latch uut (
    .S(S),
    .R(R),
    .Q(Q)
);

initial begin
    $dumpfile("sr_latch.vcd");
    $dumpvars(0, tb_sr_latch);

    $monitor("Time=%0t | S=%b R=%b Q=%b", $time, S, R, Q);

    // HOLD (initial)
    S = 0; R = 0; #10;

    // SET
    S = 1; R = 0; #10;

    // HOLD
    S = 0; R = 0; #10;

    // RESET
    S = 0; R = 1; #10;

    // HOLD
    S = 0; R = 0; #10;

    // INVALID
    S = 1; R = 1; #10;

    $finish;
end

endmodule
