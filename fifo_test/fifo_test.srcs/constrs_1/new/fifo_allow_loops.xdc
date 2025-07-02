## fifo_allow_loops.xdc
# Allow all combinatorial loops inside the FIFO instance
set_property ALLOW_COMBINATORIAL_LOOPS TRUE [get_nets -hierarchical */fifo_ip_inst_i_*/*]
