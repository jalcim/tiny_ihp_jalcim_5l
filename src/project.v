/*
 * Copyright (c) 2024 Your Name
 * SPDX-License-Identifier: Apache-2.0
 */

`default_nettype none

module tt_um_jalcim_5l (
    input  wire [7:0] ui_in,    // Dedicated inputs
    output wire [7:0] uo_out,   // Dedicated outputs
    input  wire [7:0] uio_in,   // IOs: Input path
    output wire [7:0] uio_out,  // IOs: Output path
    output wire [7:0] uio_oe,   // IOs: Enable path (active high: 0=input, 1=output)
    input  wire       ena,      // always 1 when the design is powered, so you can ignore it
    input  wire       clk,      // clock
    input  wire       rst_n     // reset_n - low to reset
);

  // ui_in[7:0]  → A_DIN  (data a ecrire)
  // uio_in[7:0] → A_ADDR (adresse, 256 mots)
  // uo_out[7:0] → A_DOUT (data lue)

  RM_IHPSG13_1P_256x8_c3_bm_bist sram (
      .A_CLK       (clk),
      .A_MEN       (1'b1),
      .A_WEN       (~rst_n),
      .A_REN       (rst_n),
      .A_ADDR      (uio_in),
      .A_DIN       (ui_in),
      .A_DLY       (1'b0),
      .A_DOUT      (uo_out),
      .A_BM        (8'hFF),
      .A_BIST_CLK  (1'b0),
      .A_BIST_EN   (1'b0),
      .A_BIST_MEN  (1'b0),
      .A_BIST_WEN  (1'b0),
      .A_BIST_REN  (1'b0),
      .A_BIST_ADDR (8'h00),
      .A_BIST_DIN  (8'h00),
      .A_BIST_BM   (8'h00)
  );

  assign uio_out = 8'h00;
  assign uio_oe  = 8'h00;

  wire _unused = &{ena, 1'b0};

endmodule
