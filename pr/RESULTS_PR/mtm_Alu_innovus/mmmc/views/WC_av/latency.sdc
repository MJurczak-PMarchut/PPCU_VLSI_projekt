set_clock_latency -source -early -min -rise  -0.274069 [get_ports {clk}] -clock _clk 
set_clock_latency -source -early -min -fall  -0.284238 [get_ports {clk}] -clock _clk 
set_clock_latency -source -early -max -rise  -0.274069 [get_ports {clk}] -clock _clk 
set_clock_latency -source -early -max -fall  -0.284238 [get_ports {clk}] -clock _clk 
set_clock_latency -source -late -min -rise  -0.274069 [get_ports {clk}] -clock _clk 
set_clock_latency -source -late -min -fall  -0.284238 [get_ports {clk}] -clock _clk 
set_clock_latency -source -late -max -rise  -0.274069 [get_ports {clk}] -clock _clk 
set_clock_latency -source -late -max -fall  -0.284238 [get_ports {clk}] -clock _clk 