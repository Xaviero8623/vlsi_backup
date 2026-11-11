* SPICE NETLIST
***************************************

.SUBCKT nand ina vdd out inb vss
** N=6 EP=5 IP=0 FDC=4
M0 6 ina vss vss NMOS_VTL L=9e-08 W=3.6e-07 AD=5.04e-14 AS=4.05e-14 PD=1e-06 PS=9.45e-07 $X=-23220 $Y=8380 $D=1
M1 out inb 6 vss NMOS_VTL L=9e-08 W=3.6e-07 AD=4.05e-14 AS=5.04e-14 PD=9.45e-07 PS=1e-06 $X=-23220 $Y=8840 $D=1
M2 vdd ina out vdd PMOS_VTL L=9e-08 W=3.6e-07 AD=5.04e-14 AS=4.05e-14 PD=1e-06 PS=9.45e-07 $X=-24610 $Y=8380 $D=0
M3 out inb vdd vdd PMOS_VTL L=9e-08 W=3.6e-07 AD=4.05e-14 AS=5.04e-14 PD=9.45e-07 PS=1e-06 $X=-24610 $Y=8840 $D=0
.ENDS
***************************************
