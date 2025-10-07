module ones_compliment(
    input [3:0] A, 
    input [3:0] B,
    output [3:0] Y
);

wire[3:0]carry;
wire [3:0] AplusB;

full_adder input0_inst(
    .A(A[0]),
    .B(B[0]),
    .cin(0),
    .Y(AplusB[0]),
    .cout(carry[0])
);

full_adder input1_inst(
    .A(A[1]),
    .B(B[1]),
    .cin(carry[0]),
    .Y(AplusB[1]),
    .cout(carry[1])

  );
  
  full_adder input2_inst(
    .A(A[2]),
    .B(B[2]),
    .cin(carry[1]),
    .Y(AplusB[2]),
    .cout(carry[2])

  );
  
  full_adder input3_inst(
    .A(A[3]),
    .B(B[3]),
    .cin(carry[2]),
    .Y(AplusB[3]),
    .cout(carry[3])

  );
  full_adder input4_inst(
    .A(A[0]),
    .B(B[0]),
    .cin(carry[3]),
    .Y(Y[0]),
    .cout(carry[0])
);

full_adder input5_inst(
    .A(A[1]),
    .B(B[1]),
    .cin(carry[4]),
    .Y(Y[1]),
    .cout(carry[1])

  );
  
  full_adder input6_inst(
    .A(A[2]),
    .B(B[2]),
    .cin(carry[5]),
    .Y(Y[2]),
    .cout(carry[2])

  );
  
  full_adder input7_inst(
    .A(A[3]),
    .B(B[3]),
    .cin(carry[6]),
    .Y(Y[3]),
    .cout(carry[3])

  );

endmodule