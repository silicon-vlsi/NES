v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -250 -30 -140 -30 {lab=inA}
N -250 10 -140 10 {lab=inB}
N -250 30 10 30 {lab=inC}
N -20 -10 10 -10 {lab=xor1_out}
N 140 100 140 120 {lab=and2_out}
N 140 120 180 120 {lab=and2_out}
N 140 160 140 190 {lab=and1_out}
N 140 160 180 160 {lab=and1_out}
N 300 140 420 140 {lab=carry}
N 130 10 420 10 {lab=sum}
N -180 80 20 80 {lab=inA}
N -210 120 20 120 {lab=inB}
N -180 -30 -180 80 {lab=inA}
N -210 10 -210 120 {lab=inB}
N -10 30 -10 170 {lab=inC}
N -10 170 20 170 {lab=inC}
N -20 -10 -20 210 {lab=xor1_out}
N -20 210 20 210 {lab=xor1_out}
C {sky130_stdcells/xor2_1.sym} -80 -10 0 0 {name=x1 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/xor2_1.sym} 70 10 0 0 {name=x2 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/or2_1.sym} 240 140 0 0 {name=x3 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/and2_1.sym} 80 100 0 0 {name=x5 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/and2_1.sym} 80 190 0 0 {name=x4 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {ipin.sym} -250 -30 0 0 {name=p1 lab=inA}
C {ipin.sym} -250 10 0 0 {name=p2 lab=inB}
C {ipin.sym} -250 30 0 0 {name=p3 lab=inC}
C {opin.sym} 420 10 0 0 {name=p4 lab=sum}
C {opin.sym} 420 140 0 0 {name=p5 lab=carry}
C {lab_wire.sym} 0 -10 0 0 {name=p6 sig_type=std_logic lab=xor1_out}
C {lab_wire.sym} 170 10 0 0 {name=p8 sig_type=std_logic lab=sum}
C {lab_wire.sym} 160 160 0 0 {name=p9 sig_type=std_logic lab=and1_out}
C {lab_wire.sym} 150 120 0 0 {name=p10 sig_type=std_logic lab=and2_out}
C {lab_wire.sym} 340 140 0 0 {name=p11 sig_type=std_logic lab=carry}
C {code_shown.sym} 640 -70 0 0 {name=s1 only_toplevel=false value="

.title Full_Adder
.lib /home/somya/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.include /home/somya/share/pdk/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice
.temp 27
.global VPWR VGND VNB VPB

VDD   VPWR   VGND   1.8
VSS   VGND   0      0
*VNB   VNB    VGND   0
*VPB   VPB    VPWR   1.8


V1 inA VGND PULSE(0 1.8 0u 10n 10n 5u 10u)
V2 inB VGND PULSE(0 1.8 0u 10n 10n 10u 20u)
V3 inC VGND PULSE(0 1.8 0u 10n 10n 20u 40u)

.tran 1n 50u


.control
set color0 = white
set color1 = black
save all
run
plot v(inC)+8  v(inB)+6 v(inA)+4 v(sum)+2  v(carry)
.endc

.end
"}
