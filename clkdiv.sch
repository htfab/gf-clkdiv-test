v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 110 -740 910 -340 {flags=graph
y1=-0.13
y2=5.1
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1e-10
x2=0.0001
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="CLK
Q"
color="4 7"
dataset=-1
unitx=1
logx=0
logy=0
}
N 460 -230 480 -230 {lab=Q}
N 480 -230 500 -230 {lab=Q}
N 480 -230 480 -180 {lab=Q}
N 480 -180 620 -180 {lab=Q}
N 580 -230 600 -230 {lab=QN}
N 320 -280 600 -280 {lab=QN}
N 320 -280 320 -230 {lab=QN}
N 320 -230 340 -230 {lab=QN}
N 600 -230 620 -230 {lab=QN}
N 600 -280 600 -230 {lab=QN}
C {vsource.sym} 60 -70 0 0 {name=V1 value=5 savecurrent=false}
C {lab_pin.sym} 60 -40 0 1 {name=p1 sig_type=std_logic lab=GND}
C {lab_pin.sym} 60 -100 0 1 {name=p2 sig_type=std_logic lab=VDD}
C {vsource.sym} 140 -70 0 0 {name=V2 value=0 savecurrent=false}
C {lab_pin.sym} 140 -40 0 1 {name=p3 sig_type=std_logic lab=GND}
C {lab_pin.sym} 140 -100 0 1 {name=p4 sig_type=std_logic lab=VSS}
C {code_shown.sym} 240 -80 0 0 {name=SETUP only_toplevel=false value=".include $PDK_ROOT/gf180mcuD/libs.tech/ngspice/design.ngspice
.lib $PDK_ROOT/gf180mcuD/libs.tech/ngspice/sm141064.ngspice typical
.include $PDK_ROOT/gf180mcuD/libs.ref/gf180mcu_fd_sc_mcu7t5v0/spice/gf180mcu_fd_sc_mcu7t5v0.spice"}
C {code_shown.sym} 760 -250 0 0 {name=STIMULI only_toplevel=false value=".control
  save all
  tran 10n 100u uic
  write clkdiv.raw
  remzerovec
.endc"}
C {launcher.sym} 970 -290 0 0 {name=h5
descr="load waves"
tclcommand="xschem raw_read $netlist_dir/clkdiv.raw tran"
}
C {vsource.sym} 60 -160 0 0 {name=V3 value=5 savecurrent=false}
C {lab_pin.sym} 60 -130 0 1 {name=p5 sig_type=std_logic lab=GND}
C {lab_pin.sym} 60 -190 0 1 {name=p6 sig_type=std_logic lab=VNW}
C {vsource.sym} 140 -160 0 0 {name=V4 value=0 savecurrent=false}
C {lab_pin.sym} 140 -130 0 1 {name=p7 sig_type=std_logic lab=GND}
C {lab_pin.sym} 140 -190 0 1 {name=p9 sig_type=std_logic lab=VPW}
C {vsource.sym} 60 -250 0 0 {name=V5 value="PULSE(0 5.0 1u 0 0 1u 2u 0)" savecurrent=false}
C {lab_pin.sym} 60 -220 0 1 {name=p10 sig_type=std_logic lab=GND}
C {lab_pin.sym} 60 -280 0 1 {name=p12 sig_type=std_logic lab=CLK}
C {lab_pin.sym} 620 -230 0 1 {name=p8 sig_type=std_logic lab=QN}
C {inv_1.sym} 540 -230 0 0 {name=x1 VDD=VDD VNW=VNW VPW=VPW VSS=VSS prefix=gf180mcu_fd_sc_mcu7t5v0__ }
C {dffq_1.sym} 400 -210 0 0 {name=x2 VDD=VDD VNW=VNW VPW=VPW VSS=VSS prefix=gf180mcu_fd_sc_mcu7t5v0__ }
C {lab_pin.sym} 340 -190 0 0 {name=p11 sig_type=std_logic lab=CLK}
C {lab_pin.sym} 620 -180 0 1 {name=p13 sig_type=std_logic lab=Q}
