
* NGSPICE file created from invstd.ext - technology: sky130A
.lib /foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.temp 27
.global VDD GND

V1 VDD 0 1.8

X0 y in gnd gnd sky130_fd_pr__nfet_01v8 ad=0.1134 pd=1.38 as=0.1134 ps=1.38 w=0.42 l=0.15
X1 y in vdd vdd sky130_fd_pr__pfet_01v8 ad=0.1593 pd=1.72 as=0.1593 ps=1.72 w=0.59 l=0.15
C0 y vdd 0.08121f
C1 y in 0.05181f
C2 in vdd 0.11794f
C3 y gnd 0.13596f
C4 in gnd 0.26049f
C5 vdd gnd 0.5023f

V2 in 0 pulse(0 1.8 0 0.2n 0.2n 5n 10n) 
*.dc temp 0 1.8 0.1
.tran 0.01n 20n 
.control
run
set color0= white
set color1= black
plot v(y) v(in)
.endc
.end
