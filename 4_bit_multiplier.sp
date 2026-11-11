* SPICE NETLIST
***************************************

.SUBCKT M1_P_CDNS_791868227527
** N=1 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT M1_N_CDNS_791868227528
** N=1 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT nand ina vdd inb out vss
** N=6 EP=5 IP=7 FDC=4
M0 6 ina out vss NMOS_VTL L=5e-08 W=2e-07 AD=2.8e-14 AS=2.25e-14 PD=6.8e-07 PS=6.25e-07 $X=-20360 $Y=7940 $D=1
M1 vss inb 6 vss NMOS_VTL L=5e-08 W=2e-07 AD=2.25e-14 AS=2.8e-14 PD=6.25e-07 PS=6.8e-07 $X=-19980 $Y=7940 $D=1
M2 vdd ina out vdd PMOS_VTL L=5e-08 W=2e-07 AD=2.8e-14 AS=2.25e-14 PD=6.8e-07 PS=6.25e-07 $X=-20360 $Y=9010 $D=0
M3 out inb vdd vdd PMOS_VTL L=5e-08 W=2e-07 AD=2.25e-14 AS=2.8e-14 PD=6.25e-07 PS=6.8e-07 $X=-19980 $Y=9010 $D=0
.ENDS
***************************************
.SUBCKT inverter in vdd vss out
** N=4 EP=4 IP=6 FDC=2
M0 out in vss vss NMOS_VTL L=5e-08 W=1e-07 AD=1.125e-14 AS=1.125e-14 PD=4.25e-07 PS=4.25e-07 $X=-23515 $Y=-2325 $D=1
M1 out in vdd vdd PMOS_VTL L=5e-08 W=2e-07 AD=2.25e-14 AS=2.25e-14 PD=6.25e-07 PS=6.25e-07 $X=-23515 $Y=-1455 $D=0
.ENDS
***************************************
.SUBCKT and vss vdd ina inb out
** N=6 EP=5 IP=9 FDC=6
X0 ina vdd inb 1 vss nand $T=63130 -23770 0 0 $X=41975 $Y=-16190
X1 1 vdd vss out inverter $T=67875 -13305 0 0 $X=43615 $Y=-16190
.ENDS
***************************************
.SUBCKT ICV_1 1 2 3 4 5 6 7
*.CALIBRE ICV_CELL 9
** N=7 EP=7 IP=10 FDC=12
X0 1 2 3 4 5 and $T=0 -32250 1 0 $X=41975 $Y=-18270
X1 1 2 6 4 7 and $T=0 0 0 0 $X=41975 $Y=-16190
.ENDS
***************************************
.SUBCKT half_adder_c ina inb vss vdd sum carry
** N=9 EP=6 IP=24 FDC=18
X0 7 vdd inb 9 vss nand $T=77650 -19555 1 0 $X=56495 $Y=-29345
X1 ina vdd inb 7 vss nand $T=77650 -34845 0 0 $X=56495 $Y=-27265
X2 9 vdd 8 sum vss nand $T=79360 -19555 1 0 $X=58205 $Y=-29345
X3 ina vdd 7 8 vss nand $T=79360 -34845 0 0 $X=58205 $Y=-27265
X4 7 vdd vss carry inverter $T=84105 -24380 0 0 $X=59845 $Y=-27265
.ENDS
***************************************
.SUBCKT half_adder ina carry inb 4 5 sum
** N=8 EP=6 IP=20 FDC=16
X0 carry 5 inb 8 4 nand $T=67540 -4955 1 0 $X=46385 $Y=-14745
X1 ina 5 inb carry 4 nand $T=67540 -20245 0 0 $X=46385 $Y=-12665
X2 8 5 7 sum 4 nand $T=69250 -4955 1 0 $X=48095 $Y=-14745
X3 ina 5 carry 7 4 nand $T=69250 -20245 0 0 $X=48095 $Y=-12665
.ENDS
***************************************
.SUBCKT full_adder vdd vss cout ina sum inb cin
** N=10 EP=7 IP=17 FDC=36
X0 9 vdd 10 cout vss nand $T=42010 -23045 1 180 $X=61455 $Y=-15465
X1 ina 10 inb vss vdd 8 half_adder $T=11650 -2800 0 0 $X=58035 $Y=-17545
X2 8 9 cin vss vdd sum half_adder $T=112970 -28000 0 180 $X=63165 $Y=-17545
.ENDS
***************************************
.SUBCKT ICV_2 1 2 3 4 5 6 7 8 9 10 11 12
*.CALIBRE ICV_CELL 9
** N=12 EP=12 IP=14 FDC=72
X0 1 2 4 3 5 9 10 full_adder $T=0 0 0 0 $X=58035 $Y=-17545
X1 1 2 7 6 8 11 12 full_adder $T=0 4160 0 0 $X=58035 $Y=-13385
.ENDS
***************************************
.SUBCKT 4_bit_multiplier b3 b2 b1 b0 a3 a2 a1 a0 vdd vss s0 s4 s1 s7 s6 s3 s2 s5
** N=50 EP=18 IP=144 FDC=456
X0 vss vdd b1 a3 10 and $T=30020 -15985 0 0 $X=71995 $Y=-32175
X1 vss vdd b0 a3 36 and $T=30020 -11825 0 0 $X=71995 $Y=-28015
X2 vss vdd b1 a2 38 and $T=41390 -15985 0 0 $X=83365 $Y=-32175
X3 vss vdd b0 a2 39 and $T=41390 -11825 0 0 $X=83365 $Y=-28015
X4 vss vdd b1 a1 41 and $T=52760 -15985 0 0 $X=94735 $Y=-32175
X5 vss vdd b0 a1 42 and $T=52760 -11825 0 0 $X=94735 $Y=-28015
X6 vss vdd b1 a0 30 and $T=60110 -15985 0 0 $X=102085 $Y=-32175
X7 vss vdd b0 a0 s0 and $T=60110 -11825 0 0 $X=102085 $Y=-28015
X8 vss vdd b2 a3 35 b3 13 ICV_1 $T=30020 -52395 1 0 $X=71995 $Y=-38415
X9 vss vdd b2 a2 37 b3 19 ICV_1 $T=41390 -52395 1 0 $X=83365 $Y=-38415
X10 vss vdd b2 a1 40 b3 24 ICV_1 $T=52760 -52395 1 0 $X=94735 $Y=-38415
X11 vss vdd b2 a0 29 b3 32 ICV_1 $T=60110 -52395 1 0 $X=102085 $Y=-38415
X12 3 4 vss vdd s4 2 half_adder_c $T=6950 -4910 0 0 $X=63445 $Y=-34255
X13 40 32 vss vdd 25 26 half_adder_c $T=41060 -9070 0 0 $X=97555 $Y=-38415
X14 41 29 vss vdd 22 27 half_adder_c $T=41060 -4910 0 0 $X=97555 $Y=-34255
X15 42 30 vss vdd s1 28 half_adder_c $T=41060 -750 0 0 $X=97555 $Y=-30095
X16 vdd vss s7 13 s6 14 5 full_adder $T=5410 -20870 0 0 $X=63445 $Y=-38415
X17 vdd vss 1 10 4 11 16 full_adder $T=5410 -12550 0 0 $X=63445 $Y=-30095
X18 vdd vss 3 36 s3 17 21 full_adder $T=16780 -12550 0 0 $X=74815 $Y=-30095
X19 vdd vss 21 39 s2 22 28 full_adder $T=28150 -12550 0 0 $X=86185 $Y=-30095
X20 vdd vss 35 14 15 15 5 s5 19 20 1 2 ICV_2 $T=16780 -20870 0 0 $X=74815 $Y=-38415
X21 vdd vss 37 20 11 38 16 17 24 26 25 27 ICV_2 $T=28150 -20870 0 0 $X=86185 $Y=-38415
.ENDS
***************************************
