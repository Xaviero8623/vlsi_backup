* SPICE NETLIST
***************************************

.SUBCKT M1_P_CDNS_793678201055
** N=1 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT M1_N_CDNS_793678201056
** N=1 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT inverter in vdd vss out
** N=4 EP=4 IP=6 FDC=2
M0 out in vss vss NMOS_VTL L=5e-08 W=1e-07 AD=1.125e-14 AS=1.125e-14 PD=4.25e-07 PS=4.25e-07 $X=-23515 $Y=-2325 $D=1
M1 out in vdd vdd PMOS_VTL L=5e-08 W=2e-07 AD=2.25e-14 AS=2.25e-14 PD=6.25e-07 PS=6.25e-07 $X=-23515 $Y=-1455 $D=0
.ENDS
***************************************
.SUBCKT M1_POLY_CDNS_793678201058
** N=1 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT T_gate vss vdd in out nVC Vc
** N=6 EP=6 IP=8 FDC=2
M0 out Vc in vss NMOS_VTL L=5e-08 W=1e-07 AD=1.125e-14 AS=1.125e-14 PD=4.25e-07 PS=4.25e-07 $X=82555 $Y=-173680 $D=1
M1 out nVC in vdd PMOS_VTL L=5e-08 W=2e-07 AD=2.25e-14 AS=2.25e-14 PD=6.25e-07 PS=6.25e-07 $X=82555 $Y=-172810 $D=0
.ENDS
***************************************
.SUBCKT clocked_inv vss vdd out in c !c
** N=8 EP=6 IP=9 FDC=4
M0 8 in vss vss NMOS_VTL L=5e-08 W=1e-07 AD=1.4e-14 AS=1.125e-14 PD=4.8e-07 PS=4.25e-07 $X=45410 $Y=-29220 $D=1
M1 out c 8 vss NMOS_VTL L=5e-08 W=1e-07 AD=1.125e-14 AS=1.4e-14 PD=4.25e-07 PS=4.8e-07 $X=45790 $Y=-29220 $D=1
M2 7 in vdd vdd PMOS_VTL L=5e-08 W=2e-07 AD=2.8e-14 AS=2.25e-14 PD=6.8e-07 PS=6.25e-07 $X=45410 $Y=-28350 $D=0
M3 out !c 7 vdd PMOS_VTL L=5e-08 W=2e-07 AD=2.25e-14 AS=2.8e-14 PD=6.25e-07 PS=6.8e-07 $X=45790 $Y=-28350 $D=0
.ENDS
***************************************
.SUBCKT flipflop !q q vdd vss c_ext d
** N=12 EP=6 IP=52 FDC=24
X0 1 vdd vss 2 inverter $T=44005 -17620 1 0 $X=19745 $Y=-16945
X1 c_ext vdd vss 1 inverter $T=44005 -11980 0 0 $X=19745 $Y=-14865
X2 3 vdd vss 5 inverter $T=46780 -11980 0 0 $X=22520 $Y=-14865
X3 !q vdd vss q inverter $T=49515 -11980 0 0 $X=25255 $Y=-14865
X4 vss vdd 4 3 1 2 T_gate $T=103905 -188975 0 180 $X=20910 $Y=-16945
X5 vss vdd d 3 2 1 T_gate $T=-60740 159375 0 0 $X=21140 $Y=-14865
X6 vss vdd 8 !q 2 1 T_gate $T=-58175 -188975 1 0 $X=23705 $Y=-16945
X7 vss vdd 5 !q 1 2 T_gate $T=-57945 159375 0 0 $X=23935 $Y=-14865
X8 vss vdd 4 5 2 1 clocked_inv $T=68405 -44515 0 180 $X=22045 $Y=-16945
X9 vss vdd 8 q 2 1 clocked_inv $T=71185 -44515 0 180 $X=24825 $Y=-16945
.ENDS
***************************************
