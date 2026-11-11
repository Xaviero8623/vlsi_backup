* SPICE NETLIST
***************************************

.SUBCKT inverter in vss vdd out
** N=4 EP=4 IP=0 FDC=2
M0 out in vss vss NMOS_VTL L=5e-08 W=1e-07 AD=1.125e-14 AS=1.125e-14 PD=4.25e-07 PS=4.25e-07 $X=-23515 $Y=-2420 $D=1
M1 out in vdd vdd PMOS_VTL L=5e-08 W=2e-07 AD=2.25e-14 AS=2.25e-14 PD=6.25e-07 PS=6.25e-07 $X=-23515 $Y=-1550 $D=0
.ENDS
***************************************
