# SPDX-FileCopyrightText: © 2024 Tiny Tapeout
# SPDX-License-Identifier: Apache-2.0

import cocotb

@cocotb.test()
async def test_pass(dut):
    dut._log.info("PASS")
