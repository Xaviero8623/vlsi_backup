* SPICE NETLIST
***************************************

.SUBCKT 2_1_mux b out a s vss vdd
** N=7 EP=6 IP=0 FDC=6
M0 out s b vss NMOS_VTL L=5e-08 W=1e-07 AD=1.4e-14 AS=1.125e-14 PD=4.8e-07 PS=4.25e-07 $X=9265 $Y=7665 $D=1
M1 a 4 out vss NMOS_VTL L=5e-08 W=1e-07 AD=1.125e-14 AS=1.4e-14 PD=4.25e-07 PS=4.8e-07 $X=9645 $Y=7665 $D=1
M2 vss s 4 vss NMOS_VTL L=5e-08 W=1e-07 AD=1.125e-14 AS=1.125e-14 PD=4.25e-07 PS=4.25e-07 $X=10355 $Y=7665 $D=1
M3 out 4 b vdd PMOS_VTL L=5e-08 W=2e-07 AD=2.8e-14 AS=2.25e-14 PD=6.8e-07 PS=6.25e-07 $X=9265 $Y=8535 $D=0
M4 a s out vdd PMOS_VTL L=5e-08 W=2e-07 AD=2.25e-14 AS=2.8e-14 PD=6.25e-07 PS=6.8e-07 $X=9645 $Y=8535 $D=0
M5 vdd s 4 vdd PMOS_VTL L=5e-08 W=2e-07 AD=2.25e-14 AS=2.25e-14 PD=6.25e-07 PS=6.25e-07 $X=10355 $Y=8535 $D=0
.ENDS
***************************************
