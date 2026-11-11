* SPICE NETLIST
***************************************

.SUBCKT M1_P_CDNS_791065453931
** N=1 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT M1_N_CDNS_791065453932
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
.SUBCKT half_adder ina inb vss vdd carry sum
** N=9 EP=6 IP=25 FDC=20
X0 1 vdd 1 carry vss nand $T=67540 -4955 1 0 $X=46385 $Y=-14745
X1 ina vdd inb 1 vss nand $T=67540 -20245 0 0 $X=46385 $Y=-12665
X2 1 vdd inb 4 vss nand $T=69250 -4955 1 0 $X=48095 $Y=-14745
X3 ina vdd 1 6 vss nand $T=69250 -20245 0 0 $X=48095 $Y=-12665
X4 6 vdd 4 sum vss nand $T=70960 -20245 0 0 $X=49805 $Y=-12665
.ENDS
***************************************
