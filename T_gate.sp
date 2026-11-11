* SPICE NETLIST
***************************************

.SUBCKT T_gate nVC vss vdd in Vc out
** N=6 EP=6 IP=0 FDC=2
M0 out Vc in vss NMOS_VTL L=5e-08 W=1e-07 AD=1.125e-14 AS=1.125e-14 PD=4.25e-07 PS=4.25e-07 $X=82555 $Y=-173680 $D=1
M1 out nVC in vdd PMOS_VTL L=5e-08 W=2e-07 AD=2.25e-14 AS=2.25e-14 PD=6.25e-07 PS=6.25e-07 $X=82555 $Y=-172810 $D=0
.ENDS
***************************************
