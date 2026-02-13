**************************** N-Channel MOSFET Level-1 Model Parameter Extraction ************************
************************* Designer: Santunu Sarangi, Date: 27/01/1026, Bhubaneswar **********************

.title Level-1 Model Parameter Extraction (LAMBDA)

.lib /foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice tt

.global vdd gnd
.temp 27

xmn1  Dn   Gn    Sn  Bn  sky130_fd_pr__nfet_01v8   w=5 l=2 m=1I
Vgs   Gn   gnd   dc  0.9
Vds   Dx   gnd   dc  0.9

Vid   Dx   Dn    dc  0
Vis   Sn   gnd   dc  0
Vsb   gnd  Bn    dc  0

.dc  Vds  0  1.8  0.01

.control
run
set color0 = white
set color1 = black
plot i(Vid) xlabel 'Drain-to-Source Voltage (Vds)' ylabel 'Drain-to-Source Current (Ids)'
.endc
.end


