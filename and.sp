* SPICE NETLIST
***************************************

.SUBCKT M1_P_CDNS_791774100540
** N=1 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT M1_N_CDNS_791774100541
** N=1 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT and ina inb vdd vss out
** N=7 EP=5 IP=13 FDC=6
M0 7 ina 3 vss NMOS_VTL L=5e-08 W=2e-07 AD=2.8e-14 AS=2.25e-14 PD=6.8e-07 PS=6.25e-07 $X=42770 $Y=-15830 $D=1
M1 vss inb 7 vss NMOS_VTL L=5e-08 W=2e-07 AD=2.25e-14 AS=2.8e-14 PD=6.25e-07 PS=6.8e-07 $X=43150 $Y=-15830 $D=1
M2 out 3 vss vss NMOS_VTL L=5e-08 W=1e-07 AD=1.125e-14 AS=1.125e-14 PD=4.25e-07 PS=4.25e-07 $X=44360 $Y=-15630 $D=1
M3 vdd ina 3 vdd PMOS_VTL L=5e-08 W=2e-07 AD=2.8e-14 AS=2.25e-14 PD=6.8e-07 PS=6.25e-07 $X=42770 $Y=-14760 $D=0
M4 3 inb vdd vdd PMOS_VTL L=5e-08 W=2e-07 AD=2.25e-14 AS=2.8e-14 PD=6.25e-07 PS=6.8e-07 $X=43150 $Y=-14760 $D=0
M5 out 3 vdd vdd PMOS_VTL L=5e-08 W=2e-07 AD=2.25e-14 AS=2.25e-14 PD=6.25e-07 PS=6.25e-07 $X=44360 $Y=-14760 $D=0
.ENDS
***************************************
