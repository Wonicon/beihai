/////////////////////////////////////////////////////////////////////////////////////////////
/// TSMC Library/IP Product
/// Filename: tphn28hpcpgv18_pwr.v
/// Technology: CLN28HT
/// Product Type: Standard I/O
/// Product Name: tphn28hpcpgv18
/// Version: 110a
////////////////////////////////////////////////////////////////////////////////////////////
////
///  STATEMENT OF USE
///
///  This information contains confidential and proprietary information of TSMC.
///  No part of this information may be reproduced, transmitted, transcribed,
///  stored in a retrieval system, or translated into any human or computer
///  language, in any form or by any means, electronic, mechanical, magnetic,
///  optical, chemical, manual, or otherwise, without the prior written permission
///  of TSMC.  This information was prepared for informational purpose and is for
///  use by TSMC's customers only.  TSMC reserves the right to make changes in the
///  information at any time and without notice.
///
////////////////////////////////////////////////////////////////////////////////////////////
`timescale 1ns/10ps

`celldefine
module PCLAMP_G (VDDESD, VSSESD);
  inout VDDESD, VSSESD;
  tran (VDDESD, VDDESD);
  tran (VSSESD, VSSESD);
endmodule
`endcelldefine

`celldefine
module PCLAMPC_H_G (VDDESD, VSSESD);
  inout VDDESD, VSSESD;
  tran (VDDESD, VDDESD);
  tran (VSSESD, VSSESD);
endmodule
`endcelldefine

`celldefine
module PCLAMPC_V_G (VDDESD, VSSESD);
  inout VDDESD, VSSESD;
  tran (VDDESD, VDDESD);
  tran (VSSESD, VSSESD);
endmodule
`endcelldefine

`celldefine
module PDB3A_H_G (AIO, TAVDD, TAVSS, VSS);
  inout AIO;
  inout TAVDD, TAVSS, VSS;

  tran (AIO, AIO);

`ifdef TETRAMAX
`else
always @(TAVDD) begin
  if (TAVDD !== 1'b1) begin
    $display("%t ++Abnormal Pattern: TAVDD++ : %m", $realtime);
    $stop(1);
  end
end

always @(TAVSS) begin
  if (TAVSS !== 1'b0) begin
    $display("%t ++Abnormal Pattern: TAVSS++ : %m", $realtime);
    $stop(1);
  end
end

always @(VSS) begin
  if (VSS !== 1'b0) begin
    $display("%t ++Abnormal Pattern: VSS++ : %m", $realtime);
    $stop(1);
  end
end
`endif

endmodule
`endcelldefine

`celldefine
module PDB3A_V_G (AIO, TAVDD, TAVSS, VSS);
  inout AIO;
  inout TAVDD, TAVSS, VSS;

  tran (AIO, AIO);

`ifdef TETRAMAX
`else
always @(TAVDD) begin
  if (TAVDD !== 1'b1) begin
    $display("%t ++Abnormal Pattern: TAVDD++ : %m", $realtime);
    $stop(1);
  end
end

always @(TAVSS) begin
  if (TAVSS !== 1'b0) begin
    $display("%t ++Abnormal Pattern: TAVSS++ : %m", $realtime);
    $stop(1);
  end
end

always @(VSS) begin
  if (VSS !== 1'b0) begin
    $display("%t ++Abnormal Pattern: VSS++ : %m", $realtime);
    $stop(1);
  end
end
`endif

endmodule
`endcelldefine

`celldefine
module PDB3AC_H_G (AIO, TACVDD, TACVSS, VSS);
  inout AIO;
  inout TACVDD, TACVSS, VSS;

  tran (AIO, AIO);

`ifdef TETRAMAX
`else
always @(TACVDD) begin
  if (TACVDD !== 1'b1) begin
    $display("%t ++Abnormal Pattern: TACVDD++ : %m", $realtime);
    $stop(1);
  end
end

always @(TACVSS) begin
  if (TACVSS !== 1'b0) begin
    $display("%t ++Abnormal Pattern: TACVSS++ : %m", $realtime);
    $stop(1);
  end
end

always @(VSS) begin
  if (VSS !== 1'b0) begin
    $display("%t ++Abnormal Pattern: VSS++ : %m", $realtime);
    $stop(1);
  end
end
`endif

endmodule
`endcelldefine

`celldefine
module PDB3AC_V_G (AIO, TACVDD, TACVSS, VSS);
  inout AIO;
  inout TACVDD, TACVSS, VSS;

  tran (AIO, AIO);

`ifdef TETRAMAX
`else
always @(TACVDD) begin
  if (TACVDD !== 1'b1) begin
    $display("%t ++Abnormal Pattern: TACVDD++ : %m", $realtime);
    $stop(1);
  end
end

always @(TACVSS) begin
  if (TACVSS !== 1'b0) begin
    $display("%t ++Abnormal Pattern: TACVSS++ : %m", $realtime);
    $stop(1);
  end
end

always @(VSS) begin
  if (VSS !== 1'b0) begin
    $display("%t ++Abnormal Pattern: VSS++ : %m", $realtime);
    $stop(1);
  end
end
`endif

endmodule
`endcelldefine

`celldefine
module PDDW04DGZ_H_G (I, OEN, REN, PAD, C, POC, VDD, VSS, VDDPST, VSSPST);
  input I, OEN, REN;
  inout PAD;
  inout POC, VDD, VSS, VDDPST, VSSPST;
  output C;

  wire MG, pull_pad, pull_c;
  parameter PullTime = 10000;

  not    (VDDN, VDD);
  and    (HZ, VDDN, VDDPST, POC);

  bufif0 (PAD_q, I, OEN);
  pmos   (MG, PAD_q, 1'b0);
  bufif1 (weak1, weak0) (PAD_i, 1'b0, pull_pad);
  pmos   (MG, PAD_i, 1'b0);
  pmos   (MG_tmp, MG, HZ);
  nmos   (MG_tmp, 1'bz, HZ);
  pmos   (PAD, MG_tmp, 1'b0);
  bufif1 (C_buf, PAD, 1'b1);
  bufif1 (weak0,weak1) (C_buf, 1'b0, pull_c);
  buf    (C_tmp, C_buf);
  nmos   (C_pre, 1'b0, HZ);
  pmos   (C_pre, C_tmp, HZ);
  pmos   (C, C_pre, 1'b0);
  not    (RE, REN);
  buf    #(PullTime,0) (pull_pad, RE);
  buf    (pull_c, RE);

`ifdef TETRAMAX
`else
  always @(PAD) begin
    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") && $countdrivers(PAD))
      $display("%t ++BUS CONFLICT++ : %m", $realtime);
  end

  always @(VDDPST) begin
    if (VDDPST !== 1'b1) begin
      $display("%t ++Abnormal Pattern: VDDPST++ : %m", $realtime);
      $stop(1);
    end
  end

  always @(VSS) begin
    if (VSS !== 1'b0) begin
      $display("%t ++Abnormal Pattern: VSS++ : %m", $realtime);
      $stop(1);
    end
  end

  always @(VSSPST) begin
    if (VSSPST !== 1'b0) begin
      $display("%t ++Abnormal Pattern: VSSPST++ : %m", $realtime);
      $stop(1);
    end
  end

  specify
    (I => PAD)=(0, 0);
    (OEN => PAD)=(0, 0, 0, 0, 0, 0);
    (PAD => C)=(0, 0);
  endspecify
`endif
endmodule
`endcelldefine

`celldefine
module PDDW04DGZ_V_G (I, OEN, REN, PAD, C, POC, VDD, VSS, VDDPST, VSSPST);
  input I, OEN, REN;
  inout PAD;
  inout POC, VDD, VSS, VDDPST, VSSPST;
  output C;

  wire MG, pull_pad, pull_c;
  parameter PullTime = 10000;

  not    (VDDN, VDD);
  and    (HZ, VDDN, VDDPST, POC);

  bufif0 (PAD_q, I, OEN);
  pmos   (MG, PAD_q, 1'b0);
  bufif1 (weak1, weak0) (PAD_i, 1'b0, pull_pad);
  pmos   (MG, PAD_i, 1'b0);
  pmos   (MG_tmp, MG, HZ);
  nmos   (MG_tmp, 1'bz, HZ);
  pmos   (PAD, MG_tmp, 1'b0);
  bufif1 (C_buf, PAD, 1'b1);
  bufif1 (weak0,weak1) (C_buf, 1'b0, pull_c);
  buf    (C_tmp, C_buf);
  nmos   (C_pre, 1'b0, HZ);
  pmos   (C_pre, C_tmp, HZ);
  pmos   (C, C_pre, 1'b0);
  not    (RE, REN);
  buf    #(PullTime,0) (pull_pad, RE);
  buf    (pull_c, RE);

`ifdef TETRAMAX
`else
  always @(PAD) begin
    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") && $countdrivers(PAD))
      $display("%t ++BUS CONFLICT++ : %m", $realtime);
  end

  always @(VDDPST) begin
    if (VDDPST !== 1'b1) begin
      $display("%t ++Abnormal Pattern: VDDPST++ : %m", $realtime);
      $stop(1);
    end
  end

  always @(VSS) begin
    if (VSS !== 1'b0) begin
      $display("%t ++Abnormal Pattern: VSS++ : %m", $realtime);
      $stop(1);
    end
  end

  always @(VSSPST) begin
    if (VSSPST !== 1'b0) begin
      $display("%t ++Abnormal Pattern: VSSPST++ : %m", $realtime);
      $stop(1);
    end
  end

  specify
    (I => PAD)=(0, 0);
    (OEN => PAD)=(0, 0, 0, 0, 0, 0);
    (PAD => C)=(0, 0);
  endspecify
`endif
endmodule
`endcelldefine

`celldefine
module PDDW04SDGZ_H_G (I, OEN, REN, PAD, C, POC, VDD, VSS, VDDPST, VSSPST);
  input I, OEN, REN;
  inout PAD;
  inout POC, VDD, VSS, VDDPST, VSSPST;
  output C;

  wire MG, pull_pad, pull_c;
  parameter PullTime = 10000;

  not    (VDDN, VDD);
  and    (HZ, VDDN, VDDPST, POC);

  bufif0 (PAD_q, I, OEN);
  pmos   (MG, PAD_q, 1'b0);
  bufif1 (weak1, weak0) (PAD_i, 1'b0, pull_pad);
  pmos   (MG, PAD_i, 1'b0);
  pmos   (MG_tmp, MG, HZ);
  nmos   (MG_tmp, 1'bz, HZ);
  pmos   (PAD, MG_tmp, 1'b0);
  bufif1 (C_buf, PAD, 1'b1);
  bufif1 (weak0,weak1) (C_buf, 1'b0, pull_c);
  buf    (C_tmp, C_buf);
  nmos   (C_pre, 1'b0, HZ);
  pmos   (C_pre, C_tmp, HZ);
  pmos   (C, C_pre, 1'b0);
  not    (RE, REN);
  buf    #(PullTime,0) (pull_pad, RE);
  buf    (pull_c, RE);

`ifdef TETRAMAX
`else
  always @(PAD) begin
    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") && $countdrivers(PAD))
      $display("%t ++BUS CONFLICT++ : %m", $realtime);
  end

  always @(VDDPST) begin
    if (VDDPST !== 1'b1) begin
      $display("%t ++Abnormal Pattern: VDDPST++ : %m", $realtime);
      $stop(1);
    end
  end

  always @(VSS) begin
    if (VSS !== 1'b0) begin
      $display("%t ++Abnormal Pattern: VSS++ : %m", $realtime);
      $stop(1);
    end
  end

  always @(VSSPST) begin
    if (VSSPST !== 1'b0) begin
      $display("%t ++Abnormal Pattern: VSSPST++ : %m", $realtime);
      $stop(1);
    end
  end

  specify
    (I => PAD)=(0, 0);
    (OEN => PAD)=(0, 0, 0, 0, 0, 0);
    (PAD => C)=(0, 0);
  endspecify
`endif
endmodule
`endcelldefine

`celldefine
module PDDW04SDGZ_V_G (I, OEN, REN, PAD, C, POC, VDD, VSS, VDDPST, VSSPST);
  input I, OEN, REN;
  inout PAD;
  inout POC, VDD, VSS, VDDPST, VSSPST;
  output C;

  wire MG, pull_pad, pull_c;
  parameter PullTime = 10000;

  not    (VDDN, VDD);
  and    (HZ, VDDN, VDDPST, POC);

  bufif0 (PAD_q, I, OEN);
  pmos   (MG, PAD_q, 1'b0);
  bufif1 (weak1, weak0) (PAD_i, 1'b0, pull_pad);
  pmos   (MG, PAD_i, 1'b0);
  pmos   (MG_tmp, MG, HZ);
  nmos   (MG_tmp, 1'bz, HZ);
  pmos   (PAD, MG_tmp, 1'b0);
  bufif1 (C_buf, PAD, 1'b1);
  bufif1 (weak0,weak1) (C_buf, 1'b0, pull_c);
  buf    (C_tmp, C_buf);
  nmos   (C_pre, 1'b0, HZ);
  pmos   (C_pre, C_tmp, HZ);
  pmos   (C, C_pre, 1'b0);
  not    (RE, REN);
  buf    #(PullTime,0) (pull_pad, RE);
  buf    (pull_c, RE);

`ifdef TETRAMAX
`else
  always @(PAD) begin
    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") && $countdrivers(PAD))
      $display("%t ++BUS CONFLICT++ : %m", $realtime);
  end

  always @(VDDPST) begin
    if (VDDPST !== 1'b1) begin
      $display("%t ++Abnormal Pattern: VDDPST++ : %m", $realtime);
      $stop(1);
    end
  end

  always @(VSS) begin
    if (VSS !== 1'b0) begin
      $display("%t ++Abnormal Pattern: VSS++ : %m", $realtime);
      $stop(1);
    end
  end

  always @(VSSPST) begin
    if (VSSPST !== 1'b0) begin
      $display("%t ++Abnormal Pattern: VSSPST++ : %m", $realtime);
      $stop(1);
    end
  end

  specify
    (I => PAD)=(0, 0);
    (OEN => PAD)=(0, 0, 0, 0, 0, 0);
    (PAD => C)=(0, 0);
  endspecify
`endif
endmodule
`endcelldefine

`celldefine
module PDDW08DGZ_H_G (I, OEN, REN, PAD, C, POC, VDD, VSS, VDDPST, VSSPST);
  input I, OEN, REN;
  inout PAD;
  inout POC, VDD, VSS, VDDPST, VSSPST;
  output C;

  wire MG, pull_pad, pull_c;
  parameter PullTime = 10000;

  not    (VDDN, VDD);
  and    (HZ, VDDN, VDDPST, POC);

  bufif0 (PAD_q, I, OEN);
  pmos   (MG, PAD_q, 1'b0);
  bufif1 (weak1, weak0) (PAD_i, 1'b0, pull_pad);
  pmos   (MG, PAD_i, 1'b0);
  pmos   (MG_tmp, MG, HZ);
  nmos   (MG_tmp, 1'bz, HZ);
  pmos   (PAD, MG_tmp, 1'b0);
  bufif1 (C_buf, PAD, 1'b1);
  bufif1 (weak0,weak1) (C_buf, 1'b0, pull_c);
  buf    (C_tmp, C_buf);
  nmos   (C_pre, 1'b0, HZ);
  pmos   (C_pre, C_tmp, HZ);
  pmos   (C, C_pre, 1'b0);
  not    (RE, REN);
  buf    #(PullTime,0) (pull_pad, RE);
  buf    (pull_c, RE);

`ifdef TETRAMAX
`else
  always @(PAD) begin
    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") && $countdrivers(PAD))
      $display("%t ++BUS CONFLICT++ : %m", $realtime);
  end

  always @(VDDPST) begin
    if (VDDPST !== 1'b1) begin
      $display("%t ++Abnormal Pattern: VDDPST++ : %m", $realtime);
      $stop(1);
    end
  end

  always @(VSS) begin
    if (VSS !== 1'b0) begin
      $display("%t ++Abnormal Pattern: VSS++ : %m", $realtime);
      $stop(1);
    end
  end

  always @(VSSPST) begin
    if (VSSPST !== 1'b0) begin
      $display("%t ++Abnormal Pattern: VSSPST++ : %m", $realtime);
      $stop(1);
    end
  end

  specify
    (I => PAD)=(0, 0);
    (OEN => PAD)=(0, 0, 0, 0, 0, 0);
    (PAD => C)=(0, 0);
  endspecify
`endif
endmodule
`endcelldefine

`celldefine
module PDDW08DGZ_V_G (I, OEN, REN, PAD, C, POC, VDD, VSS, VDDPST, VSSPST);
  input I, OEN, REN;
  inout PAD;
  inout POC, VDD, VSS, VDDPST, VSSPST;
  output C;

  wire MG, pull_pad, pull_c;
  parameter PullTime = 10000;

  not    (VDDN, VDD);
  and    (HZ, VDDN, VDDPST, POC);

  bufif0 (PAD_q, I, OEN);
  pmos   (MG, PAD_q, 1'b0);
  bufif1 (weak1, weak0) (PAD_i, 1'b0, pull_pad);
  pmos   (MG, PAD_i, 1'b0);
  pmos   (MG_tmp, MG, HZ);
  nmos   (MG_tmp, 1'bz, HZ);
  pmos   (PAD, MG_tmp, 1'b0);
  bufif1 (C_buf, PAD, 1'b1);
  bufif1 (weak0,weak1) (C_buf, 1'b0, pull_c);
  buf    (C_tmp, C_buf);
  nmos   (C_pre, 1'b0, HZ);
  pmos   (C_pre, C_tmp, HZ);
  pmos   (C, C_pre, 1'b0);
  not    (RE, REN);
  buf    #(PullTime,0) (pull_pad, RE);
  buf    (pull_c, RE);

`ifdef TETRAMAX
`else
  always @(PAD) begin
    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") && $countdrivers(PAD))
      $display("%t ++BUS CONFLICT++ : %m", $realtime);
  end

  always @(VDDPST) begin
    if (VDDPST !== 1'b1) begin
      $display("%t ++Abnormal Pattern: VDDPST++ : %m", $realtime);
      $stop(1);
    end
  end

  always @(VSS) begin
    if (VSS !== 1'b0) begin
      $display("%t ++Abnormal Pattern: VSS++ : %m", $realtime);
      $stop(1);
    end
  end

  always @(VSSPST) begin
    if (VSSPST !== 1'b0) begin
      $display("%t ++Abnormal Pattern: VSSPST++ : %m", $realtime);
      $stop(1);
    end
  end

  specify
    (I => PAD)=(0, 0);
    (OEN => PAD)=(0, 0, 0, 0, 0, 0);
    (PAD => C)=(0, 0);
  endspecify
`endif
endmodule
`endcelldefine

`celldefine
module PDDW08SDGZ_H_G (I, OEN, REN, PAD, C, POC, VDD, VSS, VDDPST, VSSPST);
  input I, OEN, REN;
  inout PAD;
  inout POC, VDD, VSS, VDDPST, VSSPST;
  output C;

  wire MG, pull_pad, pull_c;
  parameter PullTime = 10000;

  not    (VDDN, VDD);
  and    (HZ, VDDN, VDDPST, POC);

  bufif0 (PAD_q, I, OEN);
  pmos   (MG, PAD_q, 1'b0);
  bufif1 (weak1, weak0) (PAD_i, 1'b0, pull_pad);
  pmos   (MG, PAD_i, 1'b0);
  pmos   (MG_tmp, MG, HZ);
  nmos   (MG_tmp, 1'bz, HZ);
  pmos   (PAD, MG_tmp, 1'b0);
  bufif1 (C_buf, PAD, 1'b1);
  bufif1 (weak0,weak1) (C_buf, 1'b0, pull_c);
  buf    (C_tmp, C_buf);
  nmos   (C_pre, 1'b0, HZ);
  pmos   (C_pre, C_tmp, HZ);
  pmos   (C, C_pre, 1'b0);
  not    (RE, REN);
  buf    #(PullTime,0) (pull_pad, RE);
  buf    (pull_c, RE);

`ifdef TETRAMAX
`else
  always @(PAD) begin
    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") && $countdrivers(PAD))
      $display("%t ++BUS CONFLICT++ : %m", $realtime);
  end

  always @(VDDPST) begin
    if (VDDPST !== 1'b1) begin
      $display("%t ++Abnormal Pattern: VDDPST++ : %m", $realtime);
      $stop(1);
    end
  end

  always @(VSS) begin
    if (VSS !== 1'b0) begin
      $display("%t ++Abnormal Pattern: VSS++ : %m", $realtime);
      $stop(1);
    end
  end

  always @(VSSPST) begin
    if (VSSPST !== 1'b0) begin
      $display("%t ++Abnormal Pattern: VSSPST++ : %m", $realtime);
      $stop(1);
    end
  end

  specify
    (I => PAD)=(0, 0);
    (OEN => PAD)=(0, 0, 0, 0, 0, 0);
    (PAD => C)=(0, 0);
  endspecify
`endif
endmodule
`endcelldefine

`celldefine
module PDDW08SDGZ_V_G (I, OEN, REN, PAD, C, POC, VDD, VSS, VDDPST, VSSPST);
  input I, OEN, REN;
  inout PAD;
  inout POC, VDD, VSS, VDDPST, VSSPST;
  output C;

  wire MG, pull_pad, pull_c;
  parameter PullTime = 10000;

  not    (VDDN, VDD);
  and    (HZ, VDDN, VDDPST, POC);

  bufif0 (PAD_q, I, OEN);
  pmos   (MG, PAD_q, 1'b0);
  bufif1 (weak1, weak0) (PAD_i, 1'b0, pull_pad);
  pmos   (MG, PAD_i, 1'b0);
  pmos   (MG_tmp, MG, HZ);
  nmos   (MG_tmp, 1'bz, HZ);
  pmos   (PAD, MG_tmp, 1'b0);
  bufif1 (C_buf, PAD, 1'b1);
  bufif1 (weak0,weak1) (C_buf, 1'b0, pull_c);
  buf    (C_tmp, C_buf);
  nmos   (C_pre, 1'b0, HZ);
  pmos   (C_pre, C_tmp, HZ);
  pmos   (C, C_pre, 1'b0);
  not    (RE, REN);
  buf    #(PullTime,0) (pull_pad, RE);
  buf    (pull_c, RE);

`ifdef TETRAMAX
`else
  always @(PAD) begin
    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") && $countdrivers(PAD))
      $display("%t ++BUS CONFLICT++ : %m", $realtime);
  end

  always @(VDDPST) begin
    if (VDDPST !== 1'b1) begin
      $display("%t ++Abnormal Pattern: VDDPST++ : %m", $realtime);
      $stop(1);
    end
  end

  always @(VSS) begin
    if (VSS !== 1'b0) begin
      $display("%t ++Abnormal Pattern: VSS++ : %m", $realtime);
      $stop(1);
    end
  end

  always @(VSSPST) begin
    if (VSSPST !== 1'b0) begin
      $display("%t ++Abnormal Pattern: VSSPST++ : %m", $realtime);
      $stop(1);
    end
  end

  specify
    (I => PAD)=(0, 0);
    (OEN => PAD)=(0, 0, 0, 0, 0, 0);
    (PAD => C)=(0, 0);
  endspecify
`endif
endmodule
`endcelldefine

`celldefine
module PDDW12DGZ_H_G (I, OEN, REN, PAD, C, POC, VDD, VSS, VDDPST, VSSPST);
  input I, OEN, REN;
  inout PAD;
  inout POC, VDD, VSS, VDDPST, VSSPST;
  output C;

  wire MG, pull_pad, pull_c;
  parameter PullTime = 10000;

  not    (VDDN, VDD);
  and    (HZ, VDDN, VDDPST, POC);

  bufif0 (PAD_q, I, OEN);
  pmos   (MG, PAD_q, 1'b0);
  bufif1 (weak1, weak0) (PAD_i, 1'b0, pull_pad);
  pmos   (MG, PAD_i, 1'b0);
  pmos   (MG_tmp, MG, HZ);
  nmos   (MG_tmp, 1'bz, HZ);
  pmos   (PAD, MG_tmp, 1'b0);
  bufif1 (C_buf, PAD, 1'b1);
  bufif1 (weak0,weak1) (C_buf, 1'b0, pull_c);
  buf    (C_tmp, C_buf);
  nmos   (C_pre, 1'b0, HZ);
  pmos   (C_pre, C_tmp, HZ);
  pmos   (C, C_pre, 1'b0);
  not    (RE, REN);
  buf    #(PullTime,0) (pull_pad, RE);
  buf    (pull_c, RE);

`ifdef TETRAMAX
`else
  always @(PAD) begin
    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") && $countdrivers(PAD))
      $display("%t ++BUS CONFLICT++ : %m", $realtime);
  end

  always @(VDDPST) begin
    if (VDDPST !== 1'b1) begin
      $display("%t ++Abnormal Pattern: VDDPST++ : %m", $realtime);
      $stop(1);
    end
  end

  always @(VSS) begin
    if (VSS !== 1'b0) begin
      $display("%t ++Abnormal Pattern: VSS++ : %m", $realtime);
      $stop(1);
    end
  end

  always @(VSSPST) begin
    if (VSSPST !== 1'b0) begin
      $display("%t ++Abnormal Pattern: VSSPST++ : %m", $realtime);
      $stop(1);
    end
  end

  specify
    (I => PAD)=(0, 0);
    (OEN => PAD)=(0, 0, 0, 0, 0, 0);
    (PAD => C)=(0, 0);
  endspecify
`endif
endmodule
`endcelldefine

`celldefine
module PDDW12DGZ_V_G (I, OEN, REN, PAD, C, POC, VDD, VSS, VDDPST, VSSPST);
  input I, OEN, REN;
  inout PAD;
  inout POC, VDD, VSS, VDDPST, VSSPST;
  output C;

  wire MG, pull_pad, pull_c;
  parameter PullTime = 10000;

  not    (VDDN, VDD);
  and    (HZ, VDDN, VDDPST, POC);

  bufif0 (PAD_q, I, OEN);
  pmos   (MG, PAD_q, 1'b0);
  bufif1 (weak1, weak0) (PAD_i, 1'b0, pull_pad);
  pmos   (MG, PAD_i, 1'b0);
  pmos   (MG_tmp, MG, HZ);
  nmos   (MG_tmp, 1'bz, HZ);
  pmos   (PAD, MG_tmp, 1'b0);
  bufif1 (C_buf, PAD, 1'b1);
  bufif1 (weak0,weak1) (C_buf, 1'b0, pull_c);
  buf    (C_tmp, C_buf);
  nmos   (C_pre, 1'b0, HZ);
  pmos   (C_pre, C_tmp, HZ);
  pmos   (C, C_pre, 1'b0);
  not    (RE, REN);
  buf    #(PullTime,0) (pull_pad, RE);
  buf    (pull_c, RE);

`ifdef TETRAMAX
`else
  always @(PAD) begin
    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") && $countdrivers(PAD))
      $display("%t ++BUS CONFLICT++ : %m", $realtime);
  end

  always @(VDDPST) begin
    if (VDDPST !== 1'b1) begin
      $display("%t ++Abnormal Pattern: VDDPST++ : %m", $realtime);
      $stop(1);
    end
  end

  always @(VSS) begin
    if (VSS !== 1'b0) begin
      $display("%t ++Abnormal Pattern: VSS++ : %m", $realtime);
      $stop(1);
    end
  end

  always @(VSSPST) begin
    if (VSSPST !== 1'b0) begin
      $display("%t ++Abnormal Pattern: VSSPST++ : %m", $realtime);
      $stop(1);
    end
  end

  specify
    (I => PAD)=(0, 0);
    (OEN => PAD)=(0, 0, 0, 0, 0, 0);
    (PAD => C)=(0, 0);
  endspecify
`endif
endmodule
`endcelldefine

`celldefine
module PDDW12SDGZ_H_G (I, OEN, REN, PAD, C, POC, VDD, VSS, VDDPST, VSSPST);
  input I, OEN, REN;
  inout PAD;
  inout POC, VDD, VSS, VDDPST, VSSPST;
  output C;

  wire MG, pull_pad, pull_c;
  parameter PullTime = 10000;

  not    (VDDN, VDD);
  and    (HZ, VDDN, VDDPST, POC);

  bufif0 (PAD_q, I, OEN);
  pmos   (MG, PAD_q, 1'b0);
  bufif1 (weak1, weak0) (PAD_i, 1'b0, pull_pad);
  pmos   (MG, PAD_i, 1'b0);
  pmos   (MG_tmp, MG, HZ);
  nmos   (MG_tmp, 1'bz, HZ);
  pmos   (PAD, MG_tmp, 1'b0);
  bufif1 (C_buf, PAD, 1'b1);
  bufif1 (weak0,weak1) (C_buf, 1'b0, pull_c);
  buf    (C_tmp, C_buf);
  nmos   (C_pre, 1'b0, HZ);
  pmos   (C_pre, C_tmp, HZ);
  pmos   (C, C_pre, 1'b0);
  not    (RE, REN);
  buf    #(PullTime,0) (pull_pad, RE);
  buf    (pull_c, RE);

`ifdef TETRAMAX
`else
  always @(PAD) begin
    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") && $countdrivers(PAD))
      $display("%t ++BUS CONFLICT++ : %m", $realtime);
  end

  always @(VDDPST) begin
    if (VDDPST !== 1'b1) begin
      $display("%t ++Abnormal Pattern: VDDPST++ : %m", $realtime);
      $stop(1);
    end
  end

  always @(VSS) begin
    if (VSS !== 1'b0) begin
      $display("%t ++Abnormal Pattern: VSS++ : %m", $realtime);
      $stop(1);
    end
  end

  always @(VSSPST) begin
    if (VSSPST !== 1'b0) begin
      $display("%t ++Abnormal Pattern: VSSPST++ : %m", $realtime);
      $stop(1);
    end
  end

  specify
    (I => PAD)=(0, 0);
    (OEN => PAD)=(0, 0, 0, 0, 0, 0);
    (PAD => C)=(0, 0);
  endspecify
`endif
endmodule
`endcelldefine

`celldefine
module PDDW12SDGZ_V_G (I, OEN, REN, PAD, C, POC, VDD, VSS, VDDPST, VSSPST);
  input I, OEN, REN;
  inout PAD;
  inout POC, VDD, VSS, VDDPST, VSSPST;
  output C;

  wire MG, pull_pad, pull_c;
  parameter PullTime = 10000;

  not    (VDDN, VDD);
  and    (HZ, VDDN, VDDPST, POC);

  bufif0 (PAD_q, I, OEN);
  pmos   (MG, PAD_q, 1'b0);
  bufif1 (weak1, weak0) (PAD_i, 1'b0, pull_pad);
  pmos   (MG, PAD_i, 1'b0);
  pmos   (MG_tmp, MG, HZ);
  nmos   (MG_tmp, 1'bz, HZ);
  pmos   (PAD, MG_tmp, 1'b0);
  bufif1 (C_buf, PAD, 1'b1);
  bufif1 (weak0,weak1) (C_buf, 1'b0, pull_c);
  buf    (C_tmp, C_buf);
  nmos   (C_pre, 1'b0, HZ);
  pmos   (C_pre, C_tmp, HZ);
  pmos   (C, C_pre, 1'b0);
  not    (RE, REN);
  buf    #(PullTime,0) (pull_pad, RE);
  buf    (pull_c, RE);

`ifdef TETRAMAX
`else
  always @(PAD) begin
    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") && $countdrivers(PAD))
      $display("%t ++BUS CONFLICT++ : %m", $realtime);
  end

  always @(VDDPST) begin
    if (VDDPST !== 1'b1) begin
      $display("%t ++Abnormal Pattern: VDDPST++ : %m", $realtime);
      $stop(1);
    end
  end

  always @(VSS) begin
    if (VSS !== 1'b0) begin
      $display("%t ++Abnormal Pattern: VSS++ : %m", $realtime);
      $stop(1);
    end
  end

  always @(VSSPST) begin
    if (VSSPST !== 1'b0) begin
      $display("%t ++Abnormal Pattern: VSSPST++ : %m", $realtime);
      $stop(1);
    end
  end

  specify
    (I => PAD)=(0, 0);
    (OEN => PAD)=(0, 0, 0, 0, 0, 0);
    (PAD => C)=(0, 0);
  endspecify
`endif
endmodule
`endcelldefine

`celldefine
module PDDW16DGZ_H_G (I, OEN, REN, PAD, C, POC, VDD, VSS, VDDPST, VSSPST);
  input I, OEN, REN;
  inout PAD;
  inout POC, VDD, VSS, VDDPST, VSSPST;
  output C;

  wire MG, pull_pad, pull_c;
  parameter PullTime = 10000;

  not    (VDDN, VDD);
  and    (HZ, VDDN, VDDPST, POC);

  bufif0 (PAD_q, I, OEN);
  pmos   (MG, PAD_q, 1'b0);
  bufif1 (weak1, weak0) (PAD_i, 1'b0, pull_pad);
  pmos   (MG, PAD_i, 1'b0);
  pmos   (MG_tmp, MG, HZ);
  nmos   (MG_tmp, 1'bz, HZ);
  pmos   (PAD, MG_tmp, 1'b0);
  bufif1 (C_buf, PAD, 1'b1);
  bufif1 (weak0,weak1) (C_buf, 1'b0, pull_c);
  buf    (C_tmp, C_buf);
  nmos   (C_pre, 1'b0, HZ);
  pmos   (C_pre, C_tmp, HZ);
  pmos   (C, C_pre, 1'b0);
  not    (RE, REN);
  buf    #(PullTime,0) (pull_pad, RE);
  buf    (pull_c, RE);

`ifdef TETRAMAX
`else
  always @(PAD) begin
    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") && $countdrivers(PAD))
      $display("%t ++BUS CONFLICT++ : %m", $realtime);
  end

  always @(VDDPST) begin
    if (VDDPST !== 1'b1) begin
      $display("%t ++Abnormal Pattern: VDDPST++ : %m", $realtime);
      $stop(1);
    end
  end

  always @(VSS) begin
    if (VSS !== 1'b0) begin
      $display("%t ++Abnormal Pattern: VSS++ : %m", $realtime);
      $stop(1);
    end
  end

  always @(VSSPST) begin
    if (VSSPST !== 1'b0) begin
      $display("%t ++Abnormal Pattern: VSSPST++ : %m", $realtime);
      $stop(1);
    end
  end

  specify
    (I => PAD)=(0, 0);
    (OEN => PAD)=(0, 0, 0, 0, 0, 0);
    (PAD => C)=(0, 0);
  endspecify
`endif
endmodule
`endcelldefine

`celldefine
module PDDW16DGZ_V_G (I, OEN, REN, PAD, C, POC, VDD, VSS, VDDPST, VSSPST);
  input I, OEN, REN;
  inout PAD;
  inout POC, VDD, VSS, VDDPST, VSSPST;
  output C;

  wire MG, pull_pad, pull_c;
  parameter PullTime = 10000;

  not    (VDDN, VDD);
  and    (HZ, VDDN, VDDPST, POC);

  bufif0 (PAD_q, I, OEN);
  pmos   (MG, PAD_q, 1'b0);
  bufif1 (weak1, weak0) (PAD_i, 1'b0, pull_pad);
  pmos   (MG, PAD_i, 1'b0);
  pmos   (MG_tmp, MG, HZ);
  nmos   (MG_tmp, 1'bz, HZ);
  pmos   (PAD, MG_tmp, 1'b0);
  bufif1 (C_buf, PAD, 1'b1);
  bufif1 (weak0,weak1) (C_buf, 1'b0, pull_c);
  buf    (C_tmp, C_buf);
  nmos   (C_pre, 1'b0, HZ);
  pmos   (C_pre, C_tmp, HZ);
  pmos   (C, C_pre, 1'b0);
  not    (RE, REN);
  buf    #(PullTime,0) (pull_pad, RE);
  buf    (pull_c, RE);

`ifdef TETRAMAX
`else
  always @(PAD) begin
    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") && $countdrivers(PAD))
      $display("%t ++BUS CONFLICT++ : %m", $realtime);
  end

  always @(VDDPST) begin
    if (VDDPST !== 1'b1) begin
      $display("%t ++Abnormal Pattern: VDDPST++ : %m", $realtime);
      $stop(1);
    end
  end

  always @(VSS) begin
    if (VSS !== 1'b0) begin
      $display("%t ++Abnormal Pattern: VSS++ : %m", $realtime);
      $stop(1);
    end
  end

  always @(VSSPST) begin
    if (VSSPST !== 1'b0) begin
      $display("%t ++Abnormal Pattern: VSSPST++ : %m", $realtime);
      $stop(1);
    end
  end

  specify
    (I => PAD)=(0, 0);
    (OEN => PAD)=(0, 0, 0, 0, 0, 0);
    (PAD => C)=(0, 0);
  endspecify
`endif
endmodule
`endcelldefine

`celldefine
module PDDW16SDGZ_H_G (I, OEN, REN, PAD, C, POC, VDD, VSS, VDDPST, VSSPST);
  input I, OEN, REN;
  inout PAD;
  inout POC, VDD, VSS, VDDPST, VSSPST;
  output C;

  wire MG, pull_pad, pull_c;
  parameter PullTime = 10000;

  not    (VDDN, VDD);
  and    (HZ, VDDN, VDDPST, POC);

  bufif0 (PAD_q, I, OEN);
  pmos   (MG, PAD_q, 1'b0);
  bufif1 (weak1, weak0) (PAD_i, 1'b0, pull_pad);
  pmos   (MG, PAD_i, 1'b0);
  pmos   (MG_tmp, MG, HZ);
  nmos   (MG_tmp, 1'bz, HZ);
  pmos   (PAD, MG_tmp, 1'b0);
  bufif1 (C_buf, PAD, 1'b1);
  bufif1 (weak0,weak1) (C_buf, 1'b0, pull_c);
  buf    (C_tmp, C_buf);
  nmos   (C_pre, 1'b0, HZ);
  pmos   (C_pre, C_tmp, HZ);
  pmos   (C, C_pre, 1'b0);
  not    (RE, REN);
  buf    #(PullTime,0) (pull_pad, RE);
  buf    (pull_c, RE);

`ifdef TETRAMAX
`else
  always @(PAD) begin
    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") && $countdrivers(PAD))
      $display("%t ++BUS CONFLICT++ : %m", $realtime);
  end

  always @(VDDPST) begin
    if (VDDPST !== 1'b1) begin
      $display("%t ++Abnormal Pattern: VDDPST++ : %m", $realtime);
      $stop(1);
    end
  end

  always @(VSS) begin
    if (VSS !== 1'b0) begin
      $display("%t ++Abnormal Pattern: VSS++ : %m", $realtime);
      $stop(1);
    end
  end

  always @(VSSPST) begin
    if (VSSPST !== 1'b0) begin
      $display("%t ++Abnormal Pattern: VSSPST++ : %m", $realtime);
      $stop(1);
    end
  end

  specify
    (I => PAD)=(0, 0);
    (OEN => PAD)=(0, 0, 0, 0, 0, 0);
    (PAD => C)=(0, 0);
  endspecify
`endif
endmodule
`endcelldefine

`celldefine
module PDDW16SDGZ_V_G (I, OEN, REN, PAD, C, POC, VDD, VSS, VDDPST, VSSPST);
  input I, OEN, REN;
  inout PAD;
  inout POC, VDD, VSS, VDDPST, VSSPST;
  output C;

  wire MG, pull_pad, pull_c;
  parameter PullTime = 10000;

  not    (VDDN, VDD);
  and    (HZ, VDDN, VDDPST, POC);

  bufif0 (PAD_q, I, OEN);
  pmos   (MG, PAD_q, 1'b0);
  bufif1 (weak1, weak0) (PAD_i, 1'b0, pull_pad);
  pmos   (MG, PAD_i, 1'b0);
  pmos   (MG_tmp, MG, HZ);
  nmos   (MG_tmp, 1'bz, HZ);
  pmos   (PAD, MG_tmp, 1'b0);
  bufif1 (C_buf, PAD, 1'b1);
  bufif1 (weak0,weak1) (C_buf, 1'b0, pull_c);
  buf    (C_tmp, C_buf);
  nmos   (C_pre, 1'b0, HZ);
  pmos   (C_pre, C_tmp, HZ);
  pmos   (C, C_pre, 1'b0);
  not    (RE, REN);
  buf    #(PullTime,0) (pull_pad, RE);
  buf    (pull_c, RE);

`ifdef TETRAMAX
`else
  always @(PAD) begin
    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") && $countdrivers(PAD))
      $display("%t ++BUS CONFLICT++ : %m", $realtime);
  end

  always @(VDDPST) begin
    if (VDDPST !== 1'b1) begin
      $display("%t ++Abnormal Pattern: VDDPST++ : %m", $realtime);
      $stop(1);
    end
  end

  always @(VSS) begin
    if (VSS !== 1'b0) begin
      $display("%t ++Abnormal Pattern: VSS++ : %m", $realtime);
      $stop(1);
    end
  end

  always @(VSSPST) begin
    if (VSSPST !== 1'b0) begin
      $display("%t ++Abnormal Pattern: VSSPST++ : %m", $realtime);
      $stop(1);
    end
  end

  specify
    (I => PAD)=(0, 0);
    (OEN => PAD)=(0, 0, 0, 0, 0, 0);
    (PAD => C)=(0, 0);
  endspecify
`endif
endmodule
`endcelldefine

`celldefine
module PDUW04DGZ_H_G (I, OEN, REN, PAD, C, POC, VDD, VSS, VDDPST, VSSPST);
  input I, OEN, REN;
  inout PAD;
  inout POC, VDD, VSS, VDDPST, VSSPST;
  output C;

  wire MG, pull_pad, pull_c;
  parameter PullTime = 10000;

  not    (VDDN, VDD);
  and    (HZ, VDDN, VDDPST, POC);

  bufif0 (PAD_q, I, OEN);
  pmos   (MG, PAD_q, 1'b0);
  bufif1 (weak1, weak0) (PAD_i, 1'b1, pull_pad);
  pmos   (MG, PAD_i, 1'b0);
  pmos   (MG_tmp, MG, HZ);
  nmos   (MG_tmp, 1'bz, HZ);
  pmos   (PAD, MG_tmp, 1'b0);
  bufif1 (C_buf, PAD, 1'b1);
  bufif1 (weak0,weak1) (C_buf, 1'b1, pull_c);
  buf    (C_tmp, C_buf);
  nmos   (C_pre, 1'b0, HZ);
  pmos   (C_pre, C_tmp, HZ);
  pmos   (C, C_pre, 1'b0);
  not    (RE, REN);
  buf    #(PullTime,0) (pull_pad, RE);
  buf    (pull_c, RE);

`ifdef TETRAMAX
`else
  always @(PAD) begin
    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") && $countdrivers(PAD))
      $display("%t ++BUS CONFLICT++ : %m", $realtime);
  end

  always @(VDDPST) begin
    if (VDDPST !== 1'b1) begin
      $display("%t ++Abnormal Pattern: VDDPST++ : %m", $realtime);
      $stop(1);
    end
  end

  always @(VSS) begin
    if (VSS !== 1'b0) begin
      $display("%t ++Abnormal Pattern: VSS++ : %m", $realtime);
      $stop(1);
    end
  end

  always @(VSSPST) begin
    if (VSSPST !== 1'b0) begin
      $display("%t ++Abnormal Pattern: VSSPST++ : %m", $realtime);
      $stop(1);
    end
  end

  specify
    (I => PAD)=(0, 0);
    (OEN => PAD)=(0, 0, 0, 0, 0, 0);
    (PAD => C)=(0, 0);
  endspecify
`endif
endmodule
`endcelldefine

`celldefine
module PDUW04DGZ_V_G (I, OEN, REN, PAD, C, POC, VDD, VSS, VDDPST, VSSPST);
  input I, OEN, REN;
  inout PAD;
  inout POC, VDD, VSS, VDDPST, VSSPST;
  output C;

  wire MG, pull_pad, pull_c;
  parameter PullTime = 10000;

  not    (VDDN, VDD);
  and    (HZ, VDDN, VDDPST, POC);

  bufif0 (PAD_q, I, OEN);
  pmos   (MG, PAD_q, 1'b0);
  bufif1 (weak1, weak0) (PAD_i, 1'b1, pull_pad);
  pmos   (MG, PAD_i, 1'b0);
  pmos   (MG_tmp, MG, HZ);
  nmos   (MG_tmp, 1'bz, HZ);
  pmos   (PAD, MG_tmp, 1'b0);
  bufif1 (C_buf, PAD, 1'b1);
  bufif1 (weak0,weak1) (C_buf, 1'b1, pull_c);
  buf    (C_tmp, C_buf);
  nmos   (C_pre, 1'b0, HZ);
  pmos   (C_pre, C_tmp, HZ);
  pmos   (C, C_pre, 1'b0);
  not    (RE, REN);
  buf    #(PullTime,0) (pull_pad, RE);
  buf    (pull_c, RE);

`ifdef TETRAMAX
`else
  always @(PAD) begin
    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") && $countdrivers(PAD))
      $display("%t ++BUS CONFLICT++ : %m", $realtime);
  end

  always @(VDDPST) begin
    if (VDDPST !== 1'b1) begin
      $display("%t ++Abnormal Pattern: VDDPST++ : %m", $realtime);
      $stop(1);
    end
  end

  always @(VSS) begin
    if (VSS !== 1'b0) begin
      $display("%t ++Abnormal Pattern: VSS++ : %m", $realtime);
      $stop(1);
    end
  end

  always @(VSSPST) begin
    if (VSSPST !== 1'b0) begin
      $display("%t ++Abnormal Pattern: VSSPST++ : %m", $realtime);
      $stop(1);
    end
  end

  specify
    (I => PAD)=(0, 0);
    (OEN => PAD)=(0, 0, 0, 0, 0, 0);
    (PAD => C)=(0, 0);
  endspecify
`endif
endmodule
`endcelldefine

`celldefine
module PDUW04SDGZ_H_G (I, OEN, REN, PAD, C, POC, VDD, VSS, VDDPST, VSSPST);
  input I, OEN, REN;
  inout PAD;
  inout POC, VDD, VSS, VDDPST, VSSPST;
  output C;

  wire MG, pull_pad, pull_c;
  parameter PullTime = 10000;

  not    (VDDN, VDD);
  and    (HZ, VDDN, VDDPST, POC);

  bufif0 (PAD_q, I, OEN);
  pmos   (MG, PAD_q, 1'b0);
  bufif1 (weak1, weak0) (PAD_i, 1'b1, pull_pad);
  pmos   (MG, PAD_i, 1'b0);
  pmos   (MG_tmp, MG, HZ);
  nmos   (MG_tmp, 1'bz, HZ);
  pmos   (PAD, MG_tmp, 1'b0);
  bufif1 (C_buf, PAD, 1'b1);
  bufif1 (weak0,weak1) (C_buf, 1'b1, pull_c);
  buf    (C_tmp, C_buf);
  nmos   (C_pre, 1'b0, HZ);
  pmos   (C_pre, C_tmp, HZ);
  pmos   (C, C_pre, 1'b0);
  not    (RE, REN);
  buf    #(PullTime,0) (pull_pad, RE);
  buf    (pull_c, RE);

`ifdef TETRAMAX
`else
  always @(PAD) begin
    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") && $countdrivers(PAD))
      $display("%t ++BUS CONFLICT++ : %m", $realtime);
  end

  always @(VDDPST) begin
    if (VDDPST !== 1'b1) begin
      $display("%t ++Abnormal Pattern: VDDPST++ : %m", $realtime);
      $stop(1);
    end
  end

  always @(VSS) begin
    if (VSS !== 1'b0) begin
      $display("%t ++Abnormal Pattern: VSS++ : %m", $realtime);
      $stop(1);
    end
  end

  always @(VSSPST) begin
    if (VSSPST !== 1'b0) begin
      $display("%t ++Abnormal Pattern: VSSPST++ : %m", $realtime);
      $stop(1);
    end
  end

  specify
    (I => PAD)=(0, 0);
    (OEN => PAD)=(0, 0, 0, 0, 0, 0);
    (PAD => C)=(0, 0);
  endspecify
`endif
endmodule
`endcelldefine

`celldefine
module PDUW04SDGZ_V_G (I, OEN, REN, PAD, C, POC, VDD, VSS, VDDPST, VSSPST);
  input I, OEN, REN;
  inout PAD;
  inout POC, VDD, VSS, VDDPST, VSSPST;
  output C;

  wire MG, pull_pad, pull_c;
  parameter PullTime = 10000;

  not    (VDDN, VDD);
  and    (HZ, VDDN, VDDPST, POC);

  bufif0 (PAD_q, I, OEN);
  pmos   (MG, PAD_q, 1'b0);
  bufif1 (weak1, weak0) (PAD_i, 1'b1, pull_pad);
  pmos   (MG, PAD_i, 1'b0);
  pmos   (MG_tmp, MG, HZ);
  nmos   (MG_tmp, 1'bz, HZ);
  pmos   (PAD, MG_tmp, 1'b0);
  bufif1 (C_buf, PAD, 1'b1);
  bufif1 (weak0,weak1) (C_buf, 1'b1, pull_c);
  buf    (C_tmp, C_buf);
  nmos   (C_pre, 1'b0, HZ);
  pmos   (C_pre, C_tmp, HZ);
  pmos   (C, C_pre, 1'b0);
  not    (RE, REN);
  buf    #(PullTime,0) (pull_pad, RE);
  buf    (pull_c, RE);

`ifdef TETRAMAX
`else
  always @(PAD) begin
    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") && $countdrivers(PAD))
      $display("%t ++BUS CONFLICT++ : %m", $realtime);
  end

  always @(VDDPST) begin
    if (VDDPST !== 1'b1) begin
      $display("%t ++Abnormal Pattern: VDDPST++ : %m", $realtime);
      $stop(1);
    end
  end

  always @(VSS) begin
    if (VSS !== 1'b0) begin
      $display("%t ++Abnormal Pattern: VSS++ : %m", $realtime);
      $stop(1);
    end
  end

  always @(VSSPST) begin
    if (VSSPST !== 1'b0) begin
      $display("%t ++Abnormal Pattern: VSSPST++ : %m", $realtime);
      $stop(1);
    end
  end

  specify
    (I => PAD)=(0, 0);
    (OEN => PAD)=(0, 0, 0, 0, 0, 0);
    (PAD => C)=(0, 0);
  endspecify
`endif
endmodule
`endcelldefine

`celldefine
module PDUW08DGZ_H_G (I, OEN, REN, PAD, C, POC, VDD, VSS, VDDPST, VSSPST);
  input I, OEN, REN;
  inout PAD;
  inout POC, VDD, VSS, VDDPST, VSSPST;
  output C;

  wire MG, pull_pad, pull_c;
  parameter PullTime = 10000;

  not    (VDDN, VDD);
  and    (HZ, VDDN, VDDPST, POC);

  bufif0 (PAD_q, I, OEN);
  pmos   (MG, PAD_q, 1'b0);
  bufif1 (weak1, weak0) (PAD_i, 1'b1, pull_pad);
  pmos   (MG, PAD_i, 1'b0);
  pmos   (MG_tmp, MG, HZ);
  nmos   (MG_tmp, 1'bz, HZ);
  pmos   (PAD, MG_tmp, 1'b0);
  bufif1 (C_buf, PAD, 1'b1);
  bufif1 (weak0,weak1) (C_buf, 1'b1, pull_c);
  buf    (C_tmp, C_buf);
  nmos   (C_pre, 1'b0, HZ);
  pmos   (C_pre, C_tmp, HZ);
  pmos   (C, C_pre, 1'b0);
  not    (RE, REN);
  buf    #(PullTime,0) (pull_pad, RE);
  buf    (pull_c, RE);

`ifdef TETRAMAX
`else
  always @(PAD) begin
    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") && $countdrivers(PAD))
      $display("%t ++BUS CONFLICT++ : %m", $realtime);
  end

  always @(VDDPST) begin
    if (VDDPST !== 1'b1) begin
      $display("%t ++Abnormal Pattern: VDDPST++ : %m", $realtime);
      $stop(1);
    end
  end

  always @(VSS) begin
    if (VSS !== 1'b0) begin
      $display("%t ++Abnormal Pattern: VSS++ : %m", $realtime);
      $stop(1);
    end
  end

  always @(VSSPST) begin
    if (VSSPST !== 1'b0) begin
      $display("%t ++Abnormal Pattern: VSSPST++ : %m", $realtime);
      $stop(1);
    end
  end

  specify
    (I => PAD)=(0, 0);
    (OEN => PAD)=(0, 0, 0, 0, 0, 0);
    (PAD => C)=(0, 0);
  endspecify
`endif
endmodule
`endcelldefine

`celldefine
module PDUW08DGZ_V_G (I, OEN, REN, PAD, C, POC, VDD, VSS, VDDPST, VSSPST);
  input I, OEN, REN;
  inout PAD;
  inout POC, VDD, VSS, VDDPST, VSSPST;
  output C;

  wire MG, pull_pad, pull_c;
  parameter PullTime = 10000;

  not    (VDDN, VDD);
  and    (HZ, VDDN, VDDPST, POC);

  bufif0 (PAD_q, I, OEN);
  pmos   (MG, PAD_q, 1'b0);
  bufif1 (weak1, weak0) (PAD_i, 1'b1, pull_pad);
  pmos   (MG, PAD_i, 1'b0);
  pmos   (MG_tmp, MG, HZ);
  nmos   (MG_tmp, 1'bz, HZ);
  pmos   (PAD, MG_tmp, 1'b0);
  bufif1 (C_buf, PAD, 1'b1);
  bufif1 (weak0,weak1) (C_buf, 1'b1, pull_c);
  buf    (C_tmp, C_buf);
  nmos   (C_pre, 1'b0, HZ);
  pmos   (C_pre, C_tmp, HZ);
  pmos   (C, C_pre, 1'b0);
  not    (RE, REN);
  buf    #(PullTime,0) (pull_pad, RE);
  buf    (pull_c, RE);

`ifdef TETRAMAX
`else
  always @(PAD) begin
    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") && $countdrivers(PAD))
      $display("%t ++BUS CONFLICT++ : %m", $realtime);
  end

  always @(VDDPST) begin
    if (VDDPST !== 1'b1) begin
      $display("%t ++Abnormal Pattern: VDDPST++ : %m", $realtime);
      $stop(1);
    end
  end

  always @(VSS) begin
    if (VSS !== 1'b0) begin
      $display("%t ++Abnormal Pattern: VSS++ : %m", $realtime);
      $stop(1);
    end
  end

  always @(VSSPST) begin
    if (VSSPST !== 1'b0) begin
      $display("%t ++Abnormal Pattern: VSSPST++ : %m", $realtime);
      $stop(1);
    end
  end

  specify
    (I => PAD)=(0, 0);
    (OEN => PAD)=(0, 0, 0, 0, 0, 0);
    (PAD => C)=(0, 0);
  endspecify
`endif
endmodule
`endcelldefine

`celldefine
module PDUW08SDGZ_H_G (I, OEN, REN, PAD, C, POC, VDD, VSS, VDDPST, VSSPST);
  input I, OEN, REN;
  inout PAD;
  inout POC, VDD, VSS, VDDPST, VSSPST;
  output C;

  wire MG, pull_pad, pull_c;
  parameter PullTime = 10000;

  not    (VDDN, VDD);
  and    (HZ, VDDN, VDDPST, POC);

  bufif0 (PAD_q, I, OEN);
  pmos   (MG, PAD_q, 1'b0);
  bufif1 (weak1, weak0) (PAD_i, 1'b1, pull_pad);
  pmos   (MG, PAD_i, 1'b0);
  pmos   (MG_tmp, MG, HZ);
  nmos   (MG_tmp, 1'bz, HZ);
  pmos   (PAD, MG_tmp, 1'b0);
  bufif1 (C_buf, PAD, 1'b1);
  bufif1 (weak0,weak1) (C_buf, 1'b1, pull_c);
  buf    (C_tmp, C_buf);
  nmos   (C_pre, 1'b0, HZ);
  pmos   (C_pre, C_tmp, HZ);
  pmos   (C, C_pre, 1'b0);
  not    (RE, REN);
  buf    #(PullTime,0) (pull_pad, RE);
  buf    (pull_c, RE);

`ifdef TETRAMAX
`else
  always @(PAD) begin
    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") && $countdrivers(PAD))
      $display("%t ++BUS CONFLICT++ : %m", $realtime);
  end

  always @(VDDPST) begin
    if (VDDPST !== 1'b1) begin
      $display("%t ++Abnormal Pattern: VDDPST++ : %m", $realtime);
      $stop(1);
    end
  end

  always @(VSS) begin
    if (VSS !== 1'b0) begin
      $display("%t ++Abnormal Pattern: VSS++ : %m", $realtime);
      $stop(1);
    end
  end

  always @(VSSPST) begin
    if (VSSPST !== 1'b0) begin
      $display("%t ++Abnormal Pattern: VSSPST++ : %m", $realtime);
      $stop(1);
    end
  end

  specify
    (I => PAD)=(0, 0);
    (OEN => PAD)=(0, 0, 0, 0, 0, 0);
    (PAD => C)=(0, 0);
  endspecify
`endif
endmodule
`endcelldefine

`celldefine
module PDUW08SDGZ_V_G (I, OEN, REN, PAD, C, POC, VDD, VSS, VDDPST, VSSPST);
  input I, OEN, REN;
  inout PAD;
  inout POC, VDD, VSS, VDDPST, VSSPST;
  output C;

  wire MG, pull_pad, pull_c;
  parameter PullTime = 10000;

  not    (VDDN, VDD);
  and    (HZ, VDDN, VDDPST, POC);

  bufif0 (PAD_q, I, OEN);
  pmos   (MG, PAD_q, 1'b0);
  bufif1 (weak1, weak0) (PAD_i, 1'b1, pull_pad);
  pmos   (MG, PAD_i, 1'b0);
  pmos   (MG_tmp, MG, HZ);
  nmos   (MG_tmp, 1'bz, HZ);
  pmos   (PAD, MG_tmp, 1'b0);
  bufif1 (C_buf, PAD, 1'b1);
  bufif1 (weak0,weak1) (C_buf, 1'b1, pull_c);
  buf    (C_tmp, C_buf);
  nmos   (C_pre, 1'b0, HZ);
  pmos   (C_pre, C_tmp, HZ);
  pmos   (C, C_pre, 1'b0);
  not    (RE, REN);
  buf    #(PullTime,0) (pull_pad, RE);
  buf    (pull_c, RE);

`ifdef TETRAMAX
`else
  always @(PAD) begin
    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") && $countdrivers(PAD))
      $display("%t ++BUS CONFLICT++ : %m", $realtime);
  end

  always @(VDDPST) begin
    if (VDDPST !== 1'b1) begin
      $display("%t ++Abnormal Pattern: VDDPST++ : %m", $realtime);
      $stop(1);
    end
  end

  always @(VSS) begin
    if (VSS !== 1'b0) begin
      $display("%t ++Abnormal Pattern: VSS++ : %m", $realtime);
      $stop(1);
    end
  end

  always @(VSSPST) begin
    if (VSSPST !== 1'b0) begin
      $display("%t ++Abnormal Pattern: VSSPST++ : %m", $realtime);
      $stop(1);
    end
  end

  specify
    (I => PAD)=(0, 0);
    (OEN => PAD)=(0, 0, 0, 0, 0, 0);
    (PAD => C)=(0, 0);
  endspecify
`endif
endmodule
`endcelldefine

`celldefine
module PDUW12DGZ_H_G (I, OEN, REN, PAD, C, POC, VDD, VSS, VDDPST, VSSPST);
  input I, OEN, REN;
  inout PAD;
  inout POC, VDD, VSS, VDDPST, VSSPST;
  output C;

  wire MG, pull_pad, pull_c;
  parameter PullTime = 10000;

  not    (VDDN, VDD);
  and    (HZ, VDDN, VDDPST, POC);

  bufif0 (PAD_q, I, OEN);
  pmos   (MG, PAD_q, 1'b0);
  bufif1 (weak1, weak0) (PAD_i, 1'b1, pull_pad);
  pmos   (MG, PAD_i, 1'b0);
  pmos   (MG_tmp, MG, HZ);
  nmos   (MG_tmp, 1'bz, HZ);
  pmos   (PAD, MG_tmp, 1'b0);
  bufif1 (C_buf, PAD, 1'b1);
  bufif1 (weak0,weak1) (C_buf, 1'b1, pull_c);
  buf    (C_tmp, C_buf);
  nmos   (C_pre, 1'b0, HZ);
  pmos   (C_pre, C_tmp, HZ);
  pmos   (C, C_pre, 1'b0);
  not    (RE, REN);
  buf    #(PullTime,0) (pull_pad, RE);
  buf    (pull_c, RE);

`ifdef TETRAMAX
`else
  always @(PAD) begin
    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") && $countdrivers(PAD))
      $display("%t ++BUS CONFLICT++ : %m", $realtime);
  end

  always @(VDDPST) begin
    if (VDDPST !== 1'b1) begin
      $display("%t ++Abnormal Pattern: VDDPST++ : %m", $realtime);
      $stop(1);
    end
  end

  always @(VSS) begin
    if (VSS !== 1'b0) begin
      $display("%t ++Abnormal Pattern: VSS++ : %m", $realtime);
      $stop(1);
    end
  end

  always @(VSSPST) begin
    if (VSSPST !== 1'b0) begin
      $display("%t ++Abnormal Pattern: VSSPST++ : %m", $realtime);
      $stop(1);
    end
  end

  specify
    (I => PAD)=(0, 0);
    (OEN => PAD)=(0, 0, 0, 0, 0, 0);
    (PAD => C)=(0, 0);
  endspecify
`endif
endmodule
`endcelldefine

`celldefine
module PDUW12DGZ_V_G (I, OEN, REN, PAD, C, POC, VDD, VSS, VDDPST, VSSPST);
  input I, OEN, REN;
  inout PAD;
  inout POC, VDD, VSS, VDDPST, VSSPST;
  output C;

  wire MG, pull_pad, pull_c;
  parameter PullTime = 10000;

  not    (VDDN, VDD);
  and    (HZ, VDDN, VDDPST, POC);

  bufif0 (PAD_q, I, OEN);
  pmos   (MG, PAD_q, 1'b0);
  bufif1 (weak1, weak0) (PAD_i, 1'b1, pull_pad);
  pmos   (MG, PAD_i, 1'b0);
  pmos   (MG_tmp, MG, HZ);
  nmos   (MG_tmp, 1'bz, HZ);
  pmos   (PAD, MG_tmp, 1'b0);
  bufif1 (C_buf, PAD, 1'b1);
  bufif1 (weak0,weak1) (C_buf, 1'b1, pull_c);
  buf    (C_tmp, C_buf);
  nmos   (C_pre, 1'b0, HZ);
  pmos   (C_pre, C_tmp, HZ);
  pmos   (C, C_pre, 1'b0);
  not    (RE, REN);
  buf    #(PullTime,0) (pull_pad, RE);
  buf    (pull_c, RE);

`ifdef TETRAMAX
`else
  always @(PAD) begin
    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") && $countdrivers(PAD))
      $display("%t ++BUS CONFLICT++ : %m", $realtime);
  end

  always @(VDDPST) begin
    if (VDDPST !== 1'b1) begin
      $display("%t ++Abnormal Pattern: VDDPST++ : %m", $realtime);
      $stop(1);
    end
  end

  always @(VSS) begin
    if (VSS !== 1'b0) begin
      $display("%t ++Abnormal Pattern: VSS++ : %m", $realtime);
      $stop(1);
    end
  end

  always @(VSSPST) begin
    if (VSSPST !== 1'b0) begin
      $display("%t ++Abnormal Pattern: VSSPST++ : %m", $realtime);
      $stop(1);
    end
  end

  specify
    (I => PAD)=(0, 0);
    (OEN => PAD)=(0, 0, 0, 0, 0, 0);
    (PAD => C)=(0, 0);
  endspecify
`endif
endmodule
`endcelldefine

`celldefine
module PDUW12SDGZ_H_G (I, OEN, REN, PAD, C, POC, VDD, VSS, VDDPST, VSSPST);
  input I, OEN, REN;
  inout PAD;
  inout POC, VDD, VSS, VDDPST, VSSPST;
  output C;

  wire MG, pull_pad, pull_c;
  parameter PullTime = 10000;

  not    (VDDN, VDD);
  and    (HZ, VDDN, VDDPST, POC);

  bufif0 (PAD_q, I, OEN);
  pmos   (MG, PAD_q, 1'b0);
  bufif1 (weak1, weak0) (PAD_i, 1'b1, pull_pad);
  pmos   (MG, PAD_i, 1'b0);
  pmos   (MG_tmp, MG, HZ);
  nmos   (MG_tmp, 1'bz, HZ);
  pmos   (PAD, MG_tmp, 1'b0);
  bufif1 (C_buf, PAD, 1'b1);
  bufif1 (weak0,weak1) (C_buf, 1'b1, pull_c);
  buf    (C_tmp, C_buf);
  nmos   (C_pre, 1'b0, HZ);
  pmos   (C_pre, C_tmp, HZ);
  pmos   (C, C_pre, 1'b0);
  not    (RE, REN);
  buf    #(PullTime,0) (pull_pad, RE);
  buf    (pull_c, RE);

`ifdef TETRAMAX
`else
  always @(PAD) begin
    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") && $countdrivers(PAD))
      $display("%t ++BUS CONFLICT++ : %m", $realtime);
  end

  always @(VDDPST) begin
    if (VDDPST !== 1'b1) begin
      $display("%t ++Abnormal Pattern: VDDPST++ : %m", $realtime);
      $stop(1);
    end
  end

  always @(VSS) begin
    if (VSS !== 1'b0) begin
      $display("%t ++Abnormal Pattern: VSS++ : %m", $realtime);
      $stop(1);
    end
  end

  always @(VSSPST) begin
    if (VSSPST !== 1'b0) begin
      $display("%t ++Abnormal Pattern: VSSPST++ : %m", $realtime);
      $stop(1);
    end
  end

  specify
    (I => PAD)=(0, 0);
    (OEN => PAD)=(0, 0, 0, 0, 0, 0);
    (PAD => C)=(0, 0);
  endspecify
`endif
endmodule
`endcelldefine

`celldefine
module PDUW12SDGZ_V_G (I, OEN, REN, PAD, C, POC, VDD, VSS, VDDPST, VSSPST);
  input I, OEN, REN;
  inout PAD;
  inout POC, VDD, VSS, VDDPST, VSSPST;
  output C;

  wire MG, pull_pad, pull_c;
  parameter PullTime = 10000;

  not    (VDDN, VDD);
  and    (HZ, VDDN, VDDPST, POC);

  bufif0 (PAD_q, I, OEN);
  pmos   (MG, PAD_q, 1'b0);
  bufif1 (weak1, weak0) (PAD_i, 1'b1, pull_pad);
  pmos   (MG, PAD_i, 1'b0);
  pmos   (MG_tmp, MG, HZ);
  nmos   (MG_tmp, 1'bz, HZ);
  pmos   (PAD, MG_tmp, 1'b0);
  bufif1 (C_buf, PAD, 1'b1);
  bufif1 (weak0,weak1) (C_buf, 1'b1, pull_c);
  buf    (C_tmp, C_buf);
  nmos   (C_pre, 1'b0, HZ);
  pmos   (C_pre, C_tmp, HZ);
  pmos   (C, C_pre, 1'b0);
  not    (RE, REN);
  buf    #(PullTime,0) (pull_pad, RE);
  buf    (pull_c, RE);

`ifdef TETRAMAX
`else
  always @(PAD) begin
    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") && $countdrivers(PAD))
      $display("%t ++BUS CONFLICT++ : %m", $realtime);
  end

  always @(VDDPST) begin
    if (VDDPST !== 1'b1) begin
      $display("%t ++Abnormal Pattern: VDDPST++ : %m", $realtime);
      $stop(1);
    end
  end

  always @(VSS) begin
    if (VSS !== 1'b0) begin
      $display("%t ++Abnormal Pattern: VSS++ : %m", $realtime);
      $stop(1);
    end
  end

  always @(VSSPST) begin
    if (VSSPST !== 1'b0) begin
      $display("%t ++Abnormal Pattern: VSSPST++ : %m", $realtime);
      $stop(1);
    end
  end

  specify
    (I => PAD)=(0, 0);
    (OEN => PAD)=(0, 0, 0, 0, 0, 0);
    (PAD => C)=(0, 0);
  endspecify
`endif
endmodule
`endcelldefine

`celldefine
module PDUW16DGZ_H_G (I, OEN, REN, PAD, C, POC, VDD, VSS, VDDPST, VSSPST);
  input I, OEN, REN;
  inout PAD;
  inout POC, VDD, VSS, VDDPST, VSSPST;
  output C;

  wire MG, pull_pad, pull_c;
  parameter PullTime = 10000;

  not    (VDDN, VDD);
  and    (HZ, VDDN, VDDPST, POC);

  bufif0 (PAD_q, I, OEN);
  pmos   (MG, PAD_q, 1'b0);
  bufif1 (weak1, weak0) (PAD_i, 1'b1, pull_pad);
  pmos   (MG, PAD_i, 1'b0);
  pmos   (MG_tmp, MG, HZ);
  nmos   (MG_tmp, 1'bz, HZ);
  pmos   (PAD, MG_tmp, 1'b0);
  bufif1 (C_buf, PAD, 1'b1);
  bufif1 (weak0,weak1) (C_buf, 1'b1, pull_c);
  buf    (C_tmp, C_buf);
  nmos   (C_pre, 1'b0, HZ);
  pmos   (C_pre, C_tmp, HZ);
  pmos   (C, C_pre, 1'b0);
  not    (RE, REN);
  buf    #(PullTime,0) (pull_pad, RE);
  buf    (pull_c, RE);

`ifdef TETRAMAX
`else
  always @(PAD) begin
    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") && $countdrivers(PAD))
      $display("%t ++BUS CONFLICT++ : %m", $realtime);
  end

  always @(VDDPST) begin
    if (VDDPST !== 1'b1) begin
      $display("%t ++Abnormal Pattern: VDDPST++ : %m", $realtime);
      $stop(1);
    end
  end

  always @(VSS) begin
    if (VSS !== 1'b0) begin
      $display("%t ++Abnormal Pattern: VSS++ : %m", $realtime);
      $stop(1);
    end
  end

  always @(VSSPST) begin
    if (VSSPST !== 1'b0) begin
      $display("%t ++Abnormal Pattern: VSSPST++ : %m", $realtime);
      $stop(1);
    end
  end

  specify
    (I => PAD)=(0, 0);
    (OEN => PAD)=(0, 0, 0, 0, 0, 0);
    (PAD => C)=(0, 0);
  endspecify
`endif
endmodule
`endcelldefine

`celldefine
module PDUW16DGZ_V_G (I, OEN, REN, PAD, C, POC, VDD, VSS, VDDPST, VSSPST);
  input I, OEN, REN;
  inout PAD;
  inout POC, VDD, VSS, VDDPST, VSSPST;
  output C;

  wire MG, pull_pad, pull_c;
  parameter PullTime = 10000;

  not    (VDDN, VDD);
  and    (HZ, VDDN, VDDPST, POC);

  bufif0 (PAD_q, I, OEN);
  pmos   (MG, PAD_q, 1'b0);
  bufif1 (weak1, weak0) (PAD_i, 1'b1, pull_pad);
  pmos   (MG, PAD_i, 1'b0);
  pmos   (MG_tmp, MG, HZ);
  nmos   (MG_tmp, 1'bz, HZ);
  pmos   (PAD, MG_tmp, 1'b0);
  bufif1 (C_buf, PAD, 1'b1);
  bufif1 (weak0,weak1) (C_buf, 1'b1, pull_c);
  buf    (C_tmp, C_buf);
  nmos   (C_pre, 1'b0, HZ);
  pmos   (C_pre, C_tmp, HZ);
  pmos   (C, C_pre, 1'b0);
  not    (RE, REN);
  buf    #(PullTime,0) (pull_pad, RE);
  buf    (pull_c, RE);

`ifdef TETRAMAX
`else
  always @(PAD) begin
    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") && $countdrivers(PAD))
      $display("%t ++BUS CONFLICT++ : %m", $realtime);
  end

  always @(VDDPST) begin
    if (VDDPST !== 1'b1) begin
      $display("%t ++Abnormal Pattern: VDDPST++ : %m", $realtime);
      $stop(1);
    end
  end

  always @(VSS) begin
    if (VSS !== 1'b0) begin
      $display("%t ++Abnormal Pattern: VSS++ : %m", $realtime);
      $stop(1);
    end
  end

  always @(VSSPST) begin
    if (VSSPST !== 1'b0) begin
      $display("%t ++Abnormal Pattern: VSSPST++ : %m", $realtime);
      $stop(1);
    end
  end

  specify
    (I => PAD)=(0, 0);
    (OEN => PAD)=(0, 0, 0, 0, 0, 0);
    (PAD => C)=(0, 0);
  endspecify
`endif
endmodule
`endcelldefine

`celldefine
module PDUW16SDGZ_H_G (I, OEN, REN, PAD, C, POC, VDD, VSS, VDDPST, VSSPST);
  input I, OEN, REN;
  inout PAD;
  inout POC, VDD, VSS, VDDPST, VSSPST;
  output C;

  wire MG, pull_pad, pull_c;
  parameter PullTime = 10000;

  not    (VDDN, VDD);
  and    (HZ, VDDN, VDDPST, POC);

  bufif0 (PAD_q, I, OEN);
  pmos   (MG, PAD_q, 1'b0);
  bufif1 (weak1, weak0) (PAD_i, 1'b1, pull_pad);
  pmos   (MG, PAD_i, 1'b0);
  pmos   (MG_tmp, MG, HZ);
  nmos   (MG_tmp, 1'bz, HZ);
  pmos   (PAD, MG_tmp, 1'b0);
  bufif1 (C_buf, PAD, 1'b1);
  bufif1 (weak0,weak1) (C_buf, 1'b1, pull_c);
  buf    (C_tmp, C_buf);
  nmos   (C_pre, 1'b0, HZ);
  pmos   (C_pre, C_tmp, HZ);
  pmos   (C, C_pre, 1'b0);
  not    (RE, REN);
  buf    #(PullTime,0) (pull_pad, RE);
  buf    (pull_c, RE);

`ifdef TETRAMAX
`else
  always @(PAD) begin
    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") && $countdrivers(PAD))
      $display("%t ++BUS CONFLICT++ : %m", $realtime);
  end

  always @(VDDPST) begin
    if (VDDPST !== 1'b1) begin
      $display("%t ++Abnormal Pattern: VDDPST++ : %m", $realtime);
      $stop(1);
    end
  end

  always @(VSS) begin
    if (VSS !== 1'b0) begin
      $display("%t ++Abnormal Pattern: VSS++ : %m", $realtime);
      $stop(1);
    end
  end

  always @(VSSPST) begin
    if (VSSPST !== 1'b0) begin
      $display("%t ++Abnormal Pattern: VSSPST++ : %m", $realtime);
      $stop(1);
    end
  end

  specify
    (I => PAD)=(0, 0);
    (OEN => PAD)=(0, 0, 0, 0, 0, 0);
    (PAD => C)=(0, 0);
  endspecify
`endif
endmodule
`endcelldefine

`celldefine
module PDUW16SDGZ_V_G (I, OEN, REN, PAD, C, POC, VDD, VSS, VDDPST, VSSPST);
  input I, OEN, REN;
  inout PAD;
  inout POC, VDD, VSS, VDDPST, VSSPST;
  output C;

  wire MG, pull_pad, pull_c;
  parameter PullTime = 10000;

  not    (VDDN, VDD);
  and    (HZ, VDDN, VDDPST, POC);

  bufif0 (PAD_q, I, OEN);
  pmos   (MG, PAD_q, 1'b0);
  bufif1 (weak1, weak0) (PAD_i, 1'b1, pull_pad);
  pmos   (MG, PAD_i, 1'b0);
  pmos   (MG_tmp, MG, HZ);
  nmos   (MG_tmp, 1'bz, HZ);
  pmos   (PAD, MG_tmp, 1'b0);
  bufif1 (C_buf, PAD, 1'b1);
  bufif1 (weak0,weak1) (C_buf, 1'b1, pull_c);
  buf    (C_tmp, C_buf);
  nmos   (C_pre, 1'b0, HZ);
  pmos   (C_pre, C_tmp, HZ);
  pmos   (C, C_pre, 1'b0);
  not    (RE, REN);
  buf    #(PullTime,0) (pull_pad, RE);
  buf    (pull_c, RE);

`ifdef TETRAMAX
`else
  always @(PAD) begin
    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") && $countdrivers(PAD))
      $display("%t ++BUS CONFLICT++ : %m", $realtime);
  end

  always @(VDDPST) begin
    if (VDDPST !== 1'b1) begin
      $display("%t ++Abnormal Pattern: VDDPST++ : %m", $realtime);
      $stop(1);
    end
  end

  always @(VSS) begin
    if (VSS !== 1'b0) begin
      $display("%t ++Abnormal Pattern: VSS++ : %m", $realtime);
      $stop(1);
    end
  end

  always @(VSSPST) begin
    if (VSSPST !== 1'b0) begin
      $display("%t ++Abnormal Pattern: VSSPST++ : %m", $realtime);
      $stop(1);
    end
  end

  specify
    (I => PAD)=(0, 0);
    (OEN => PAD)=(0, 0, 0, 0, 0, 0);
    (PAD => C)=(0, 0);
  endspecify
`endif
endmodule
`endcelldefine

`celldefine
module PDXOEDG_H_G (XC, XOUT, XIN, E, DS0, DS1, POC, VDD, VSS, VDDPST, VSSPST);
  input DS0, DS1, XIN, E;
  output XC, XOUT;
  inout POC, VDD, VSS, VDDPST, VSSPST;
  not  (XC_tmp, XOUT);
  nand (XOUT_tmp, E, XIN);
  pmos (DS0_tmp, DS0, 1'b0);
  pmos (DS1_tmp, DS1, 1'b0);

  primitive_digital_io_power_down xout_func (XOUT, XOUT_tmp, POC, VDD, VSS, VDDPST, VSSPST);
  primitive_digital_io_power_down xc_func (XC, XC_tmp, POC, VDD, VSS, VDDPST, VSSPST);

`ifdef TETRAMAX
`else
  specify
    if (DS0 == 1'b0 && DS1 == 1'b0) (E => XC)=(0, 0);
    if (DS0 == 1'b0 && DS1 == 1'b1) (E => XC)=(0, 0);
    if (DS0 == 1'b1 && DS1 == 1'b0) (E => XC)=(0, 0);
    if (DS0 == 1'b1 && DS1 == 1'b1) (E => XC)=(0, 0);
    if (DS0 == 1'b0 && DS1 == 1'b0) (E => XOUT)=(0, 0);
    if (DS0 == 1'b0 && DS1 == 1'b1) (E => XOUT)=(0, 0);
    if (DS0 == 1'b1 && DS1 == 1'b0) (E => XOUT)=(0, 0);
    if (DS0 == 1'b1 && DS1 == 1'b1) (E => XOUT)=(0, 0);
    if (DS0 == 1'b0 && DS1 == 1'b0) (XIN => XC)=(0, 0);
    if (DS0 == 1'b0 && DS1 == 1'b1) (XIN => XC)=(0, 0);
    if (DS0 == 1'b1 && DS1 == 1'b0) (XIN => XC)=(0, 0);
    if (DS0 == 1'b1 && DS1 == 1'b1) (XIN => XC)=(0, 0);
    if (DS0 == 1'b0 && DS1 == 1'b0) (XIN => XOUT)=(0, 0);
    if (DS0 == 1'b0 && DS1 == 1'b1) (XIN => XOUT)=(0, 0);
    if (DS0 == 1'b1 && DS1 == 1'b0) (XIN => XOUT)=(0, 0);
    if (DS0 == 1'b1 && DS1 == 1'b1) (XIN => XOUT)=(0, 0);
  endspecify
`endif
endmodule
`endcelldefine

`celldefine
module PDXOEDG_V_G (XC, XOUT, XIN, E, DS0, DS1, POC, VDD, VSS, VDDPST, VSSPST);
  input DS0, DS1, XIN, E;
  output XC, XOUT;
  inout POC, VDD, VSS, VDDPST, VSSPST;
  not  (XC_tmp, XOUT);
  nand (XOUT_tmp, E, XIN);
  pmos (DS0_tmp, DS0, 1'b0);
  pmos (DS1_tmp, DS1, 1'b0);

  primitive_digital_io_power_down xout_func (XOUT, XOUT_tmp, POC, VDD, VSS, VDDPST, VSSPST);
  primitive_digital_io_power_down xc_func (XC, XC_tmp, POC, VDD, VSS, VDDPST, VSSPST);

`ifdef TETRAMAX
`else
  specify
    if (DS0 == 1'b0 && DS1 == 1'b0) (E => XC)=(0, 0);
    if (DS0 == 1'b0 && DS1 == 1'b1) (E => XC)=(0, 0);
    if (DS0 == 1'b1 && DS1 == 1'b0) (E => XC)=(0, 0);
    if (DS0 == 1'b1 && DS1 == 1'b1) (E => XC)=(0, 0);
    if (DS0 == 1'b0 && DS1 == 1'b0) (E => XOUT)=(0, 0);
    if (DS0 == 1'b0 && DS1 == 1'b1) (E => XOUT)=(0, 0);
    if (DS0 == 1'b1 && DS1 == 1'b0) (E => XOUT)=(0, 0);
    if (DS0 == 1'b1 && DS1 == 1'b1) (E => XOUT)=(0, 0);
    if (DS0 == 1'b0 && DS1 == 1'b0) (XIN => XC)=(0, 0);
    if (DS0 == 1'b0 && DS1 == 1'b1) (XIN => XC)=(0, 0);
    if (DS0 == 1'b1 && DS1 == 1'b0) (XIN => XC)=(0, 0);
    if (DS0 == 1'b1 && DS1 == 1'b1) (XIN => XC)=(0, 0);
    if (DS0 == 1'b0 && DS1 == 1'b0) (XIN => XOUT)=(0, 0);
    if (DS0 == 1'b0 && DS1 == 1'b1) (XIN => XOUT)=(0, 0);
    if (DS0 == 1'b1 && DS1 == 1'b0) (XIN => XOUT)=(0, 0);
    if (DS0 == 1'b1 && DS1 == 1'b1) (XIN => XOUT)=(0, 0);
  endspecify
`endif
endmodule
`endcelldefine

`celldefine
module PENDCAP_G (POC, VDD, VSS, VDDPST, VSSPST);
  inout POC, VDD, VSS, VDDPST, VSSPST;
endmodule
`endcelldefine

`celldefine
module PENDCAPA_G (TAVDD, TAVSS, VSS);
  inout TAVDD, TAVSS, VSS;
endmodule
`endcelldefine

`celldefine
module PRCUT_G (VSS);
  inout VSS;
endmodule
`endcelldefine

`celldefine
module PRCUTA_G (VSS);
  inout VSS;
endmodule
`endcelldefine

`celldefine
module PRDW08DGZ_H_G (I, OEN, REN, PAD, C, POC, VDD, VSS, VDDPST, VSSPST);
  input I, OEN, REN;
  inout PAD;
  inout POC, VDD, VSS, VDDPST, VSSPST;
  output C;

  wire MG, pull_pad, pull_c;
  parameter PullTime = 10000;

  not    (VDDN, VDD);
  and    (HZ, VDDN, VDDPST, POC);

  bufif0 (PAD_q, I, OEN);
  pmos   (MG, PAD_q, 1'b0);
  bufif1 (weak1, weak0) (PAD_i, 1'b0, pull_pad);
  pmos   (MG, PAD_i, 1'b0);
  pmos   (MG_tmp, MG, HZ);
  nmos   (MG_tmp, 1'bz, HZ);
  pmos   (PAD, MG_tmp, 1'b0);
  bufif1 (C_buf, PAD, 1'b1);
  bufif1 (weak0,weak1) (C_buf, 1'b0, pull_c);
  buf    (C_tmp, C_buf);
  nmos   (C_pre, 1'b0, HZ);
  pmos   (C_pre, C_tmp, HZ);
  pmos   (C, C_pre, 1'b0);
  not    (RE, REN);
  buf    #(PullTime,0) (pull_pad, RE);
  buf    (pull_c, RE);

`ifdef TETRAMAX
`else
  always @(PAD) begin
    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") && $countdrivers(PAD))
      $display("%t ++BUS CONFLICT++ : %m", $realtime);
  end

  always @(VDDPST) begin
    if (VDDPST !== 1'b1) begin
      $display("%t ++Abnormal Pattern: VDDPST++ : %m", $realtime);
      $stop(1);
    end
  end

  always @(VSS) begin
    if (VSS !== 1'b0) begin
      $display("%t ++Abnormal Pattern: VSS++ : %m", $realtime);
      $stop(1);
    end
  end

  always @(VSSPST) begin
    if (VSSPST !== 1'b0) begin
      $display("%t ++Abnormal Pattern: VSSPST++ : %m", $realtime);
      $stop(1);
    end
  end

  specify
    (I => PAD)=(0, 0);
    (OEN => PAD)=(0, 0, 0, 0, 0, 0);
    (PAD => C)=(0, 0);
  endspecify
`endif
endmodule
`endcelldefine

`celldefine
module PRDW08DGZ_V_G (I, OEN, REN, PAD, C, POC, VDD, VSS, VDDPST, VSSPST);
  input I, OEN, REN;
  inout PAD;
  inout POC, VDD, VSS, VDDPST, VSSPST;
  output C;

  wire MG, pull_pad, pull_c;
  parameter PullTime = 10000;

  not    (VDDN, VDD);
  and    (HZ, VDDN, VDDPST, POC);

  bufif0 (PAD_q, I, OEN);
  pmos   (MG, PAD_q, 1'b0);
  bufif1 (weak1, weak0) (PAD_i, 1'b0, pull_pad);
  pmos   (MG, PAD_i, 1'b0);
  pmos   (MG_tmp, MG, HZ);
  nmos   (MG_tmp, 1'bz, HZ);
  pmos   (PAD, MG_tmp, 1'b0);
  bufif1 (C_buf, PAD, 1'b1);
  bufif1 (weak0,weak1) (C_buf, 1'b0, pull_c);
  buf    (C_tmp, C_buf);
  nmos   (C_pre, 1'b0, HZ);
  pmos   (C_pre, C_tmp, HZ);
  pmos   (C, C_pre, 1'b0);
  not    (RE, REN);
  buf    #(PullTime,0) (pull_pad, RE);
  buf    (pull_c, RE);

`ifdef TETRAMAX
`else
  always @(PAD) begin
    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") && $countdrivers(PAD))
      $display("%t ++BUS CONFLICT++ : %m", $realtime);
  end

  always @(VDDPST) begin
    if (VDDPST !== 1'b1) begin
      $display("%t ++Abnormal Pattern: VDDPST++ : %m", $realtime);
      $stop(1);
    end
  end

  always @(VSS) begin
    if (VSS !== 1'b0) begin
      $display("%t ++Abnormal Pattern: VSS++ : %m", $realtime);
      $stop(1);
    end
  end

  always @(VSSPST) begin
    if (VSSPST !== 1'b0) begin
      $display("%t ++Abnormal Pattern: VSSPST++ : %m", $realtime);
      $stop(1);
    end
  end

  specify
    (I => PAD)=(0, 0);
    (OEN => PAD)=(0, 0, 0, 0, 0, 0);
    (PAD => C)=(0, 0);
  endspecify
`endif
endmodule
`endcelldefine

`celldefine
module PRDW08SDGZ_H_G (I, OEN, REN, PAD, C, POC, VDD, VSS, VDDPST, VSSPST);
  input I, OEN, REN;
  inout PAD;
  inout POC, VDD, VSS, VDDPST, VSSPST;
  output C;

  wire MG, pull_pad, pull_c;
  parameter PullTime = 10000;

  not    (VDDN, VDD);
  and    (HZ, VDDN, VDDPST, POC);

  bufif0 (PAD_q, I, OEN);
  pmos   (MG, PAD_q, 1'b0);
  bufif1 (weak1, weak0) (PAD_i, 1'b0, pull_pad);
  pmos   (MG, PAD_i, 1'b0);
  pmos   (MG_tmp, MG, HZ);
  nmos   (MG_tmp, 1'bz, HZ);
  pmos   (PAD, MG_tmp, 1'b0);
  bufif1 (C_buf, PAD, 1'b1);
  bufif1 (weak0,weak1) (C_buf, 1'b0, pull_c);
  buf    (C_tmp, C_buf);
  nmos   (C_pre, 1'b0, HZ);
  pmos   (C_pre, C_tmp, HZ);
  pmos   (C, C_pre, 1'b0);
  not    (RE, REN);
  buf    #(PullTime,0) (pull_pad, RE);
  buf    (pull_c, RE);

`ifdef TETRAMAX
`else
  always @(PAD) begin
    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") && $countdrivers(PAD))
      $display("%t ++BUS CONFLICT++ : %m", $realtime);
  end

  always @(VDDPST) begin
    if (VDDPST !== 1'b1) begin
      $display("%t ++Abnormal Pattern: VDDPST++ : %m", $realtime);
      $stop(1);
    end
  end

  always @(VSS) begin
    if (VSS !== 1'b0) begin
      $display("%t ++Abnormal Pattern: VSS++ : %m", $realtime);
      $stop(1);
    end
  end

  always @(VSSPST) begin
    if (VSSPST !== 1'b0) begin
      $display("%t ++Abnormal Pattern: VSSPST++ : %m", $realtime);
      $stop(1);
    end
  end

  specify
    (I => PAD)=(0, 0);
    (OEN => PAD)=(0, 0, 0, 0, 0, 0);
    (PAD => C)=(0, 0);
  endspecify
`endif
endmodule
`endcelldefine

`celldefine
module PRDW08SDGZ_V_G (I, OEN, REN, PAD, C, POC, VDD, VSS, VDDPST, VSSPST);
  input I, OEN, REN;
  inout PAD;
  inout POC, VDD, VSS, VDDPST, VSSPST;
  output C;

  wire MG, pull_pad, pull_c;
  parameter PullTime = 10000;

  not    (VDDN, VDD);
  and    (HZ, VDDN, VDDPST, POC);

  bufif0 (PAD_q, I, OEN);
  pmos   (MG, PAD_q, 1'b0);
  bufif1 (weak1, weak0) (PAD_i, 1'b0, pull_pad);
  pmos   (MG, PAD_i, 1'b0);
  pmos   (MG_tmp, MG, HZ);
  nmos   (MG_tmp, 1'bz, HZ);
  pmos   (PAD, MG_tmp, 1'b0);
  bufif1 (C_buf, PAD, 1'b1);
  bufif1 (weak0,weak1) (C_buf, 1'b0, pull_c);
  buf    (C_tmp, C_buf);
  nmos   (C_pre, 1'b0, HZ);
  pmos   (C_pre, C_tmp, HZ);
  pmos   (C, C_pre, 1'b0);
  not    (RE, REN);
  buf    #(PullTime,0) (pull_pad, RE);
  buf    (pull_c, RE);

`ifdef TETRAMAX
`else
  always @(PAD) begin
    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") && $countdrivers(PAD))
      $display("%t ++BUS CONFLICT++ : %m", $realtime);
  end

  always @(VDDPST) begin
    if (VDDPST !== 1'b1) begin
      $display("%t ++Abnormal Pattern: VDDPST++ : %m", $realtime);
      $stop(1);
    end
  end

  always @(VSS) begin
    if (VSS !== 1'b0) begin
      $display("%t ++Abnormal Pattern: VSS++ : %m", $realtime);
      $stop(1);
    end
  end

  always @(VSSPST) begin
    if (VSSPST !== 1'b0) begin
      $display("%t ++Abnormal Pattern: VSSPST++ : %m", $realtime);
      $stop(1);
    end
  end

  specify
    (I => PAD)=(0, 0);
    (OEN => PAD)=(0, 0, 0, 0, 0, 0);
    (PAD => C)=(0, 0);
  endspecify
`endif
endmodule
`endcelldefine

`celldefine
module PRDW12DGZ_H_G (I, OEN, REN, PAD, C, POC, VDD, VSS, VDDPST, VSSPST);
  input I, OEN, REN;
  inout PAD;
  inout POC, VDD, VSS, VDDPST, VSSPST;
  output C;

  wire MG, pull_pad, pull_c;
  parameter PullTime = 10000;

  not    (VDDN, VDD);
  and    (HZ, VDDN, VDDPST, POC);

  bufif0 (PAD_q, I, OEN);
  pmos   (MG, PAD_q, 1'b0);
  bufif1 (weak1, weak0) (PAD_i, 1'b0, pull_pad);
  pmos   (MG, PAD_i, 1'b0);
  pmos   (MG_tmp, MG, HZ);
  nmos   (MG_tmp, 1'bz, HZ);
  pmos   (PAD, MG_tmp, 1'b0);
  bufif1 (C_buf, PAD, 1'b1);
  bufif1 (weak0,weak1) (C_buf, 1'b0, pull_c);
  buf    (C_tmp, C_buf);
  nmos   (C_pre, 1'b0, HZ);
  pmos   (C_pre, C_tmp, HZ);
  pmos   (C, C_pre, 1'b0);
  not    (RE, REN);
  buf    #(PullTime,0) (pull_pad, RE);
  buf    (pull_c, RE);

`ifdef TETRAMAX
`else
  always @(PAD) begin
    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") && $countdrivers(PAD))
      $display("%t ++BUS CONFLICT++ : %m", $realtime);
  end

  always @(VDDPST) begin
    if (VDDPST !== 1'b1) begin
      $display("%t ++Abnormal Pattern: VDDPST++ : %m", $realtime);
      $stop(1);
    end
  end

  always @(VSS) begin
    if (VSS !== 1'b0) begin
      $display("%t ++Abnormal Pattern: VSS++ : %m", $realtime);
      $stop(1);
    end
  end

  always @(VSSPST) begin
    if (VSSPST !== 1'b0) begin
      $display("%t ++Abnormal Pattern: VSSPST++ : %m", $realtime);
      $stop(1);
    end
  end

  specify
    (I => PAD)=(0, 0);
    (OEN => PAD)=(0, 0, 0, 0, 0, 0);
    (PAD => C)=(0, 0);
  endspecify
`endif
endmodule
`endcelldefine

`celldefine
module PRDW12DGZ_V_G (I, OEN, REN, PAD, C, POC, VDD, VSS, VDDPST, VSSPST);
  input I, OEN, REN;
  inout PAD;
  inout POC, VDD, VSS, VDDPST, VSSPST;
  output C;

  wire MG, pull_pad, pull_c;
  parameter PullTime = 10000;

  not    (VDDN, VDD);
  and    (HZ, VDDN, VDDPST, POC);

  bufif0 (PAD_q, I, OEN);
  pmos   (MG, PAD_q, 1'b0);
  bufif1 (weak1, weak0) (PAD_i, 1'b0, pull_pad);
  pmos   (MG, PAD_i, 1'b0);
  pmos   (MG_tmp, MG, HZ);
  nmos   (MG_tmp, 1'bz, HZ);
  pmos   (PAD, MG_tmp, 1'b0);
  bufif1 (C_buf, PAD, 1'b1);
  bufif1 (weak0,weak1) (C_buf, 1'b0, pull_c);
  buf    (C_tmp, C_buf);
  nmos   (C_pre, 1'b0, HZ);
  pmos   (C_pre, C_tmp, HZ);
  pmos   (C, C_pre, 1'b0);
  not    (RE, REN);
  buf    #(PullTime,0) (pull_pad, RE);
  buf    (pull_c, RE);

`ifdef TETRAMAX
`else
  always @(PAD) begin
    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") && $countdrivers(PAD))
      $display("%t ++BUS CONFLICT++ : %m", $realtime);
  end

  always @(VDDPST) begin
    if (VDDPST !== 1'b1) begin
      $display("%t ++Abnormal Pattern: VDDPST++ : %m", $realtime);
      $stop(1);
    end
  end

  always @(VSS) begin
    if (VSS !== 1'b0) begin
      $display("%t ++Abnormal Pattern: VSS++ : %m", $realtime);
      $stop(1);
    end
  end

  always @(VSSPST) begin
    if (VSSPST !== 1'b0) begin
      $display("%t ++Abnormal Pattern: VSSPST++ : %m", $realtime);
      $stop(1);
    end
  end

  specify
    (I => PAD)=(0, 0);
    (OEN => PAD)=(0, 0, 0, 0, 0, 0);
    (PAD => C)=(0, 0);
  endspecify
`endif
endmodule
`endcelldefine

`celldefine
module PRDW12SDGZ_H_G (I, OEN, REN, PAD, C, POC, VDD, VSS, VDDPST, VSSPST);
  input I, OEN, REN;
  inout PAD;
  inout POC, VDD, VSS, VDDPST, VSSPST;
  output C;

  wire MG, pull_pad, pull_c;
  parameter PullTime = 10000;

  not    (VDDN, VDD);
  and    (HZ, VDDN, VDDPST, POC);

  bufif0 (PAD_q, I, OEN);
  pmos   (MG, PAD_q, 1'b0);
  bufif1 (weak1, weak0) (PAD_i, 1'b0, pull_pad);
  pmos   (MG, PAD_i, 1'b0);
  pmos   (MG_tmp, MG, HZ);
  nmos   (MG_tmp, 1'bz, HZ);
  pmos   (PAD, MG_tmp, 1'b0);
  bufif1 (C_buf, PAD, 1'b1);
  bufif1 (weak0,weak1) (C_buf, 1'b0, pull_c);
  buf    (C_tmp, C_buf);
  nmos   (C_pre, 1'b0, HZ);
  pmos   (C_pre, C_tmp, HZ);
  pmos   (C, C_pre, 1'b0);
  not    (RE, REN);
  buf    #(PullTime,0) (pull_pad, RE);
  buf    (pull_c, RE);

`ifdef TETRAMAX
`else
  always @(PAD) begin
    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") && $countdrivers(PAD))
      $display("%t ++BUS CONFLICT++ : %m", $realtime);
  end

  always @(VDDPST) begin
    if (VDDPST !== 1'b1) begin
      $display("%t ++Abnormal Pattern: VDDPST++ : %m", $realtime);
      $stop(1);
    end
  end

  always @(VSS) begin
    if (VSS !== 1'b0) begin
      $display("%t ++Abnormal Pattern: VSS++ : %m", $realtime);
      $stop(1);
    end
  end

  always @(VSSPST) begin
    if (VSSPST !== 1'b0) begin
      $display("%t ++Abnormal Pattern: VSSPST++ : %m", $realtime);
      $stop(1);
    end
  end

  specify
    (I => PAD)=(0, 0);
    (OEN => PAD)=(0, 0, 0, 0, 0, 0);
    (PAD => C)=(0, 0);
  endspecify
`endif
endmodule
`endcelldefine

`celldefine
module PRDW12SDGZ_V_G (I, OEN, REN, PAD, C, POC, VDD, VSS, VDDPST, VSSPST);
  input I, OEN, REN;
  inout PAD;
  inout POC, VDD, VSS, VDDPST, VSSPST;
  output C;

  wire MG, pull_pad, pull_c;
  parameter PullTime = 10000;

  not    (VDDN, VDD);
  and    (HZ, VDDN, VDDPST, POC);

  bufif0 (PAD_q, I, OEN);
  pmos   (MG, PAD_q, 1'b0);
  bufif1 (weak1, weak0) (PAD_i, 1'b0, pull_pad);
  pmos   (MG, PAD_i, 1'b0);
  pmos   (MG_tmp, MG, HZ);
  nmos   (MG_tmp, 1'bz, HZ);
  pmos   (PAD, MG_tmp, 1'b0);
  bufif1 (C_buf, PAD, 1'b1);
  bufif1 (weak0,weak1) (C_buf, 1'b0, pull_c);
  buf    (C_tmp, C_buf);
  nmos   (C_pre, 1'b0, HZ);
  pmos   (C_pre, C_tmp, HZ);
  pmos   (C, C_pre, 1'b0);
  not    (RE, REN);
  buf    #(PullTime,0) (pull_pad, RE);
  buf    (pull_c, RE);

`ifdef TETRAMAX
`else
  always @(PAD) begin
    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") && $countdrivers(PAD))
      $display("%t ++BUS CONFLICT++ : %m", $realtime);
  end

  always @(VDDPST) begin
    if (VDDPST !== 1'b1) begin
      $display("%t ++Abnormal Pattern: VDDPST++ : %m", $realtime);
      $stop(1);
    end
  end

  always @(VSS) begin
    if (VSS !== 1'b0) begin
      $display("%t ++Abnormal Pattern: VSS++ : %m", $realtime);
      $stop(1);
    end
  end

  always @(VSSPST) begin
    if (VSSPST !== 1'b0) begin
      $display("%t ++Abnormal Pattern: VSSPST++ : %m", $realtime);
      $stop(1);
    end
  end

  specify
    (I => PAD)=(0, 0);
    (OEN => PAD)=(0, 0, 0, 0, 0, 0);
    (PAD => C)=(0, 0);
  endspecify
`endif
endmodule
`endcelldefine

`celldefine
module PRDW16DGZ_H_G (I, OEN, REN, PAD, C, POC, VDD, VSS, VDDPST, VSSPST);
  input I, OEN, REN;
  inout PAD;
  inout POC, VDD, VSS, VDDPST, VSSPST;
  output C;

  wire MG, pull_pad, pull_c;
  parameter PullTime = 10000;

  not    (VDDN, VDD);
  and    (HZ, VDDN, VDDPST, POC);

  bufif0 (PAD_q, I, OEN);
  pmos   (MG, PAD_q, 1'b0);
  bufif1 (weak1, weak0) (PAD_i, 1'b0, pull_pad);
  pmos   (MG, PAD_i, 1'b0);
  pmos   (MG_tmp, MG, HZ);
  nmos   (MG_tmp, 1'bz, HZ);
  pmos   (PAD, MG_tmp, 1'b0);
  bufif1 (C_buf, PAD, 1'b1);
  bufif1 (weak0,weak1) (C_buf, 1'b0, pull_c);
  buf    (C_tmp, C_buf);
  nmos   (C_pre, 1'b0, HZ);
  pmos   (C_pre, C_tmp, HZ);
  pmos   (C, C_pre, 1'b0);
  not    (RE, REN);
  buf    #(PullTime,0) (pull_pad, RE);
  buf    (pull_c, RE);

`ifdef TETRAMAX
`else
  always @(PAD) begin
    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") && $countdrivers(PAD))
      $display("%t ++BUS CONFLICT++ : %m", $realtime);
  end

  always @(VDDPST) begin
    if (VDDPST !== 1'b1) begin
      $display("%t ++Abnormal Pattern: VDDPST++ : %m", $realtime);
      $stop(1);
    end
  end

  always @(VSS) begin
    if (VSS !== 1'b0) begin
      $display("%t ++Abnormal Pattern: VSS++ : %m", $realtime);
      $stop(1);
    end
  end

  always @(VSSPST) begin
    if (VSSPST !== 1'b0) begin
      $display("%t ++Abnormal Pattern: VSSPST++ : %m", $realtime);
      $stop(1);
    end
  end

  specify
    (I => PAD)=(0, 0);
    (OEN => PAD)=(0, 0, 0, 0, 0, 0);
    (PAD => C)=(0, 0);
  endspecify
`endif
endmodule
`endcelldefine

`celldefine
module PRDW16DGZ_V_G (I, OEN, REN, PAD, C, POC, VDD, VSS, VDDPST, VSSPST);
  input I, OEN, REN;
  inout PAD;
  inout POC, VDD, VSS, VDDPST, VSSPST;
  output C;

  wire MG, pull_pad, pull_c;
  parameter PullTime = 10000;

  not    (VDDN, VDD);
  and    (HZ, VDDN, VDDPST, POC);

  bufif0 (PAD_q, I, OEN);
  pmos   (MG, PAD_q, 1'b0);
  bufif1 (weak1, weak0) (PAD_i, 1'b0, pull_pad);
  pmos   (MG, PAD_i, 1'b0);
  pmos   (MG_tmp, MG, HZ);
  nmos   (MG_tmp, 1'bz, HZ);
  pmos   (PAD, MG_tmp, 1'b0);
  bufif1 (C_buf, PAD, 1'b1);
  bufif1 (weak0,weak1) (C_buf, 1'b0, pull_c);
  buf    (C_tmp, C_buf);
  nmos   (C_pre, 1'b0, HZ);
  pmos   (C_pre, C_tmp, HZ);
  pmos   (C, C_pre, 1'b0);
  not    (RE, REN);
  buf    #(PullTime,0) (pull_pad, RE);
  buf    (pull_c, RE);

`ifdef TETRAMAX
`else
  always @(PAD) begin
    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") && $countdrivers(PAD))
      $display("%t ++BUS CONFLICT++ : %m", $realtime);
  end

  always @(VDDPST) begin
    if (VDDPST !== 1'b1) begin
      $display("%t ++Abnormal Pattern: VDDPST++ : %m", $realtime);
      $stop(1);
    end
  end

  always @(VSS) begin
    if (VSS !== 1'b0) begin
      $display("%t ++Abnormal Pattern: VSS++ : %m", $realtime);
      $stop(1);
    end
  end

  always @(VSSPST) begin
    if (VSSPST !== 1'b0) begin
      $display("%t ++Abnormal Pattern: VSSPST++ : %m", $realtime);
      $stop(1);
    end
  end

  specify
    (I => PAD)=(0, 0);
    (OEN => PAD)=(0, 0, 0, 0, 0, 0);
    (PAD => C)=(0, 0);
  endspecify
`endif
endmodule
`endcelldefine

`celldefine
module PRDW16SDGZ_H_G (I, OEN, REN, PAD, C, POC, VDD, VSS, VDDPST, VSSPST);
  input I, OEN, REN;
  inout PAD;
  inout POC, VDD, VSS, VDDPST, VSSPST;
  output C;

  wire MG, pull_pad, pull_c;
  parameter PullTime = 10000;

  not    (VDDN, VDD);
  and    (HZ, VDDN, VDDPST, POC);

  bufif0 (PAD_q, I, OEN);
  pmos   (MG, PAD_q, 1'b0);
  bufif1 (weak1, weak0) (PAD_i, 1'b0, pull_pad);
  pmos   (MG, PAD_i, 1'b0);
  pmos   (MG_tmp, MG, HZ);
  nmos   (MG_tmp, 1'bz, HZ);
  pmos   (PAD, MG_tmp, 1'b0);
  bufif1 (C_buf, PAD, 1'b1);
  bufif1 (weak0,weak1) (C_buf, 1'b0, pull_c);
  buf    (C_tmp, C_buf);
  nmos   (C_pre, 1'b0, HZ);
  pmos   (C_pre, C_tmp, HZ);
  pmos   (C, C_pre, 1'b0);
  not    (RE, REN);
  buf    #(PullTime,0) (pull_pad, RE);
  buf    (pull_c, RE);

`ifdef TETRAMAX
`else
  always @(PAD) begin
    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") && $countdrivers(PAD))
      $display("%t ++BUS CONFLICT++ : %m", $realtime);
  end

  always @(VDDPST) begin
    if (VDDPST !== 1'b1) begin
      $display("%t ++Abnormal Pattern: VDDPST++ : %m", $realtime);
      $stop(1);
    end
  end

  always @(VSS) begin
    if (VSS !== 1'b0) begin
      $display("%t ++Abnormal Pattern: VSS++ : %m", $realtime);
      $stop(1);
    end
  end

  always @(VSSPST) begin
    if (VSSPST !== 1'b0) begin
      $display("%t ++Abnormal Pattern: VSSPST++ : %m", $realtime);
      $stop(1);
    end
  end

  specify
    (I => PAD)=(0, 0);
    (OEN => PAD)=(0, 0, 0, 0, 0, 0);
    (PAD => C)=(0, 0);
  endspecify
`endif
endmodule
`endcelldefine

`celldefine
module PRDW16SDGZ_V_G (I, OEN, REN, PAD, C, POC, VDD, VSS, VDDPST, VSSPST);
  input I, OEN, REN;
  inout PAD;
  inout POC, VDD, VSS, VDDPST, VSSPST;
  output C;

  wire MG, pull_pad, pull_c;
  parameter PullTime = 10000;

  not    (VDDN, VDD);
  and    (HZ, VDDN, VDDPST, POC);

  bufif0 (PAD_q, I, OEN);
  pmos   (MG, PAD_q, 1'b0);
  bufif1 (weak1, weak0) (PAD_i, 1'b0, pull_pad);
  pmos   (MG, PAD_i, 1'b0);
  pmos   (MG_tmp, MG, HZ);
  nmos   (MG_tmp, 1'bz, HZ);
  pmos   (PAD, MG_tmp, 1'b0);
  bufif1 (C_buf, PAD, 1'b1);
  bufif1 (weak0,weak1) (C_buf, 1'b0, pull_c);
  buf    (C_tmp, C_buf);
  nmos   (C_pre, 1'b0, HZ);
  pmos   (C_pre, C_tmp, HZ);
  pmos   (C, C_pre, 1'b0);
  not    (RE, REN);
  buf    #(PullTime,0) (pull_pad, RE);
  buf    (pull_c, RE);

`ifdef TETRAMAX
`else
  always @(PAD) begin
    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") && $countdrivers(PAD))
      $display("%t ++BUS CONFLICT++ : %m", $realtime);
  end

  always @(VDDPST) begin
    if (VDDPST !== 1'b1) begin
      $display("%t ++Abnormal Pattern: VDDPST++ : %m", $realtime);
      $stop(1);
    end
  end

  always @(VSS) begin
    if (VSS !== 1'b0) begin
      $display("%t ++Abnormal Pattern: VSS++ : %m", $realtime);
      $stop(1);
    end
  end

  always @(VSSPST) begin
    if (VSSPST !== 1'b0) begin
      $display("%t ++Abnormal Pattern: VSSPST++ : %m", $realtime);
      $stop(1);
    end
  end

  specify
    (I => PAD)=(0, 0);
    (OEN => PAD)=(0, 0, 0, 0, 0, 0);
    (PAD => C)=(0, 0);
  endspecify
`endif
endmodule
`endcelldefine

`celldefine
module PRUW08DGZ_H_G (I, OEN, REN, PAD, C, POC, VDD, VSS, VDDPST, VSSPST);
  input I, OEN, REN;
  inout PAD;
  inout POC, VDD, VSS, VDDPST, VSSPST;
  output C;

  wire MG, pull_pad, pull_c;
  parameter PullTime = 10000;

  not    (VDDN, VDD);
  and    (HZ, VDDN, VDDPST, POC);

  bufif0 (PAD_q, I, OEN);
  pmos   (MG, PAD_q, 1'b0);
  bufif1 (weak1, weak0) (PAD_i, 1'b1, pull_pad);
  pmos   (MG, PAD_i, 1'b0);
  pmos   (MG_tmp, MG, HZ);
  nmos   (MG_tmp, 1'bz, HZ);
  pmos   (PAD, MG_tmp, 1'b0);
  bufif1 (C_buf, PAD, 1'b1);
  bufif1 (weak0,weak1) (C_buf, 1'b1, pull_c);
  buf    (C_tmp, C_buf);
  nmos   (C_pre, 1'b0, HZ);
  pmos   (C_pre, C_tmp, HZ);
  pmos   (C, C_pre, 1'b0);
  not    (RE, REN);
  buf    #(PullTime,0) (pull_pad, RE);
  buf    (pull_c, RE);

`ifdef TETRAMAX
`else
  always @(PAD) begin
    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") && $countdrivers(PAD))
      $display("%t ++BUS CONFLICT++ : %m", $realtime);
  end

  always @(VDDPST) begin
    if (VDDPST !== 1'b1) begin
      $display("%t ++Abnormal Pattern: VDDPST++ : %m", $realtime);
      $stop(1);
    end
  end

  always @(VSS) begin
    if (VSS !== 1'b0) begin
      $display("%t ++Abnormal Pattern: VSS++ : %m", $realtime);
      $stop(1);
    end
  end

  always @(VSSPST) begin
    if (VSSPST !== 1'b0) begin
      $display("%t ++Abnormal Pattern: VSSPST++ : %m", $realtime);
      $stop(1);
    end
  end

  specify
    (I => PAD)=(0, 0);
    (OEN => PAD)=(0, 0, 0, 0, 0, 0);
    (PAD => C)=(0, 0);
  endspecify
`endif
endmodule
`endcelldefine

`celldefine
module PRUW08DGZ_V_G (I, OEN, REN, PAD, C, POC, VDD, VSS, VDDPST, VSSPST);
  input I, OEN, REN;
  inout PAD;
  inout POC, VDD, VSS, VDDPST, VSSPST;
  output C;

  wire MG, pull_pad, pull_c;
  parameter PullTime = 10000;

  not    (VDDN, VDD);
  and    (HZ, VDDN, VDDPST, POC);

  bufif0 (PAD_q, I, OEN);
  pmos   (MG, PAD_q, 1'b0);
  bufif1 (weak1, weak0) (PAD_i, 1'b1, pull_pad);
  pmos   (MG, PAD_i, 1'b0);
  pmos   (MG_tmp, MG, HZ);
  nmos   (MG_tmp, 1'bz, HZ);
  pmos   (PAD, MG_tmp, 1'b0);
  bufif1 (C_buf, PAD, 1'b1);
  bufif1 (weak0,weak1) (C_buf, 1'b1, pull_c);
  buf    (C_tmp, C_buf);
  nmos   (C_pre, 1'b0, HZ);
  pmos   (C_pre, C_tmp, HZ);
  pmos   (C, C_pre, 1'b0);
  not    (RE, REN);
  buf    #(PullTime,0) (pull_pad, RE);
  buf    (pull_c, RE);

`ifdef TETRAMAX
`else
  always @(PAD) begin
    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") && $countdrivers(PAD))
      $display("%t ++BUS CONFLICT++ : %m", $realtime);
  end

  always @(VDDPST) begin
    if (VDDPST !== 1'b1) begin
      $display("%t ++Abnormal Pattern: VDDPST++ : %m", $realtime);
      $stop(1);
    end
  end

  always @(VSS) begin
    if (VSS !== 1'b0) begin
      $display("%t ++Abnormal Pattern: VSS++ : %m", $realtime);
      $stop(1);
    end
  end

  always @(VSSPST) begin
    if (VSSPST !== 1'b0) begin
      $display("%t ++Abnormal Pattern: VSSPST++ : %m", $realtime);
      $stop(1);
    end
  end

  specify
    (I => PAD)=(0, 0);
    (OEN => PAD)=(0, 0, 0, 0, 0, 0);
    (PAD => C)=(0, 0);
  endspecify
`endif
endmodule
`endcelldefine

`celldefine
module PRUW08SDGZ_H_G (I, OEN, REN, PAD, C, POC, VDD, VSS, VDDPST, VSSPST);
  input I, OEN, REN;
  inout PAD;
  inout POC, VDD, VSS, VDDPST, VSSPST;
  output C;

  wire MG, pull_pad, pull_c;
  parameter PullTime = 10000;

  not    (VDDN, VDD);
  and    (HZ, VDDN, VDDPST, POC);

  bufif0 (PAD_q, I, OEN);
  pmos   (MG, PAD_q, 1'b0);
  bufif1 (weak1, weak0) (PAD_i, 1'b1, pull_pad);
  pmos   (MG, PAD_i, 1'b0);
  pmos   (MG_tmp, MG, HZ);
  nmos   (MG_tmp, 1'bz, HZ);
  pmos   (PAD, MG_tmp, 1'b0);
  bufif1 (C_buf, PAD, 1'b1);
  bufif1 (weak0,weak1) (C_buf, 1'b1, pull_c);
  buf    (C_tmp, C_buf);
  nmos   (C_pre, 1'b0, HZ);
  pmos   (C_pre, C_tmp, HZ);
  pmos   (C, C_pre, 1'b0);
  not    (RE, REN);
  buf    #(PullTime,0) (pull_pad, RE);
  buf    (pull_c, RE);

`ifdef TETRAMAX
`else
  always @(PAD) begin
    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") && $countdrivers(PAD))
      $display("%t ++BUS CONFLICT++ : %m", $realtime);
  end

  always @(VDDPST) begin
    if (VDDPST !== 1'b1) begin
      $display("%t ++Abnormal Pattern: VDDPST++ : %m", $realtime);
      $stop(1);
    end
  end

  always @(VSS) begin
    if (VSS !== 1'b0) begin
      $display("%t ++Abnormal Pattern: VSS++ : %m", $realtime);
      $stop(1);
    end
  end

  always @(VSSPST) begin
    if (VSSPST !== 1'b0) begin
      $display("%t ++Abnormal Pattern: VSSPST++ : %m", $realtime);
      $stop(1);
    end
  end

  specify
    (I => PAD)=(0, 0);
    (OEN => PAD)=(0, 0, 0, 0, 0, 0);
    (PAD => C)=(0, 0);
  endspecify
`endif
endmodule
`endcelldefine

`celldefine
module PRUW08SDGZ_V_G (I, OEN, REN, PAD, C, POC, VDD, VSS, VDDPST, VSSPST);
  input I, OEN, REN;
  inout PAD;
  inout POC, VDD, VSS, VDDPST, VSSPST;
  output C;

  wire MG, pull_pad, pull_c;
  parameter PullTime = 10000;

  not    (VDDN, VDD);
  and    (HZ, VDDN, VDDPST, POC);

  bufif0 (PAD_q, I, OEN);
  pmos   (MG, PAD_q, 1'b0);
  bufif1 (weak1, weak0) (PAD_i, 1'b1, pull_pad);
  pmos   (MG, PAD_i, 1'b0);
  pmos   (MG_tmp, MG, HZ);
  nmos   (MG_tmp, 1'bz, HZ);
  pmos   (PAD, MG_tmp, 1'b0);
  bufif1 (C_buf, PAD, 1'b1);
  bufif1 (weak0,weak1) (C_buf, 1'b1, pull_c);
  buf    (C_tmp, C_buf);
  nmos   (C_pre, 1'b0, HZ);
  pmos   (C_pre, C_tmp, HZ);
  pmos   (C, C_pre, 1'b0);
  not    (RE, REN);
  buf    #(PullTime,0) (pull_pad, RE);
  buf    (pull_c, RE);

`ifdef TETRAMAX
`else
  always @(PAD) begin
    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") && $countdrivers(PAD))
      $display("%t ++BUS CONFLICT++ : %m", $realtime);
  end

  always @(VDDPST) begin
    if (VDDPST !== 1'b1) begin
      $display("%t ++Abnormal Pattern: VDDPST++ : %m", $realtime);
      $stop(1);
    end
  end

  always @(VSS) begin
    if (VSS !== 1'b0) begin
      $display("%t ++Abnormal Pattern: VSS++ : %m", $realtime);
      $stop(1);
    end
  end

  always @(VSSPST) begin
    if (VSSPST !== 1'b0) begin
      $display("%t ++Abnormal Pattern: VSSPST++ : %m", $realtime);
      $stop(1);
    end
  end

  specify
    (I => PAD)=(0, 0);
    (OEN => PAD)=(0, 0, 0, 0, 0, 0);
    (PAD => C)=(0, 0);
  endspecify
`endif
endmodule
`endcelldefine

`celldefine
module PRUW12DGZ_H_G (I, OEN, REN, PAD, C, POC, VDD, VSS, VDDPST, VSSPST);
  input I, OEN, REN;
  inout PAD;
  inout POC, VDD, VSS, VDDPST, VSSPST;
  output C;

  wire MG, pull_pad, pull_c;
  parameter PullTime = 10000;

  not    (VDDN, VDD);
  and    (HZ, VDDN, VDDPST, POC);

  bufif0 (PAD_q, I, OEN);
  pmos   (MG, PAD_q, 1'b0);
  bufif1 (weak1, weak0) (PAD_i, 1'b1, pull_pad);
  pmos   (MG, PAD_i, 1'b0);
  pmos   (MG_tmp, MG, HZ);
  nmos   (MG_tmp, 1'bz, HZ);
  pmos   (PAD, MG_tmp, 1'b0);
  bufif1 (C_buf, PAD, 1'b1);
  bufif1 (weak0,weak1) (C_buf, 1'b1, pull_c);
  buf    (C_tmp, C_buf);
  nmos   (C_pre, 1'b0, HZ);
  pmos   (C_pre, C_tmp, HZ);
  pmos   (C, C_pre, 1'b0);
  not    (RE, REN);
  buf    #(PullTime,0) (pull_pad, RE);
  buf    (pull_c, RE);

`ifdef TETRAMAX
`else
  always @(PAD) begin
    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") && $countdrivers(PAD))
      $display("%t ++BUS CONFLICT++ : %m", $realtime);
  end

  always @(VDDPST) begin
    if (VDDPST !== 1'b1) begin
      $display("%t ++Abnormal Pattern: VDDPST++ : %m", $realtime);
      $stop(1);
    end
  end

  always @(VSS) begin
    if (VSS !== 1'b0) begin
      $display("%t ++Abnormal Pattern: VSS++ : %m", $realtime);
      $stop(1);
    end
  end

  always @(VSSPST) begin
    if (VSSPST !== 1'b0) begin
      $display("%t ++Abnormal Pattern: VSSPST++ : %m", $realtime);
      $stop(1);
    end
  end

  specify
    (I => PAD)=(0, 0);
    (OEN => PAD)=(0, 0, 0, 0, 0, 0);
    (PAD => C)=(0, 0);
  endspecify
`endif
endmodule
`endcelldefine

`celldefine
module PRUW12DGZ_V_G (I, OEN, REN, PAD, C, POC, VDD, VSS, VDDPST, VSSPST);
  input I, OEN, REN;
  inout PAD;
  inout POC, VDD, VSS, VDDPST, VSSPST;
  output C;

  wire MG, pull_pad, pull_c;
  parameter PullTime = 10000;

  not    (VDDN, VDD);
  and    (HZ, VDDN, VDDPST, POC);

  bufif0 (PAD_q, I, OEN);
  pmos   (MG, PAD_q, 1'b0);
  bufif1 (weak1, weak0) (PAD_i, 1'b1, pull_pad);
  pmos   (MG, PAD_i, 1'b0);
  pmos   (MG_tmp, MG, HZ);
  nmos   (MG_tmp, 1'bz, HZ);
  pmos   (PAD, MG_tmp, 1'b0);
  bufif1 (C_buf, PAD, 1'b1);
  bufif1 (weak0,weak1) (C_buf, 1'b1, pull_c);
  buf    (C_tmp, C_buf);
  nmos   (C_pre, 1'b0, HZ);
  pmos   (C_pre, C_tmp, HZ);
  pmos   (C, C_pre, 1'b0);
  not    (RE, REN);
  buf    #(PullTime,0) (pull_pad, RE);
  buf    (pull_c, RE);

`ifdef TETRAMAX
`else
  always @(PAD) begin
    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") && $countdrivers(PAD))
      $display("%t ++BUS CONFLICT++ : %m", $realtime);
  end

  always @(VDDPST) begin
    if (VDDPST !== 1'b1) begin
      $display("%t ++Abnormal Pattern: VDDPST++ : %m", $realtime);
      $stop(1);
    end
  end

  always @(VSS) begin
    if (VSS !== 1'b0) begin
      $display("%t ++Abnormal Pattern: VSS++ : %m", $realtime);
      $stop(1);
    end
  end

  always @(VSSPST) begin
    if (VSSPST !== 1'b0) begin
      $display("%t ++Abnormal Pattern: VSSPST++ : %m", $realtime);
      $stop(1);
    end
  end

  specify
    (I => PAD)=(0, 0);
    (OEN => PAD)=(0, 0, 0, 0, 0, 0);
    (PAD => C)=(0, 0);
  endspecify
`endif
endmodule
`endcelldefine

`celldefine
module PRUW12SDGZ_H_G (I, OEN, REN, PAD, C, POC, VDD, VSS, VDDPST, VSSPST);
  input I, OEN, REN;
  inout PAD;
  inout POC, VDD, VSS, VDDPST, VSSPST;
  output C;

  wire MG, pull_pad, pull_c;
  parameter PullTime = 10000;

  not    (VDDN, VDD);
  and    (HZ, VDDN, VDDPST, POC);

  bufif0 (PAD_q, I, OEN);
  pmos   (MG, PAD_q, 1'b0);
  bufif1 (weak1, weak0) (PAD_i, 1'b1, pull_pad);
  pmos   (MG, PAD_i, 1'b0);
  pmos   (MG_tmp, MG, HZ);
  nmos   (MG_tmp, 1'bz, HZ);
  pmos   (PAD, MG_tmp, 1'b0);
  bufif1 (C_buf, PAD, 1'b1);
  bufif1 (weak0,weak1) (C_buf, 1'b1, pull_c);
  buf    (C_tmp, C_buf);
  nmos   (C_pre, 1'b0, HZ);
  pmos   (C_pre, C_tmp, HZ);
  pmos   (C, C_pre, 1'b0);
  not    (RE, REN);
  buf    #(PullTime,0) (pull_pad, RE);
  buf    (pull_c, RE);

`ifdef TETRAMAX
`else
  always @(PAD) begin
    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") && $countdrivers(PAD))
      $display("%t ++BUS CONFLICT++ : %m", $realtime);
  end

  always @(VDDPST) begin
    if (VDDPST !== 1'b1) begin
      $display("%t ++Abnormal Pattern: VDDPST++ : %m", $realtime);
      $stop(1);
    end
  end

  always @(VSS) begin
    if (VSS !== 1'b0) begin
      $display("%t ++Abnormal Pattern: VSS++ : %m", $realtime);
      $stop(1);
    end
  end

  always @(VSSPST) begin
    if (VSSPST !== 1'b0) begin
      $display("%t ++Abnormal Pattern: VSSPST++ : %m", $realtime);
      $stop(1);
    end
  end

  specify
    (I => PAD)=(0, 0);
    (OEN => PAD)=(0, 0, 0, 0, 0, 0);
    (PAD => C)=(0, 0);
  endspecify
`endif
endmodule
`endcelldefine

`celldefine
module PRUW12SDGZ_V_G (I, OEN, REN, PAD, C, POC, VDD, VSS, VDDPST, VSSPST);
  input I, OEN, REN;
  inout PAD;
  inout POC, VDD, VSS, VDDPST, VSSPST;
  output C;

  wire MG, pull_pad, pull_c;
  parameter PullTime = 10000;

  not    (VDDN, VDD);
  and    (HZ, VDDN, VDDPST, POC);

  bufif0 (PAD_q, I, OEN);
  pmos   (MG, PAD_q, 1'b0);
  bufif1 (weak1, weak0) (PAD_i, 1'b1, pull_pad);
  pmos   (MG, PAD_i, 1'b0);
  pmos   (MG_tmp, MG, HZ);
  nmos   (MG_tmp, 1'bz, HZ);
  pmos   (PAD, MG_tmp, 1'b0);
  bufif1 (C_buf, PAD, 1'b1);
  bufif1 (weak0,weak1) (C_buf, 1'b1, pull_c);
  buf    (C_tmp, C_buf);
  nmos   (C_pre, 1'b0, HZ);
  pmos   (C_pre, C_tmp, HZ);
  pmos   (C, C_pre, 1'b0);
  not    (RE, REN);
  buf    #(PullTime,0) (pull_pad, RE);
  buf    (pull_c, RE);

`ifdef TETRAMAX
`else
  always @(PAD) begin
    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") && $countdrivers(PAD))
      $display("%t ++BUS CONFLICT++ : %m", $realtime);
  end

  always @(VDDPST) begin
    if (VDDPST !== 1'b1) begin
      $display("%t ++Abnormal Pattern: VDDPST++ : %m", $realtime);
      $stop(1);
    end
  end

  always @(VSS) begin
    if (VSS !== 1'b0) begin
      $display("%t ++Abnormal Pattern: VSS++ : %m", $realtime);
      $stop(1);
    end
  end

  always @(VSSPST) begin
    if (VSSPST !== 1'b0) begin
      $display("%t ++Abnormal Pattern: VSSPST++ : %m", $realtime);
      $stop(1);
    end
  end

  specify
    (I => PAD)=(0, 0);
    (OEN => PAD)=(0, 0, 0, 0, 0, 0);
    (PAD => C)=(0, 0);
  endspecify
`endif
endmodule
`endcelldefine

`celldefine
module PRUW16DGZ_H_G (I, OEN, REN, PAD, C, POC, VDD, VSS, VDDPST, VSSPST);
  input I, OEN, REN;
  inout PAD;
  inout POC, VDD, VSS, VDDPST, VSSPST;
  output C;

  wire MG, pull_pad, pull_c;
  parameter PullTime = 10000;

  not    (VDDN, VDD);
  and    (HZ, VDDN, VDDPST, POC);

  bufif0 (PAD_q, I, OEN);
  pmos   (MG, PAD_q, 1'b0);
  bufif1 (weak1, weak0) (PAD_i, 1'b1, pull_pad);
  pmos   (MG, PAD_i, 1'b0);
  pmos   (MG_tmp, MG, HZ);
  nmos   (MG_tmp, 1'bz, HZ);
  pmos   (PAD, MG_tmp, 1'b0);
  bufif1 (C_buf, PAD, 1'b1);
  bufif1 (weak0,weak1) (C_buf, 1'b1, pull_c);
  buf    (C_tmp, C_buf);
  nmos   (C_pre, 1'b0, HZ);
  pmos   (C_pre, C_tmp, HZ);
  pmos   (C, C_pre, 1'b0);
  not    (RE, REN);
  buf    #(PullTime,0) (pull_pad, RE);
  buf    (pull_c, RE);

`ifdef TETRAMAX
`else
  always @(PAD) begin
    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") && $countdrivers(PAD))
      $display("%t ++BUS CONFLICT++ : %m", $realtime);
  end

  always @(VDDPST) begin
    if (VDDPST !== 1'b1) begin
      $display("%t ++Abnormal Pattern: VDDPST++ : %m", $realtime);
      $stop(1);
    end
  end

  always @(VSS) begin
    if (VSS !== 1'b0) begin
      $display("%t ++Abnormal Pattern: VSS++ : %m", $realtime);
      $stop(1);
    end
  end

  always @(VSSPST) begin
    if (VSSPST !== 1'b0) begin
      $display("%t ++Abnormal Pattern: VSSPST++ : %m", $realtime);
      $stop(1);
    end
  end

  specify
    (I => PAD)=(0, 0);
    (OEN => PAD)=(0, 0, 0, 0, 0, 0);
    (PAD => C)=(0, 0);
  endspecify
`endif
endmodule
`endcelldefine

`celldefine
module PRUW16DGZ_V_G (I, OEN, REN, PAD, C, POC, VDD, VSS, VDDPST, VSSPST);
  input I, OEN, REN;
  inout PAD;
  inout POC, VDD, VSS, VDDPST, VSSPST;
  output C;

  wire MG, pull_pad, pull_c;
  parameter PullTime = 10000;

  not    (VDDN, VDD);
  and    (HZ, VDDN, VDDPST, POC);

  bufif0 (PAD_q, I, OEN);
  pmos   (MG, PAD_q, 1'b0);
  bufif1 (weak1, weak0) (PAD_i, 1'b1, pull_pad);
  pmos   (MG, PAD_i, 1'b0);
  pmos   (MG_tmp, MG, HZ);
  nmos   (MG_tmp, 1'bz, HZ);
  pmos   (PAD, MG_tmp, 1'b0);
  bufif1 (C_buf, PAD, 1'b1);
  bufif1 (weak0,weak1) (C_buf, 1'b1, pull_c);
  buf    (C_tmp, C_buf);
  nmos   (C_pre, 1'b0, HZ);
  pmos   (C_pre, C_tmp, HZ);
  pmos   (C, C_pre, 1'b0);
  not    (RE, REN);
  buf    #(PullTime,0) (pull_pad, RE);
  buf    (pull_c, RE);

`ifdef TETRAMAX
`else
  always @(PAD) begin
    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") && $countdrivers(PAD))
      $display("%t ++BUS CONFLICT++ : %m", $realtime);
  end

  always @(VDDPST) begin
    if (VDDPST !== 1'b1) begin
      $display("%t ++Abnormal Pattern: VDDPST++ : %m", $realtime);
      $stop(1);
    end
  end

  always @(VSS) begin
    if (VSS !== 1'b0) begin
      $display("%t ++Abnormal Pattern: VSS++ : %m", $realtime);
      $stop(1);
    end
  end

  always @(VSSPST) begin
    if (VSSPST !== 1'b0) begin
      $display("%t ++Abnormal Pattern: VSSPST++ : %m", $realtime);
      $stop(1);
    end
  end

  specify
    (I => PAD)=(0, 0);
    (OEN => PAD)=(0, 0, 0, 0, 0, 0);
    (PAD => C)=(0, 0);
  endspecify
`endif
endmodule
`endcelldefine

`celldefine
module PRUW16SDGZ_H_G (I, OEN, REN, PAD, C, POC, VDD, VSS, VDDPST, VSSPST);
  input I, OEN, REN;
  inout PAD;
  inout POC, VDD, VSS, VDDPST, VSSPST;
  output C;

  wire MG, pull_pad, pull_c;
  parameter PullTime = 10000;

  not    (VDDN, VDD);
  and    (HZ, VDDN, VDDPST, POC);

  bufif0 (PAD_q, I, OEN);
  pmos   (MG, PAD_q, 1'b0);
  bufif1 (weak1, weak0) (PAD_i, 1'b1, pull_pad);
  pmos   (MG, PAD_i, 1'b0);
  pmos   (MG_tmp, MG, HZ);
  nmos   (MG_tmp, 1'bz, HZ);
  pmos   (PAD, MG_tmp, 1'b0);
  bufif1 (C_buf, PAD, 1'b1);
  bufif1 (weak0,weak1) (C_buf, 1'b1, pull_c);
  buf    (C_tmp, C_buf);
  nmos   (C_pre, 1'b0, HZ);
  pmos   (C_pre, C_tmp, HZ);
  pmos   (C, C_pre, 1'b0);
  not    (RE, REN);
  buf    #(PullTime,0) (pull_pad, RE);
  buf    (pull_c, RE);

`ifdef TETRAMAX
`else
  always @(PAD) begin
    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") && $countdrivers(PAD))
      $display("%t ++BUS CONFLICT++ : %m", $realtime);
  end

  always @(VDDPST) begin
    if (VDDPST !== 1'b1) begin
      $display("%t ++Abnormal Pattern: VDDPST++ : %m", $realtime);
      $stop(1);
    end
  end

  always @(VSS) begin
    if (VSS !== 1'b0) begin
      $display("%t ++Abnormal Pattern: VSS++ : %m", $realtime);
      $stop(1);
    end
  end

  always @(VSSPST) begin
    if (VSSPST !== 1'b0) begin
      $display("%t ++Abnormal Pattern: VSSPST++ : %m", $realtime);
      $stop(1);
    end
  end

  specify
    (I => PAD)=(0, 0);
    (OEN => PAD)=(0, 0, 0, 0, 0, 0);
    (PAD => C)=(0, 0);
  endspecify
`endif
endmodule
`endcelldefine

`celldefine
module PRUW16SDGZ_V_G (I, OEN, REN, PAD, C, POC, VDD, VSS, VDDPST, VSSPST);
  input I, OEN, REN;
  inout PAD;
  inout POC, VDD, VSS, VDDPST, VSSPST;
  output C;

  wire MG, pull_pad, pull_c;
  parameter PullTime = 10000;

  not    (VDDN, VDD);
  and    (HZ, VDDN, VDDPST, POC);

  bufif0 (PAD_q, I, OEN);
  pmos   (MG, PAD_q, 1'b0);
  bufif1 (weak1, weak0) (PAD_i, 1'b1, pull_pad);
  pmos   (MG, PAD_i, 1'b0);
  pmos   (MG_tmp, MG, HZ);
  nmos   (MG_tmp, 1'bz, HZ);
  pmos   (PAD, MG_tmp, 1'b0);
  bufif1 (C_buf, PAD, 1'b1);
  bufif1 (weak0,weak1) (C_buf, 1'b1, pull_c);
  buf    (C_tmp, C_buf);
  nmos   (C_pre, 1'b0, HZ);
  pmos   (C_pre, C_tmp, HZ);
  pmos   (C, C_pre, 1'b0);
  not    (RE, REN);
  buf    #(PullTime,0) (pull_pad, RE);
  buf    (pull_c, RE);

`ifdef TETRAMAX
`else
  always @(PAD) begin
    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") && $countdrivers(PAD))
      $display("%t ++BUS CONFLICT++ : %m", $realtime);
  end

  always @(VDDPST) begin
    if (VDDPST !== 1'b1) begin
      $display("%t ++Abnormal Pattern: VDDPST++ : %m", $realtime);
      $stop(1);
    end
  end

  always @(VSS) begin
    if (VSS !== 1'b0) begin
      $display("%t ++Abnormal Pattern: VSS++ : %m", $realtime);
      $stop(1);
    end
  end

  always @(VSSPST) begin
    if (VSSPST !== 1'b0) begin
      $display("%t ++Abnormal Pattern: VSSPST++ : %m", $realtime);
      $stop(1);
    end
  end

  specify
    (I => PAD)=(0, 0);
    (OEN => PAD)=(0, 0, 0, 0, 0, 0);
    (PAD => C)=(0, 0);
  endspecify
`endif
endmodule
`endcelldefine

`celldefine
module PVDD1A_H_G (AVDD, TAVDD, TAVSS, VSS);
  inout AVDD, TAVDD;
  inout VSS, TAVSS;

  tran (AVDD, AVDD);

`ifdef TETRAMAX
`else
always @(TAVDD) begin
  if (TAVDD !== 1'b1) begin
    $display("%t ++Abnormal Pattern: TAVDD++ : %m", $realtime);
    $stop(1);
  end
end

always @(TAVSS) begin
  if (TAVSS !== 1'b0) begin
    $display("%t ++Abnormal Pattern: TAVSS++ : %m", $realtime);
    $stop(1);
  end
end

always @(VSS) begin
  if (VSS !== 1'b0) begin
    $display("%t ++Abnormal Pattern: VSS++ : %m", $realtime);
    $stop(1);
  end
end
`endif

endmodule
`endcelldefine

`celldefine
module PVDD1A_V_G (AVDD, TAVDD, TAVSS, VSS);
  inout AVDD, TAVDD;
  inout VSS, TAVSS;

  tran (AVDD, AVDD);

`ifdef TETRAMAX
`else
always @(TAVDD) begin
  if (TAVDD !== 1'b1) begin
    $display("%t ++Abnormal Pattern: TAVDD++ : %m", $realtime);
    $stop(1);
  end
end

always @(TAVSS) begin
  if (TAVSS !== 1'b0) begin
    $display("%t ++Abnormal Pattern: TAVSS++ : %m", $realtime);
    $stop(1);
  end
end

always @(VSS) begin
  if (VSS !== 1'b0) begin
    $display("%t ++Abnormal Pattern: VSS++ : %m", $realtime);
    $stop(1);
  end
end
`endif

endmodule
`endcelldefine

`celldefine
module PVDD1AC_H_G (AVDD, TACVDD, TACVSS, VSS);
  inout AVDD, TACVDD;
  inout VSS, TACVSS;

  tran (AVDD, AVDD);

`ifdef TETRAMAX
`else
always @(TACVDD) begin
  if (TACVDD !== 1'b1) begin
    $display("%t ++Abnormal Pattern: TACVDD++ : %m", $realtime);
    $stop(1);
  end
end

always @(TACVSS) begin
  if (TACVSS !== 1'b0) begin
    $display("%t ++Abnormal Pattern: TACVSS++ : %m", $realtime);
    $stop(1);
  end
end

always @(VSS) begin
  if (VSS !== 1'b0) begin
    $display("%t ++Abnormal Pattern: VSS++ : %m", $realtime);
    $stop(1);
  end
end
`endif

endmodule
`endcelldefine

`celldefine
module PVDD1AC_V_G (AVDD, TACVDD, TACVSS, VSS);
  inout AVDD, TACVDD;
  inout VSS, TACVSS;

  tran (AVDD, AVDD);

`ifdef TETRAMAX
`else
always @(TACVDD) begin
  if (TACVDD !== 1'b1) begin
    $display("%t ++Abnormal Pattern: TACVDD++ : %m", $realtime);
    $stop(1);
  end
end

always @(TACVSS) begin
  if (TACVSS !== 1'b0) begin
    $display("%t ++Abnormal Pattern: TACVSS++ : %m", $realtime);
    $stop(1);
  end
end

always @(VSS) begin
  if (VSS !== 1'b0) begin
    $display("%t ++Abnormal Pattern: VSS++ : %m", $realtime);
    $stop(1);
  end
end
`endif

endmodule
`endcelldefine

`celldefine
module PVDD1ANA_H_G (AVDD, POC, VDD, VSS, VDDPST, VSSPST);
  inout AVDD;
  inout POC, VDD, VSS, VDDPST, VSSPST;

  tran (AVDD, AVDD);
  tran (POC, POC);
  tran (VDD, VDD);

`ifdef TETRAMAX
`else
always @(VDDPST) begin
  if (VDDPST !== 1'b1) begin
    $display("%t ++Abnormal Pattern: VDDPST++ : %m", $realtime);
    $stop(1);
  end
end

always @(VSS) begin
  if (VSS !== 1'b0) begin
    $display("%t ++Abnormal Pattern: VSS++ : %m", $realtime);
    $stop(1);
  end
end

always @(VSSPST) begin
  if (VSSPST !== 1'b0) begin
    $display("%t ++Abnormal Pattern: VSSPST++ : %m", $realtime);
    $stop(1);
  end
end
`endif

endmodule
`endcelldefine

`celldefine
module PVDD1ANA_V_G (AVDD, POC, VDD, VSS, VDDPST, VSSPST);
  inout AVDD;
  inout POC, VDD, VSS, VDDPST, VSSPST;

  tran (AVDD, AVDD);
  tran (POC, POC);
  tran (VDD, VDD);

`ifdef TETRAMAX
`else
always @(VDDPST) begin
  if (VDDPST !== 1'b1) begin
    $display("%t ++Abnormal Pattern: VDDPST++ : %m", $realtime);
    $stop(1);
  end
end

always @(VSS) begin
  if (VSS !== 1'b0) begin
    $display("%t ++Abnormal Pattern: VSS++ : %m", $realtime);
    $stop(1);
  end
end

always @(VSSPST) begin
  if (VSSPST !== 1'b0) begin
    $display("%t ++Abnormal Pattern: VSSPST++ : %m", $realtime);
    $stop(1);
  end
end
`endif

endmodule
`endcelldefine

`celldefine
module PVDD1DGZ_H_G (POC, VDD, VSS, VDDPST, VSSPST);
  inout POC, VDD, VSS, VDDPST, VSSPST;

  tran (POC, POC);
  tran (VDD, VDD);

`ifdef TETRAMAX
`else
always @(VDDPST) begin
  if (VDDPST !== 1'b1) begin
    $display("%t ++Abnormal Pattern: VDDPST++ : %m", $realtime);
    $stop(1);
  end
end

always @(VSS) begin
  if (VSS !== 1'b0) begin
    $display("%t ++Abnormal Pattern: VSS++ : %m", $realtime);
    $stop(1);
  end
end

always @(VSSPST) begin
  if (VSSPST !== 1'b0) begin
    $display("%t ++Abnormal Pattern: VSSPST++ : %m", $realtime);
    $stop(1);
  end
end
`endif

endmodule
`endcelldefine

`celldefine
module PVDD1DGZ_V_G (POC, VDD, VSS, VDDPST, VSSPST);
  inout POC, VDD, VSS, VDDPST, VSSPST;

  tran (POC, POC);
  tran (VDD, VDD);

`ifdef TETRAMAX
`else
always @(VDDPST) begin
  if (VDDPST !== 1'b1) begin
    $display("%t ++Abnormal Pattern: VDDPST++ : %m", $realtime);
    $stop(1);
  end
end

always @(VSS) begin
  if (VSS !== 1'b0) begin
    $display("%t ++Abnormal Pattern: VSS++ : %m", $realtime);
    $stop(1);
  end
end

always @(VSSPST) begin
  if (VSSPST !== 1'b0) begin
    $display("%t ++Abnormal Pattern: VSSPST++ : %m", $realtime);
    $stop(1);
  end
end
`endif

endmodule
`endcelldefine

`celldefine
module PVDD2ANA_H_G (AVDD, POC, VDD, VSS, VDDPST, VSSPST);
  inout AVDD;
  inout POC, VDD, VSS, VDDPST, VSSPST;

  tran (AVDD, AVDD);
  tran (POC, POC);
  tran (VDD, VDD);

`ifdef TETRAMAX
`else
always @(VDDPST) begin
  if (VDDPST !== 1'b1) begin
    $display("%t ++Abnormal Pattern: VDDPST++ : %m", $realtime);
    $stop(1);
  end
end

always @(VSS) begin
  if (VSS !== 1'b0) begin
    $display("%t ++Abnormal Pattern: VSS++ : %m", $realtime);
    $stop(1);
  end
end

always @(VSSPST) begin
  if (VSSPST !== 1'b0) begin
    $display("%t ++Abnormal Pattern: VSSPST++ : %m", $realtime);
    $stop(1);
  end
end
`endif

endmodule
`endcelldefine

`celldefine
module PVDD2ANA_V_G (AVDD, POC, VDD, VSS, VDDPST, VSSPST);
  inout AVDD;
  inout POC, VDD, VSS, VDDPST, VSSPST;

  tran (AVDD, AVDD);
  tran (POC, POC);
  tran (VDD, VDD);

`ifdef TETRAMAX
`else
always @(VDDPST) begin
  if (VDDPST !== 1'b1) begin
    $display("%t ++Abnormal Pattern: VDDPST++ : %m", $realtime);
    $stop(1);
  end
end

always @(VSS) begin
  if (VSS !== 1'b0) begin
    $display("%t ++Abnormal Pattern: VSS++ : %m", $realtime);
    $stop(1);
  end
end

always @(VSSPST) begin
  if (VSSPST !== 1'b0) begin
    $display("%t ++Abnormal Pattern: VSSPST++ : %m", $realtime);
    $stop(1);
  end
end
`endif

endmodule
`endcelldefine

`celldefine
module PVDD2DGZ_H_G (POC, VDD, VSS, VDDPST, VSSPST);
  inout POC, VDD, VSS, VDDPST, VSSPST;

  tran (POC, POC);
  tran (VDD, VDD);

`ifdef TETRAMAX
`else
always @(VDDPST) begin
  if (VDDPST !== 1'b1) begin
    $display("%t ++Abnormal Pattern: VDDPST++ : %m", $realtime);
    $stop(1);
  end
end

always @(VSS) begin
  if (VSS !== 1'b0) begin
    $display("%t ++Abnormal Pattern: VSS++ : %m", $realtime);
    $stop(1);
  end
end

always @(VSSPST) begin
  if (VSSPST !== 1'b0) begin
    $display("%t ++Abnormal Pattern: VSSPST++ : %m", $realtime);
    $stop(1);
  end
end
`endif

endmodule
`endcelldefine

`celldefine
module PVDD2DGZ_V_G (POC, VDD, VSS, VDDPST, VSSPST);
  inout POC, VDD, VSS, VDDPST, VSSPST;

  tran (POC, POC);
  tran (VDD, VDD);

`ifdef TETRAMAX
`else
always @(VDDPST) begin
  if (VDDPST !== 1'b1) begin
    $display("%t ++Abnormal Pattern: VDDPST++ : %m", $realtime);
    $stop(1);
  end
end

always @(VSS) begin
  if (VSS !== 1'b0) begin
    $display("%t ++Abnormal Pattern: VSS++ : %m", $realtime);
    $stop(1);
  end
end

always @(VSSPST) begin
  if (VSSPST !== 1'b0) begin
    $display("%t ++Abnormal Pattern: VSSPST++ : %m", $realtime);
    $stop(1);
  end
end
`endif

endmodule
`endcelldefine

`celldefine
module PVDD2POC_H_G (POC, VDD, VSS, VDDPST, VSSPST);
  inout POC, VDD, VSS, VDDPST, VSSPST;

  tran (VSSPST, VSSPST);

  primitive_poc pvdd2poc_h_func (POC, VDD, VSS, VDDPST);

`ifdef TETRAMAX
`else
always @(VDDPST) begin
  if (VDDPST !== 1'b1) begin
    $display("%t ++Abnormal Pattern: VDDPST++ : %m", $realtime);
    $stop(1);
  end
end

always @(VSS) begin
  if (VSS !== 1'b0) begin
    $display("%t ++Abnormal Pattern: VSS++ : %m", $realtime);
    $stop(1);
  end
end

always @(VSSPST) begin
  if (VSSPST !== 1'b0) begin
    $display("%t ++Abnormal Pattern: VSSPST++ : %m", $realtime);
    $stop(1);
  end
end
`endif

endmodule
`endcelldefine

`celldefine
module PVDD2POC_V_G (POC, VDD, VSS, VDDPST, VSSPST);
  inout POC, VDD, VSS, VDDPST, VSSPST;

  tran (VSSPST, VSSPST);

  primitive_poc pvdd2poc_h_func (POC, VDD, VSS, VDDPST);

`ifdef TETRAMAX
`else
always @(VDDPST) begin
  if (VDDPST !== 1'b1) begin
    $display("%t ++Abnormal Pattern: VDDPST++ : %m", $realtime);
    $stop(1);
  end
end

always @(VSS) begin
  if (VSS !== 1'b0) begin
    $display("%t ++Abnormal Pattern: VSS++ : %m", $realtime);
    $stop(1);
  end
end

always @(VSSPST) begin
  if (VSSPST !== 1'b0) begin
    $display("%t ++Abnormal Pattern: VSSPST++ : %m", $realtime);
    $stop(1);
  end
end
`endif

endmodule
`endcelldefine

`celldefine
module PVDD3A_H_G (AVDD, TAVDD, TAVSS, VSS);
  inout AVDD, TAVDD;
  inout VSS, TAVSS;

  tran (TAVDD, AVDD);

`ifdef TETRAMAX
`else
always @(TAVDD) begin
  if (TAVDD !== 1'b1) begin
    $display("%t ++Abnormal Pattern: TAVDD++ : %m", $realtime);
    $stop(1);
  end
end

always @(TAVSS) begin
  if (TAVSS !== 1'b0) begin
    $display("%t ++Abnormal Pattern: TAVSS++ : %m", $realtime);
    $stop(1);
  end
end

always @(VSS) begin
  if (VSS !== 1'b0) begin
    $display("%t ++Abnormal Pattern: VSS++ : %m", $realtime);
    $stop(1);
  end
end
`endif

endmodule
`endcelldefine

`celldefine
module PVDD3A_V_G (AVDD, TAVDD, TAVSS, VSS);
  inout AVDD, TAVDD;
  inout VSS, TAVSS;

  tran (TAVDD, AVDD);

`ifdef TETRAMAX
`else
always @(TAVDD) begin
  if (TAVDD !== 1'b1) begin
    $display("%t ++Abnormal Pattern: TAVDD++ : %m", $realtime);
    $stop(1);
  end
end

always @(TAVSS) begin
  if (TAVSS !== 1'b0) begin
    $display("%t ++Abnormal Pattern: TAVSS++ : %m", $realtime);
    $stop(1);
  end
end

always @(VSS) begin
  if (VSS !== 1'b0) begin
    $display("%t ++Abnormal Pattern: VSS++ : %m", $realtime);
    $stop(1);
  end
end
`endif

endmodule
`endcelldefine

`celldefine
module PVDD3AC_H_G (AVDD, TACVDD, TACVSS, VSS);
  inout AVDD, TACVDD;
  inout VSS, TACVSS;

  tran (TACVDD, AVDD);

`ifdef TETRAMAX
`else
always @(TACVDD) begin
  if (TACVDD !== 1'b1) begin
    $display("%t ++Abnormal Pattern: TACVDD++ : %m", $realtime);
    $stop(1);
  end
end

always @(TACVSS) begin
  if (TACVSS !== 1'b0) begin
    $display("%t ++Abnormal Pattern: TACVSS++ : %m", $realtime);
    $stop(1);
  end
end

always @(VSS) begin
  if (VSS !== 1'b0) begin
    $display("%t ++Abnormal Pattern: VSS++ : %m", $realtime);
    $stop(1);
  end
end
`endif

endmodule
`endcelldefine

`celldefine
module PVDD3AC_V_G (AVDD, TACVDD, TACVSS, VSS);
  inout AVDD, TACVDD;
  inout VSS, TACVSS;

  tran (TACVDD, AVDD);

`ifdef TETRAMAX
`else
always @(TACVDD) begin
  if (TACVDD !== 1'b1) begin
    $display("%t ++Abnormal Pattern: TACVDD++ : %m", $realtime);
    $stop(1);
  end
end

always @(TACVSS) begin
  if (TACVSS !== 1'b0) begin
    $display("%t ++Abnormal Pattern: TACVSS++ : %m", $realtime);
    $stop(1);
  end
end

always @(VSS) begin
  if (VSS !== 1'b0) begin
    $display("%t ++Abnormal Pattern: VSS++ : %m", $realtime);
    $stop(1);
  end
end
`endif

endmodule
`endcelldefine

`celldefine
module PVSS1A_H_G (AVSS, TAVDD, TAVSS, VSS);
  inout AVSS, TAVDD;
  inout VSS, TAVSS;

  tran (AVSS, AVSS);

`ifdef TETRAMAX
`else
always @(TAVDD) begin
  if (TAVDD !== 1'b1) begin
    $display("%t ++Abnormal Pattern: TAVDD++ : %m", $realtime);
    $stop(1);
  end
end

always @(TAVSS) begin
  if (TAVSS !== 1'b0) begin
    $display("%t ++Abnormal Pattern: TAVSS++ : %m", $realtime);
    $stop(1);
  end
end

always @(VSS) begin
  if (VSS !== 1'b0) begin
    $display("%t ++Abnormal Pattern: VSS++ : %m", $realtime);
    $stop(1);
  end
end
`endif

endmodule
`endcelldefine

`celldefine
module PVSS1A_V_G (AVSS, TAVDD, TAVSS, VSS);
  inout AVSS, TAVDD;
  inout VSS, TAVSS;

  tran (AVSS, AVSS);

`ifdef TETRAMAX
`else
always @(TAVDD) begin
  if (TAVDD !== 1'b1) begin
    $display("%t ++Abnormal Pattern: TAVDD++ : %m", $realtime);
    $stop(1);
  end
end

always @(TAVSS) begin
  if (TAVSS !== 1'b0) begin
    $display("%t ++Abnormal Pattern: TAVSS++ : %m", $realtime);
    $stop(1);
  end
end

always @(VSS) begin
  if (VSS !== 1'b0) begin
    $display("%t ++Abnormal Pattern: VSS++ : %m", $realtime);
    $stop(1);
  end
end
`endif

endmodule
`endcelldefine

`celldefine
module PVSS1AC_H_G (AVSS, TACVDD, TACVSS, VSS);
  inout AVSS, TACVDD;
  inout VSS, TACVSS;

  tran (AVSS, AVSS);

`ifdef TETRAMAX
`else
always @(TACVDD) begin
  if (TACVDD !== 1'b1) begin
    $display("%t ++Abnormal Pattern: TACVDD++ : %m", $realtime);
    $stop(1);
  end
end

always @(TACVSS) begin
  if (TACVSS !== 1'b0) begin
    $display("%t ++Abnormal Pattern: TACVSS++ : %m", $realtime);
    $stop(1);
  end
end

always @(VSS) begin
  if (VSS !== 1'b0) begin
    $display("%t ++Abnormal Pattern: VSS++ : %m", $realtime);
    $stop(1);
  end
end
`endif

endmodule
`endcelldefine

`celldefine
module PVSS1AC_V_G (AVSS, TACVDD, TACVSS, VSS);
  inout AVSS, TACVDD;
  inout VSS, TACVSS;

  tran (AVSS, AVSS);

`ifdef TETRAMAX
`else
always @(TACVDD) begin
  if (TACVDD !== 1'b1) begin
    $display("%t ++Abnormal Pattern: TACVDD++ : %m", $realtime);
    $stop(1);
  end
end

always @(TACVSS) begin
  if (TACVSS !== 1'b0) begin
    $display("%t ++Abnormal Pattern: TACVSS++ : %m", $realtime);
    $stop(1);
  end
end

always @(VSS) begin
  if (VSS !== 1'b0) begin
    $display("%t ++Abnormal Pattern: VSS++ : %m", $realtime);
    $stop(1);
  end
end
`endif

endmodule
`endcelldefine

`celldefine
module PVSS1ANA_H_G (AVSS, POC, VDD, VSS, VDDPST, VSSPST);
  inout AVSS;
  inout POC, VDD, VSS, VDDPST, VSSPST;

  tran (AVSS, AVSS);
  tran (POC, POC);
  tran (VDD, VDD);

`ifdef TETRAMAX
`else
always @(VDDPST) begin
  if (VDDPST !== 1'b1) begin
    $display("%t ++Abnormal Pattern: VDDPST++ : %m", $realtime);
    $stop(1);
  end
end

always @(VSS) begin
  if (VSS !== 1'b0) begin
    $display("%t ++Abnormal Pattern: VSS++ : %m", $realtime);
    $stop(1);
  end
end

always @(VSSPST) begin
  if (VSSPST !== 1'b0) begin
    $display("%t ++Abnormal Pattern: VSSPST++ : %m", $realtime);
    $stop(1);
  end
end
`endif

endmodule
`endcelldefine

`celldefine
module PVSS1ANA_V_G (AVSS, POC, VDD, VSS, VDDPST, VSSPST);
  inout AVSS;
  inout POC, VDD, VSS, VDDPST, VSSPST;

  tran (AVSS, AVSS);
  tran (POC, POC);
  tran (VDD, VDD);

`ifdef TETRAMAX
`else
always @(VDDPST) begin
  if (VDDPST !== 1'b1) begin
    $display("%t ++Abnormal Pattern: VDDPST++ : %m", $realtime);
    $stop(1);
  end
end

always @(VSS) begin
  if (VSS !== 1'b0) begin
    $display("%t ++Abnormal Pattern: VSS++ : %m", $realtime);
    $stop(1);
  end
end

always @(VSSPST) begin
  if (VSSPST !== 1'b0) begin
    $display("%t ++Abnormal Pattern: VSSPST++ : %m", $realtime);
    $stop(1);
  end
end
`endif

endmodule
`endcelldefine

`celldefine
module PVSS1DGZ_H_G (POC, VDD, VSS, VDDPST, VSSPST);
  inout POC, VDD, VSS, VDDPST, VSSPST;

  tran (POC, POC);
  tran (VDD, VDD);

`ifdef TETRAMAX
`else
always @(VDDPST) begin
  if (VDDPST !== 1'b1) begin
    $display("%t ++Abnormal Pattern: VDDPST++ : %m", $realtime);
    $stop(1);
  end
end

always @(VSS) begin
  if (VSS !== 1'b0) begin
    $display("%t ++Abnormal Pattern: VSS++ : %m", $realtime);
    $stop(1);
  end
end

always @(VSSPST) begin
  if (VSSPST !== 1'b0) begin
    $display("%t ++Abnormal Pattern: VSSPST++ : %m", $realtime);
    $stop(1);
  end
end
`endif

endmodule
`endcelldefine

`celldefine
module PVSS1DGZ_V_G (POC, VDD, VSS, VDDPST, VSSPST);
  inout POC, VDD, VSS, VDDPST, VSSPST;

  tran (POC, POC);
  tran (VDD, VDD);

`ifdef TETRAMAX
`else
always @(VDDPST) begin
  if (VDDPST !== 1'b1) begin
    $display("%t ++Abnormal Pattern: VDDPST++ : %m", $realtime);
    $stop(1);
  end
end

always @(VSS) begin
  if (VSS !== 1'b0) begin
    $display("%t ++Abnormal Pattern: VSS++ : %m", $realtime);
    $stop(1);
  end
end

always @(VSSPST) begin
  if (VSSPST !== 1'b0) begin
    $display("%t ++Abnormal Pattern: VSSPST++ : %m", $realtime);
    $stop(1);
  end
end
`endif

endmodule
`endcelldefine

`celldefine
module PVSS2A_H_G (TAVDD, TAVSS, VSS);
  inout  TAVDD, TAVSS, VSS;

`ifdef TETRAMAX
`else
always @(TAVDD) begin
  if (TAVDD !== 1'b1) begin
    $display("%t ++Abnormal Pattern: TAVDD++ : %m", $realtime);
    $stop(1);
  end
end

always @(TAVSS) begin
  if (TAVSS !== 1'b0) begin
    $display("%t ++Abnormal Pattern: TAVSS++ : %m", $realtime);
    $stop(1);
  end
end

always @(VSS) begin
  if (VSS !== 1'b0) begin
    $display("%t ++Abnormal Pattern: VSS++ : %m", $realtime);
    $stop(1);
  end
end
`endif

endmodule
`endcelldefine

`celldefine
module PVSS2A_V_G (TAVDD, TAVSS, VSS);
  inout  TAVDD, TAVSS, VSS;

`ifdef TETRAMAX
`else
always @(TAVDD) begin
  if (TAVDD !== 1'b1) begin
    $display("%t ++Abnormal Pattern: TAVDD++ : %m", $realtime);
    $stop(1);
  end
end

always @(TAVSS) begin
  if (TAVSS !== 1'b0) begin
    $display("%t ++Abnormal Pattern: TAVSS++ : %m", $realtime);
    $stop(1);
  end
end

always @(VSS) begin
  if (VSS !== 1'b0) begin
    $display("%t ++Abnormal Pattern: VSS++ : %m", $realtime);
    $stop(1);
  end
end
`endif

endmodule
`endcelldefine

`celldefine
module PVSS2AC_H_G (TACVDD, TACVSS, VSS);
  inout  TACVDD, TACVSS, VSS;

`ifdef TETRAMAX
`else
always @(TACVDD) begin
  if (TACVDD !== 1'b1) begin
    $display("%t ++Abnormal Pattern: TACVDD++ : %m", $realtime);
    $stop(1);
  end
end

always @(TACVSS) begin
  if (TACVSS !== 1'b0) begin
    $display("%t ++Abnormal Pattern: TACVSS++ : %m", $realtime);
    $stop(1);
  end
end

always @(VSS) begin
  if (VSS !== 1'b0) begin
    $display("%t ++Abnormal Pattern: VSS++ : %m", $realtime);
    $stop(1);
  end
end
`endif

endmodule
`endcelldefine

`celldefine
module PVSS2AC_V_G (TACVDD, TACVSS, VSS);
  inout  TACVDD, TACVSS, VSS;

`ifdef TETRAMAX
`else
always @(TACVDD) begin
  if (TACVDD !== 1'b1) begin
    $display("%t ++Abnormal Pattern: TACVDD++ : %m", $realtime);
    $stop(1);
  end
end

always @(TACVSS) begin
  if (TACVSS !== 1'b0) begin
    $display("%t ++Abnormal Pattern: TACVSS++ : %m", $realtime);
    $stop(1);
  end
end

always @(VSS) begin
  if (VSS !== 1'b0) begin
    $display("%t ++Abnormal Pattern: VSS++ : %m", $realtime);
    $stop(1);
  end
end
`endif

endmodule
`endcelldefine

`celldefine
module PVSS2ANA_H_G (AVSS, POC, VDD, VSS, VDDPST, VSSPST);
  inout AVSS;
  inout POC, VDD, VSS, VDDPST, VSSPST;

  tran (AVSS, AVSS);
  tran (POC, POC);
  tran (VDD, VDD);

`ifdef TETRAMAX
`else
always @(VDDPST) begin
  if (VDDPST !== 1'b1) begin
    $display("%t ++Abnormal Pattern: VDDPST++ : %m", $realtime);
    $stop(1);
  end
end

always @(VSS) begin
  if (VSS !== 1'b0) begin
    $display("%t ++Abnormal Pattern: VSS++ : %m", $realtime);
    $stop(1);
  end
end

always @(VSSPST) begin
  if (VSSPST !== 1'b0) begin
    $display("%t ++Abnormal Pattern: VSSPST++ : %m", $realtime);
    $stop(1);
  end
end
`endif

endmodule
`endcelldefine

`celldefine
module PVSS2ANA_V_G (AVSS, POC, VDD, VSS, VDDPST, VSSPST);
  inout AVSS;
  inout POC, VDD, VSS, VDDPST, VSSPST;

  tran (AVSS, AVSS);
  tran (POC, POC);
  tran (VDD, VDD);

`ifdef TETRAMAX
`else
always @(VDDPST) begin
  if (VDDPST !== 1'b1) begin
    $display("%t ++Abnormal Pattern: VDDPST++ : %m", $realtime);
    $stop(1);
  end
end

always @(VSS) begin
  if (VSS !== 1'b0) begin
    $display("%t ++Abnormal Pattern: VSS++ : %m", $realtime);
    $stop(1);
  end
end

always @(VSSPST) begin
  if (VSSPST !== 1'b0) begin
    $display("%t ++Abnormal Pattern: VSSPST++ : %m", $realtime);
    $stop(1);
  end
end
`endif

endmodule
`endcelldefine

`celldefine
module PVSS2DGZ_H_G (POC, VDD, VSS, VDDPST, VSSPST);
  inout POC, VDD, VSS, VDDPST, VSSPST;

  tran (POC, POC);
  tran (VDD, VDD);

`ifdef TETRAMAX
`else
always @(VDDPST) begin
  if (VDDPST !== 1'b1) begin
    $display("%t ++Abnormal Pattern: VDDPST++ : %m", $realtime);
    $stop(1);
  end
end

always @(VSS) begin
  if (VSS !== 1'b0) begin
    $display("%t ++Abnormal Pattern: VSS++ : %m", $realtime);
    $stop(1);
  end
end

always @(VSSPST) begin
  if (VSSPST !== 1'b0) begin
    $display("%t ++Abnormal Pattern: VSSPST++ : %m", $realtime);
    $stop(1);
  end
end
`endif

endmodule
`endcelldefine

`celldefine
module PVSS2DGZ_V_G (POC, VDD, VSS, VDDPST, VSSPST);
  inout POC, VDD, VSS, VDDPST, VSSPST;

  tran (POC, POC);
  tran (VDD, VDD);

`ifdef TETRAMAX
`else
always @(VDDPST) begin
  if (VDDPST !== 1'b1) begin
    $display("%t ++Abnormal Pattern: VDDPST++ : %m", $realtime);
    $stop(1);
  end
end

always @(VSS) begin
  if (VSS !== 1'b0) begin
    $display("%t ++Abnormal Pattern: VSS++ : %m", $realtime);
    $stop(1);
  end
end

always @(VSSPST) begin
  if (VSSPST !== 1'b0) begin
    $display("%t ++Abnormal Pattern: VSSPST++ : %m", $realtime);
    $stop(1);
  end
end
`endif

endmodule
`endcelldefine

`celldefine
module PVSS3A_H_G (AVSS, TAVDD, TAVSS, VSS);
  inout  AVSS;
  inout  TAVDD, TAVSS, VSS;

  tran (TAVSS, AVSS);

`ifdef TETRAMAX
`else
always @(TAVDD) begin
  if (TAVDD !== 1'b1) begin
    $display("%t ++Abnormal Pattern: TAVDD++ : %m", $realtime);
    $stop(1);
  end
end

always @(TAVSS) begin
  if (TAVSS !== 1'b0) begin
    $display("%t ++Abnormal Pattern: TAVSS++ : %m", $realtime);
    $stop(1);
  end
end

always @(VSS) begin
  if (VSS !== 1'b0) begin
    $display("%t ++Abnormal Pattern: VSS++ : %m", $realtime);
    $stop(1);
  end
end
`endif

endmodule
`endcelldefine

`celldefine
module PVSS3A_V_G (AVSS, TAVDD, TAVSS, VSS);
  inout  AVSS;
  inout  TAVDD, TAVSS, VSS;

  tran (TAVSS, AVSS);

`ifdef TETRAMAX
`else
always @(TAVDD) begin
  if (TAVDD !== 1'b1) begin
    $display("%t ++Abnormal Pattern: TAVDD++ : %m", $realtime);
    $stop(1);
  end
end

always @(TAVSS) begin
  if (TAVSS !== 1'b0) begin
    $display("%t ++Abnormal Pattern: TAVSS++ : %m", $realtime);
    $stop(1);
  end
end

always @(VSS) begin
  if (VSS !== 1'b0) begin
    $display("%t ++Abnormal Pattern: VSS++ : %m", $realtime);
    $stop(1);
  end
end
`endif

endmodule
`endcelldefine

`celldefine
module PVSS3AC_H_G (AVSS, TACVDD, TACVSS, VSS);
  inout  AVSS;
  inout  TACVDD, TACVSS, VSS;

  tran (TACVSS, AVSS);

`ifdef TETRAMAX
`else
always @(TACVDD) begin
  if (TACVDD !== 1'b1) begin
    $display("%t ++Abnormal Pattern: TACVDD++ : %m", $realtime);
    $stop(1);
  end
end

always @(TACVSS) begin
  if (TACVSS !== 1'b0) begin
    $display("%t ++Abnormal Pattern: TACVSS++ : %m", $realtime);
    $stop(1);
  end
end

always @(VSS) begin
  if (VSS !== 1'b0) begin
    $display("%t ++Abnormal Pattern: VSS++ : %m", $realtime);
    $stop(1);
  end
end
`endif

endmodule
`endcelldefine

`celldefine
module PVSS3AC_V_G (AVSS, TACVDD, TACVSS, VSS);
  inout  AVSS;
  inout  TACVDD, TACVSS, VSS;

  tran (TACVSS, AVSS);

`ifdef TETRAMAX
`else
always @(TACVDD) begin
  if (TACVDD !== 1'b1) begin
    $display("%t ++Abnormal Pattern: TACVDD++ : %m", $realtime);
    $stop(1);
  end
end

always @(TACVSS) begin
  if (TACVSS !== 1'b0) begin
    $display("%t ++Abnormal Pattern: TACVSS++ : %m", $realtime);
    $stop(1);
  end
end

always @(VSS) begin
  if (VSS !== 1'b0) begin
    $display("%t ++Abnormal Pattern: VSS++ : %m", $realtime);
    $stop(1);
  end
end
`endif

endmodule
`endcelldefine

`celldefine
module PVSS3DGZ_H_G (POC, VDD, VSS, VDDPST);
  inout POC, VDD, VSS, VDDPST;

  tran (POC, POC);
  tran (VDD, VDD);

`ifdef TETRAMAX
`else
always @(VDDPST) begin
  if (VDDPST !== 1'b1) begin
    $display("%t ++Abnormal Pattern: VDDPST++ : %m", $realtime);
    $stop(1);
  end
end

always @(VSS) begin
  if (VSS !== 1'b0) begin
    $display("%t ++Abnormal Pattern: VSS++ : %m", $realtime);
    $stop(1);
  end
end
`endif

endmodule
`endcelldefine

`celldefine
module PVSS3DGZ_V_G (POC, VDD, VSS, VDDPST);
  inout POC, VDD, VSS, VDDPST;

  tran (POC, POC);
  tran (VDD, VDD);

`ifdef TETRAMAX
`else
always @(VDDPST) begin
  if (VDDPST !== 1'b1) begin
    $display("%t ++Abnormal Pattern: VDDPST++ : %m", $realtime);
    $stop(1);
  end
end

always @(VSS) begin
  if (VSS !== 1'b0) begin
    $display("%t ++Abnormal Pattern: VSS++ : %m", $realtime);
    $stop(1);
  end
end
`endif

endmodule
`endcelldefine

primitive primitive_digital_io_power_down (P_out, P_int, poc, vdd, vss, vddpst, vsspst);
  output P_out;
  input  P_int, poc, vdd, vss, vddpst, vsspst;
  table
  //P_int poc vdd vss vddpst vsspst : P_out
    0  0  1  0  1  0  :  0  ;
    1  0  1  0  1  0  :  1  ;

    ?  0  0  0  0  0  :  x  ;
    ?  0  0  0  0  1  :  x  ;
    ?  0  0  0  1  0  :  x  ;
    ?  0  0  0  1  1  :  x  ;
    ?  0  0  1  0  0  :  x  ;
    ?  0  0  1  0  1  :  x  ;
    ?  0  0  1  1  0  :  x  ;
    ?  0  0  1  1  1  :  x  ;
    ?  0  1  0  0  0  :  x  ;
    ?  0  1  0  0  1  :  x  ;
    ?  0  1  0  1  1  :  x  ;
    ?  0  1  1  0  0  :  x  ;
    ?  0  1  1  0  1  :  x  ;
    ?  0  1  1  1  0  :  x  ;
    ?  0  1  1  1  1  :  x  ;

    ?  1  ?  ?  ?  ?  :  x  ;
    ?  x  ?  ?  ?  ?  :  x  ;
    ?  ?  x  ?  ?  ?  :  x  ;
    ?  ?  ?  x  ?  ?  :  x  ;
    ?  ?  ?  ?  x  ?  :  x  ;
    ?  ?  ?  ?  ?  x  :  x  ;
  endtable
endprimitive

primitive primitive_poc (poc, vdd, vss, vddpst);
  output poc;
  input  vdd, vss, vddpst;
  table
  //vdd vss vddpst : poc
    0  0  1  :  1  ;
    1  0  1  :  0  ;
    0  0  0  :  x  ;
    0  1  0  :  x  ;
    0  1  1  :  x  ;
    1  0  0  :  x  ;
    1  1  0  :  x  ;
    1  1  1  :  x  ;
    x  ?  ?  :  x  ;
    ?  x  ?  :  x  ;
    ?  ?  x  :  x  ;
  endtable
endprimitive

