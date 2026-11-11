* SPICE NETLIST
***************************************

.SUBCKT clocked_inv in vss vdd c out !c
** N=8 EP=6 IP=0 FDC=4
M0 8 in vss vss NMOS_VTL L=5e-08 W=1e-07 AD=1.4e-14 AS=1.125e-14 PD=4.8e-07 PS=4.25e-07 $X=45410 $Y=-29220 $D=1
M1 out c 8 vss NMOS_VTL L=5e-08 W=1e-07 AD=1.125e-14 AS=1.4e-14 PD=4.25e-07 PS=4.8e-07 $X=45790 $Y=-29220 $D=1
M2 7 in vdd vdd PMOS_VTL L=5e-08 W=2e-07 AD=2.8e-14 AS=2.25e-14 PD=6.8e-07 PS=6.25e-07 $X=45410 $Y=-28350 $D=0
M3 out !c 7 vdd PMOS_VTL L=5e-08 W=2e-07 AD=2.25e-14 AS=2.8e-14 PD=6.25e-07 PS=6.8e-07 $X=45790 $Y=-28350 $D=0
.ENDS
***************************************
