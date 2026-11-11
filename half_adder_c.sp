* SPICE NETLIST
***************************************

.SUBCKT M1_P_CDNS_791774352291
** N=1 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT M1_N_CDNS_791774352292
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
.SUBCKT half_adder_c ina inb vdd vss carry sum
** N=10 EP=6 IP=26 FDC=18
M0 carry 2 vss vss NMOS_VTL L=5e-08 W=1e-07 AD=1.125e-14 AS=1.125e-14 PD=4.25e-07 PS=4.25e-07 $X=60590 $Y=-26705 $D=1
M1 carry 2 vdd vdd PMOS_VTL L=5e-08 W=2e-07 AD=2.25e-14 AS=2.25e-14 PD=6.25e-07 PS=6.25e-07 $X=60590 $Y=-25835 $D=0
X8 2 9 inb 5 vss nand $T=77650 -19555 1 0 $X=56495 $Y=-29345
X9 ina vdd inb 2 vss nand $T=77650 -34845 0 0 $X=56495 $Y=-27265
X10 5 9 4 sum vss nand $T=79360 -19555 1 0 $X=58205 $Y=-29345
X11 ina vdd 2 4 vss nand $T=79360 -34845 0 0 $X=58205 $Y=-27265
.ENDS
***************************************
