* SPICE NETLIST
***************************************

.SUBCKT M1_POLY_CDNS_793646627162
** N=1 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT xor a out b vdd vss
** N=6 EP=5 IP=2 FDC=6
M0 out a 2 vss NMOS_VTL L=5e-08 W=1e-07 AD=1.4e-14 AS=1.125e-14 PD=4.8e-07 PS=4.25e-07 $X=63420 $Y=-69545 $D=1
M1 a 2 out vss NMOS_VTL L=5e-08 W=1e-07 AD=1.125e-14 AS=1.4e-14 PD=4.25e-07 PS=4.8e-07 $X=63800 $Y=-69545 $D=1
M2 vss b 2 vss NMOS_VTL L=5e-08 W=1e-07 AD=1.125e-14 AS=1.125e-14 PD=4.25e-07 PS=4.25e-07 $X=64705 $Y=-69545 $D=1
M3 out a b vdd PMOS_VTL L=5e-08 W=2e-07 AD=2.8e-14 AS=2.25e-14 PD=6.8e-07 PS=6.25e-07 $X=63420 $Y=-68675 $D=0
M4 a b out vdd PMOS_VTL L=5e-08 W=2e-07 AD=2.25e-14 AS=2.8e-14 PD=6.25e-07 PS=6.8e-07 $X=63800 $Y=-68675 $D=0
M5 vdd b 2 vdd PMOS_VTL L=5e-08 W=2e-07 AD=2.25e-14 AS=2.25e-14 PD=6.25e-07 PS=6.25e-07 $X=64705 $Y=-68675 $D=0
.ENDS
***************************************
