<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

Wrapper around the IHP SG13G2 1P SRAM macro `RM_IHPSG13_1P_256x8_c3_bm_bist` (256 words x 8 bits).

- `ui_in[7:0]` = data input (A_DIN)
- `uio_in[7:0]` = address (A_ADDR, 256 words)
- `uo_out[7:0]` = data output (A_DOUT)
- `rst_n` = read/write select: low = write, high = read

The SRAM operates on the rising edge of `clk`. BIST is disabled, bit mask is 0xFF (full byte write).

## How to test

1. Set `rst_n = 0` (write mode)
2. Set address on `uio_in`, data on `ui_in`
3. Pulse `clk` to write
4. Set `rst_n = 1` (read mode)
5. Set address on `uio_in`
6. Pulse `clk`, read result on `uo_out`

## External hardware

None
