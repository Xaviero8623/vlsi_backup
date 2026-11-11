* SPICE NETLIST
***************************************

.SUBCKT M1_P_CDNS_791864033242
** N=1 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT M1_N_CDNS_791864033243
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
.SUBCKT half_adder ina carry inb 4 5 sum
** N=8 EP=6 IP=20 FDC=16
X0 carry 4 inb 8 5 nand $T=67540 -4955 1 0 $X=46385 $Y=-14745
X1 ina 4 inb carry 5 nand $T=67540 -20245 0 0 $X=46385 $Y=-12665
X2 8 4 7 sum 5 nand $T=69250 -4955 1 0 $X=48095 $Y=-14745
X3 ina 4 carry 7 5 nand $T=69250 -20245 0 0 $X=48095 $Y=-12665
.ENDS
***************************************
.SUBCKT full_adder vdd cout vss ina sum inb cin
** N=10 EP=7 IP=17 FDC=36
X0 2 vdd 4 cout vss nand $T=42010 -23045 1 180 $X=61455 $Y=-15465
X1 ina 4 inb vdd vss 1 half_adder $T=11650 -2800 0 0 $X=58035 $Y=-17545
X2 1 2 cin vdd vss sum half_adder $T=112970 -28000 0 180 $X=63165 $Y=-17545
.ENDS
***************************************
