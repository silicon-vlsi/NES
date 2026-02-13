v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -30 -20 -30 -0 {lab=y}
N -70 -50 -70 30 {lab=in}
N -30 60 -30 80 {lab=gnd}
N -30 -130 -30 -80 {lab=vdd}
N -100 -10 -70 -10 {lab=in}
N -30 -10 60 -10 {lab=y}
C {sky130_fd_pr/nfet3_01v8.sym} -50 30 0 0 {name=M1
W=0.42
L=0.15
body=GND
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet3_01v8.sym} -50 -50 0 0 {name=M2
W=0.59
L=0.15
body=VDD
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {iopin.sym} -30 -130 0 0 {name=p1 lab=vdd
}
C {iopin.sym} -30 80 0 0 {name=p2 lab=gnd
}
C {ipin.sym} -100 -10 0 0 {name=p3 lab=in}
C {opin.sym} 60 -10 0 0 {name=p4 lab=out}
