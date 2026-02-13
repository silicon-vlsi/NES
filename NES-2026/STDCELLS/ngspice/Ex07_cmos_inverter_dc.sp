**************************** CMOS Inverter DC Characteristics **************************
************************* Designer: Santunu Sarangi, Date: 27/01/1026, Bhubaneswar **********************

.title CMOS Inverter Characteristics

.lib /foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.global Vdd Gnd
.temp 27

.param mp=1
.param mn=1

xmp1  Out  In   Sp    Vdd   sky130_fd_pr__pfet_01v8  w=1.26  l=0.15  m=mp
xmn1  Out  In   Dn    Gnd   sky130_fd_pr__nfet_01v8  w=0.42  l=0.15  m=mn
Cl    Out  Gnd   20f

Vsup  Vdd  Gnd  dc  1.8
Vin   In   Gnd  dc  0.9

Vcmp  Vdd  Sp   dc  0
Vcmn  Dn   Gnd  dc  0

.dc  Vin  0  1.8  0.01

.control
run
set color0 = white
set color1 = black
plot V(In) V(Out) xlabel 'Input Voltage (Vin)' ylabel 'Output Voltage (Vout)'
let slope = deriv(V(Out))
plot Slope xlabel 'Input Voltage (Vin)' ylabel 'Slope (dVout/dVin)'
meas dc Vil WHEN slope = -1 FROM=0 TO=0.9
meas dc Vih WHEN slope = -1 FROM=0.9 TO=1.8
let NMH = 1.8-Vih
let NML = Vil-0
print NMH NML

.endc
.end
