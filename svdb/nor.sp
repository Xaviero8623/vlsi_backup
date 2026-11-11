* SPICE NETLIST
***************************************

.SUBCKT nor ina inb vdd out vss
** N=6 EP=5 IP=0 FDC=4
M0 vss ina out vss NMOS_VTL L=9e-08 W=1.8e-07 AD=2.52e-14 AS=2.16e-14 PD=6.4e-07 PS=6e-07 $X=-5915 $Y=-11725 $D=1
M1 out inb vss vss NMOS_VTL L=9e-08 W=1.8e-07 AD=2.25e-14 AS=2.52e-14 PD=6.1e-07 PS=6.4e-07 $X=-5915 $Y=-11265 $D=1
M2 6 ina out vdd PMOS_VTL L=9e-08 W=7.2e-07 AD=1.008e-13 AS=9e-14 PD=1.72e-06 PS=1.69e-06 $X=-8025 $Y=-11725 $D=0
M3 vdd inb 6 vdd PMOS_VTL L=9e-08 W=7.2e-07 AD=9e-14 AS=1.008e-13 PD=1.69e-06 PS=1.72e-06 $X=-8025 $Y=-11265 $D=0
.ENDS
***************************************
