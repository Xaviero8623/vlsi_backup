* SPICE NETLIST
***************************************

.SUBCKT M1_P_CDNS_791178049903
** N=1 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT M1_N_CDNS_791178049904
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
.SUBCKT 2_bit_adder vdd vss cout a1 a0 s0 s1 b1 b0
** N=14 EP=9 IP=28 FDC=56
X0 6 vdd 2 cout vss nand $T=61960 -7480 0 180 $X=81405 $Y=-17270
X1 1 vdd 1 4 vss nand $T=102560 -22770 0 0 $X=81405 $Y=-15190
X2 a1 b1 2 vss vdd 3 half_adder $T=28180 -27725 1 0 $X=74460 $Y=-17270
X3 a0 b0 1 vss vdd s0 half_adder $T=28180 -2525 0 0 $X=74460 $Y=-15190
X4 3 4 6 vss vdd s1 half_adder $T=36800 -27725 1 0 $X=83080 $Y=-17270
.ENDS
***************************************
