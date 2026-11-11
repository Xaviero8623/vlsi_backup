* SPICE NETLIST
***************************************

.SUBCKT nor ina out inb vss vdd
** N=6 EP=5 IP=0 FDC=4
M0 out ina vss vss NMOS_VTL L=5e-08 W=1e-07 AD=1.4e-14 AS=1.125e-14 PD=4.8e-07 PS=4.25e-07 $X=-7565 $Y=-14815 $D=1
M1 vss inb out vss NMOS_VTL L=5e-08 W=1e-07 AD=1.125e-14 AS=1.4e-14 PD=4.25e-07 PS=4.8e-07 $X=-7185 $Y=-14815 $D=1
M2 6 ina out vdd PMOS_VTL L=5e-08 W=4e-07 AD=5.6e-14 AS=4.5e-14 PD=1.08e-06 PS=1.025e-06 $X=-7565 $Y=-13945 $D=0
M3 vdd inb 6 vdd PMOS_VTL L=5e-08 W=4e-07 AD=4.5e-14 AS=5.6e-14 PD=1.025e-06 PS=1.08e-06 $X=-7185 $Y=-13945 $D=0
.ENDS
***************************************
