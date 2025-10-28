create_clock -period 10.000 -name iclk_1 -waveform {0.000 5.000} [get_ports iclk_1]
create_clock -period 30.003 -name iclk_2 -waveform {0.000 15.002} [get_ports iclk_2]