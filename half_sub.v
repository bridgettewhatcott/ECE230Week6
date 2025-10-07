module half_sub(
    input A,B,
    output Y, bor
    );
    
assign Y=(A*~B)|(~A*B);
assign bor=(~A*B);


endmodule
    