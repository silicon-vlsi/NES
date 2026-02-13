# Copyright lowRISC contributors.
# Licensed under the Apache License, Version 2.0, see LICENSE for details.
# SPDX-License-Identifier: Apache-2.0

# ============================================================
# Clock definition
# ============================================================

create_clock -name core_clk -period 50 [get_ports clk_i]

set_clock_uncertainty 0.2 [get_clocks core_clk]

# ===========================================================
# Reset handling (CRITICAL for Ibex)
# ============================================================

# Ibex reset is asynchronous ¿ must not be timed
set_false_path -from [get_ports rst_ni]

# ===========================================================
# IO timing model (block-level assumptions)
# ============================================================

# All synchronous inputs arrive some time after clock edge
set_input_delay 40 -clock core_clk [all_inputs -no_clocks]

# All outputs are captured some time before next clock edge
set_output_delay 40 -clock core_clk [all_outputs]

# ============================================================
# Physical / electrical limits
# ============================================================

set_max_transition 1.0   [current_design]
set_max_capacitance 0.3  [current_design]
set_max_fanout 15        [current_design]

# ============================================================
# End of SDC
# ============================================================
