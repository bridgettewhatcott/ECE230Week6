module twos_compliment(
    input [7:0] A,
    output [7:0] B,
    output [7:0] Y
    );
    
    
wire[3:0]carry;
wire[3:0]around;
wire [3:0] AplusB;

full_adder input0_inst(
    .A(~A[0]),
    .B(0),
    .cin(1),
    .Y(AplusB[0]),
    .cout(carry[0])
);

full_adder input1_inst(
    .A(~A[1]),
    .B(0),
    .cin(carry[0]),
    .Y(AplusB[1]),
    .cout(carry[1])

  );
  
  full_adder input2_inst(
    .A(~A[2]),
    .B(0),
    .cin(carry[1]),
    .Y(AplusB[2]),
    .cout(carry[2])

  );
  
  full_adder input3_inst(
    .A(~A[3]),
    .B(0),
    .cin(carry[2]),
    .Y(AplusB[3]),
    .cout(carry[3])

  );
  full_adder input4_inst(
    .A(~A[4]),
    .B(0),
    .cin(carry[3]),
    .Y(AplusB[4]),
    .cout(carry[4])

  );
  
  full_adder input5_inst(
    .A(~A[5]),
    .B(0),
    .cin(carry[4]),
    .Y(AplusB[5]),
    .cout(carry[5])

  );
  
  full_adder input6_inst(
    .A(~A[6]),
    .B(0),
    .cin(carry[5]),
    .Y(AplusB[6]),
    .cout(carry[6])

  );
    
  full_adder input7_inst(
    .A(~A[7]),
    .B(0),
    .cin(carry[6]),
    .Y(AplusB[7]),
    .cout(carry[7])

  );
  
   
/*wire sum2;
assign sum2 = (A ^ B)+1;
assign Y = sum2 ^ cin;
assign cout = (sum2 * cin) | (A * B);
*/
endmodule

