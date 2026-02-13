**************************** P-Channel MOSFET Current-Voltage Characterization **************************
************************* Designer: Santunu Sarangi, Date: 27/01/1026, Bhubaneswar **********************

.title Isd-vs-Vsg  Characteristics

.lib /foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice tt

.global vdd gnd
.temp 27

xmp1  Dp   Gp    Sp   Bp    sky130_fd_pr__pfet_01v8_lvt   w=5   l=2   m=4
Vsg   Sx   Gp    dc   0.9
Vsd   Sx   gnd   dc   0.9

Vis   Sx   Sp    dc   0
Vib   Sx   Bp    dc   0
Vid   Dp   gnd   dc   0

*.op
*.dc  Vsg  0  1.8  0.01
.dc  Vsg  0  1.8  0.01  Vsd  0  0.9 0.1

.control
run
set color0 = white
set color1 = black
*print i(Vid)
plot i(Vis) xlabel 'Source-to-Gate Volatge (Vsg)' ylabel 'Source-to-Drain Current (Isd)'
.endc
.end


