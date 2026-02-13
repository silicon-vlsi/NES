v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 3820 -670 3820 -460 {lab=#net1}
N 3680 -560 3740 -560 {lab=#net2}
N 3740 -590 3740 -560 {lab=#net2}
N 3760 -460 3910 -460 {lab=#net1}
N 3760 -400 3760 -350 {lab=#net3}
N 3910 -400 3910 -350 {lab=#net4}
N 3760 -290 3760 -270 {lab=#net5}
N 3760 -210 3910 -210 {lab=GND}
N 3910 -290 3910 -270 {lab=#net6}
N 3950 -430 3980 -430 {lab=inp}
N 3720 -590 4000 -590 {lab=#net2}
N 4040 -560 4040 -350 {lab=out}
N 3950 -320 4000 -320 {lab=#net4}
N 3970 -380 3970 -320 {lab=#net4}
N 3910 -380 3970 -380 {lab=#net4}
N 3910 -210 4040 -210 {lab=GND}
N 4040 -290 4040 -270 {lab=#net7}
N 3680 -560 3680 -350 {lab=#net2}
N 3670 -350 3680 -350 {lab=#net2}
N 3710 -320 3720 -320 {lab=#net3}
N 3670 -290 3670 -270 {lab=#net8}
N 3670 -210 3760 -210 {lab=GND}
N 3710 -370 3710 -320 {lab=#net3}
N 3710 -370 3760 -370 {lab=#net3}
N 3540 -430 3720 -430 {lab=inn}
N 3820 -930 3820 -870 {lab=VDD}
N 3820 -210 3820 -170 {lab=GND}
N 4040 -510 4130 -510 {lab=out}
N 4130 -510 4180 -510 {lab=out}
N 3680 -870 3680 -840 {lab=VDD}
N 3820 -870 3820 -840 {lab=VDD}
N 4040 -870 4040 -840 {lab=VDD}
N 3680 -780 3680 -620 {lab=#net9}
N 3820 -780 3820 -730 {lab=#net10}
N 4040 -780 4040 -620 {lab=#net11}
N 3470 -530 3510 -530 {lab=inp}
N 3540 -210 3670 -210 {lab=GND}
N 3540 -430 3540 -370 {lab=inn}
N 3630 -920 3630 -700 {lab=bias}
N 3680 -870 4040 -870 {lab=VDD}
N 3630 -700 3780 -700 {lab=bias}
C {sky130_fd_pr/pfet3_01v8_lvt.sym} 3800 -700 0 0 {name=M1
W=5
L=2
body=VDD
nf=1
mult=2
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet3_01v8_lvt.sym} 4020 -590 0 0 {name=M3
W=5
L=2
body=VDD
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {iopin.sym} 3820 -930 0 0 {name=p1 lab=VDD}
C {sky130_fd_pr/pfet3_01v8_lvt.sym} 3700 -590 0 1 {name=M4
W=5
L=2
body=VDD
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8.sym} 3740 -320 0 0 {name=M5
W=1
L=2
body=GND
nf=1
mult=2
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8.sym} 3930 -320 0 1 {name=M6
W=1
L=2
body=GND
nf=1
mult=2
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet3_01v8_lvt.sym} 3740 -430 0 0 {name=M7
W=5
L=2
body=VDD
nf=1
mult=5
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet3_01v8_lvt.sym} 3930 -430 0 1 {name=M8
W=5
L=2
body=VDD
nf=1
mult=5
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {lab_wire.sym} 3980 -430 0 0 {name=p3 sig_type=std_logic lab=inp}
C {sky130_fd_pr/nfet3_01v8.sym} 4020 -320 0 0 {name=M9
W=1
L=2
body=GND
nf=1
mult=2
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8.sym} 3690 -320 0 1 {name=M10
W=1
L=2
body=GND
nf=1
mult=2
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {iopin.sym} 3820 -170 0 0 {name=p4 lab=GND}
C {opin.sym} 4180 -510 0 0 {name=p6 lab=out}
C {vsource.sym} 3680 -810 0 0 {name=V1 value=0 savecurrent=false}
C {vsource.sym} 3820 -810 0 0 {name=V2 value=0 savecurrent=false}
C {vsource.sym} 4040 -810 0 0 {name=V3 value=0 savecurrent=false}
C {vsource.sym} 4040 -240 0 0 {name=V4 value=0 savecurrent=false}
C {vsource.sym} 3910 -240 0 0 {name=V5 value=0 savecurrent=false}
C {vsource.sym} 3760 -240 0 0 {name=V6 value=0 savecurrent=false}
C {vsource.sym} 3670 -240 0 0 {name=V7 value=0 savecurrent=false}
C {lab_wire.sym} 3510 -530 0 0 {name=p9 sig_type=std_logic lab=inp}
C {iopin.sym} 3540 -370 0 0 {name=p2 lab=inn}
C {lab_wire.sym} 3540 -210 0 0 {name=p5 sig_type=std_logic lab=GND}
C {iopin.sym} 3470 -530 0 1 {name=p8 lab=inp}
C {iopin.sym} 3630 -920 0 0 {name=p11 lab=bias}
