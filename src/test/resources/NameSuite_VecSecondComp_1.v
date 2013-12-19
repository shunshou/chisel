module NameSuite_VecSecondComp_1(input clk,
    output io_requestor_0_req_ready,
    input io_requestor_0_req_valid,
    input io_requestor_0_req_bits_ready,
    output io_requestor_1_req_ready,
    input io_requestor_1_req_valid,
    input io_requestor_1_req_bits_ready,
    output io_requestor_2_req_ready,
    input io_requestor_2_req_valid,
    input io_requestor_2_req_bits_ready,
    output io_requestor_3_req_ready,
    input io_requestor_3_req_valid,
    input io_requestor_3_req_bits_ready,
    output io_mem
);

  wire T0;
  reg r_valid_3;
  wire T1;
  reg r_valid_2;
  wire T2;
  reg r_valid_1;
  wire T3;
  reg r_valid_0;

  assign io_mem = T0;
  assign T0 = r_valid_3 ? io_requestor_3_req_ready : T1;
  assign T1 = r_valid_2 ? io_requestor_2_req_ready : T2;
  assign T2 = r_valid_1 ? io_requestor_1_req_ready : T3;
  assign T3 = r_valid_0 ? io_requestor_0_req_ready : io_requestor_0_req_ready;

  always @(posedge clk) begin
    r_valid_3 <= io_requestor_3_req_ready;
    r_valid_2 <= io_requestor_2_req_ready;
    r_valid_1 <= io_requestor_1_req_ready;
    r_valid_0 <= io_requestor_0_req_ready;
  end
endmodule

