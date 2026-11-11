* SPICE NETLIST
***************************************

.SUBCKT M1_N_CDNS_790010172893
** N=1 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT inverter in out vss vdd
** N=4 EP=4 IP=2 FDC=2
M0 out in vss vss NMOS_VTL L=9e-08 W=1.8e-07 AD=2.025e-14 AS=2.205e-14 PD=5.85e-07 PS=6.05e-07 $X=-21460 $Y=-3290 $D=1
M1 vdd in out vdd PMOS_VTL L=9e-08 W=3.6e-07 AD=4.14e-14 AS=4.05e-14 PD=9.5e-07 PS=9.45e-07 $X=-21110 $Y=-2035 $D=0
.ENDS
***************************************
