**************************** CMOS Inverter Static Power Measuremet **************************
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
Vin   In   Gnd  pulse (0  0  10n  100p  100p   4.9n  10n)

Vcmp  Vdd  Sp   dc  0
Vcmn  Dn   Gnd  dc  0

.tran  10p  500n

.control
run
set color0 = white
set color1 = black
let Istat=avg(abs(i(Vsup)))
plot Istat xlabel 'Time (ns)' ylabel 'Average Supply Current (Isup)'
let Pstat =avg(abs(i(Vsup)))*1.8
plot Pstat xlabel 'Time (ns)' ylabel 'Static Power (Pstatic)'

meas tran Istatic FIND Istat AT=500n
meas tran Pstatic FIND Pstat AT=500n

.endc
.end
