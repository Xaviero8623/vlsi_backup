* SPICE NETLIST
***************************************

.SUBCKT M1_P_CDNS_791184652543
** N=1 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT M1_N_CDNS_791184652544
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
.SUBCKT half_adder ina inb carry 6 7 sum
** N=8 EP=6 IP=20 FDC=16
X0 ina 7 inb carry 6 nand $T=67540 -20245 0 0 $X=46385 $Y=-12665
X1 ina 7 carry 4 6 nand $T=69250 -20245 0 0 $X=48095 $Y=-12665
X2 carry 7 inb 5 6 nand $T=70960 -20245 0 0 $X=49805 $Y=-12665
X3 4 7 5 sum 6 nand $T=72670 -20245 0 0 $X=51515 $Y=-12665
.ENDS
***************************************
.SUBCKT full_adder 4 5 cout ina sum inb cin
** N=10 EP=7 IP=17 FDC=36
X0 3 5 1 cout 4 nand $T=45430 -23045 1 180 $X=64875 $Y=-15465
X1 ina inb 1 4 5 2 half_adder $T=11650 -2800 0 0 $X=57930 $Y=-15465
X2 2 cin 3 4 5 sum half_adder $T=20270 -2800 0 0 $X=66550 $Y=-15465
.ENDS
***************************************
.SUBCKT 4_bit_adder vdd vss a0 s0 a3 cout s3 a2 s2 a1 s1 b0 b3 b2 b1
** N=19 EP=15 IP=32 FDC=128
X0 1 vdd 1 4 vss nand $T=80630 -20210 0 0 $X=59475 $Y=-12630
X1 a0 b0 1 vss vdd s0 half_adder $T=6250 35 0 0 $X=52530 $Y=-12630
X2 vss vdd cout a3 s3 b3 3 full_adder $T=-5400 -32125 1 0 $X=52530 $Y=-18870
X3 vss vdd 3 a2 s2 b2 2 full_adder $T=-5400 -1325 0 0 $X=52530 $Y=-16790
X4 vss vdd 2 a1 s1 b1 4 full_adder $T=-5400 -27965 1 0 $X=52530 $Y=-14710
.ENDS
***************************************
