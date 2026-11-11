* SPICE NETLIST
***************************************

.SUBCKT M1_P_CDNS_793717329357
** N=1 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT M1_N_CDNS_793717329358
** N=1 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT inverter in vdd vss out
** N=4 EP=4 IP=6 FDC=2
M0 out in vss vss NMOS_VTL L=5e-08 W=1e-07 AD=1.125e-14 AS=1.125e-14 PD=4.25e-07 PS=4.25e-07 $X=-23515 $Y=-2325 $D=1
M1 out in vdd vdd PMOS_VTL L=5e-08 W=2e-07 AD=2.25e-14 AS=2.25e-14 PD=6.25e-07 PS=6.25e-07 $X=-23515 $Y=-1455 $D=0
.ENDS
***************************************
.SUBCKT and ina vdd inb vss out
** N=7 EP=5 IP=11 FDC=6
M0 7 ina 5 vss NMOS_VTL L=5e-08 W=2e-07 AD=2.8e-14 AS=2.25e-14 PD=6.8e-07 PS=6.25e-07 $X=42770 $Y=-15830 $D=1
M1 vss inb 7 vss NMOS_VTL L=5e-08 W=2e-07 AD=2.25e-14 AS=2.8e-14 PD=6.25e-07 PS=6.8e-07 $X=43150 $Y=-15830 $D=1
M2 vdd ina 5 vdd PMOS_VTL L=5e-08 W=2e-07 AD=2.8e-14 AS=2.25e-14 PD=6.8e-07 PS=6.25e-07 $X=42770 $Y=-14760 $D=0
M3 5 inb vdd vdd PMOS_VTL L=5e-08 W=2e-07 AD=2.25e-14 AS=2.8e-14 PD=6.25e-07 PS=6.8e-07 $X=43150 $Y=-14760 $D=0
X11 5 vdd vss out inverter $T=67875 -13305 0 0 $X=43615 $Y=-16190
.ENDS
***************************************
.SUBCKT M1_POLY_CDNS_7937173293510
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
.SUBCKT flipflop q vdd vss c_ext d
** N=12 EP=5 IP=52 FDC=24
X0 6 vdd vss 7 inverter $T=44005 -17620 1 0 $X=19745 $Y=-16945
X1 c_ext vdd vss 6 inverter $T=44005 -11980 0 0 $X=19745 $Y=-14865
X2 8 vdd vss 10 inverter $T=46780 -11980 0 0 $X=22520 $Y=-14865
X3 !q vdd vss q inverter $T=49515 -11980 0 0 $X=25255 $Y=-14865
X4 vss vdd 9 8 6 7 T_gate $T=103905 -188975 0 180 $X=20910 $Y=-16945
X5 vss vdd d 8 7 6 T_gate $T=-60740 159375 0 0 $X=21140 $Y=-14865
X6 vss vdd 12 !q 7 6 T_gate $T=-58175 -188975 1 0 $X=23705 $Y=-16945
X7 vss vdd 10 !q 6 7 T_gate $T=-57945 159375 0 0 $X=23935 $Y=-14865
X8 vss vdd 9 10 7 6 clocked_inv $T=68405 -44515 0 180 $X=22045 $Y=-16945
X9 vss vdd 12 q 7 6 clocked_inv $T=71185 -44515 0 180 $X=24825 $Y=-16945
.ENDS
***************************************
.SUBCKT 2_1_mux b out a s vss vdd
** N=7 EP=6 IP=16 FDC=6
M0 out s b vss NMOS_VTL L=5e-08 W=1e-07 AD=1.4e-14 AS=1.125e-14 PD=4.8e-07 PS=4.25e-07 $X=9265 $Y=7665 $D=1
M1 a 4 out vss NMOS_VTL L=5e-08 W=1e-07 AD=1.125e-14 AS=1.4e-14 PD=4.25e-07 PS=4.8e-07 $X=9645 $Y=7665 $D=1
M2 vss s 4 vss NMOS_VTL L=5e-08 W=1e-07 AD=1.125e-14 AS=1.125e-14 PD=4.25e-07 PS=4.25e-07 $X=10355 $Y=7665 $D=1
M3 out 4 b vdd PMOS_VTL L=5e-08 W=2e-07 AD=2.8e-14 AS=2.25e-14 PD=6.8e-07 PS=6.25e-07 $X=9265 $Y=8535 $D=0
M4 a s out vdd PMOS_VTL L=5e-08 W=2e-07 AD=2.25e-14 AS=2.8e-14 PD=6.25e-07 PS=6.8e-07 $X=9645 $Y=8535 $D=0
M5 vdd s 4 vdd PMOS_VTL L=5e-08 W=2e-07 AD=2.25e-14 AS=2.25e-14 PD=6.25e-07 PS=6.25e-07 $X=10355 $Y=8535 $D=0
.ENDS
***************************************
.SUBCKT xor a out b vdd vss
** N=6 EP=5 IP=14 FDC=6
M0 out a 2 vss NMOS_VTL L=5e-08 W=1e-07 AD=1.4e-14 AS=1.125e-14 PD=4.8e-07 PS=4.25e-07 $X=63420 $Y=-69545 $D=1
M1 a 2 out vss NMOS_VTL L=5e-08 W=1e-07 AD=1.125e-14 AS=1.4e-14 PD=4.25e-07 PS=4.8e-07 $X=63800 $Y=-69545 $D=1
M2 vss b 2 vss NMOS_VTL L=5e-08 W=1e-07 AD=1.125e-14 AS=1.125e-14 PD=4.25e-07 PS=4.25e-07 $X=64705 $Y=-69545 $D=1
M3 out a b vdd PMOS_VTL L=5e-08 W=2e-07 AD=2.8e-14 AS=2.25e-14 PD=6.8e-07 PS=6.25e-07 $X=63420 $Y=-68675 $D=0
M4 a b out vdd PMOS_VTL L=5e-08 W=2e-07 AD=2.25e-14 AS=2.8e-14 PD=6.25e-07 PS=6.8e-07 $X=63800 $Y=-68675 $D=0
M5 vdd b 2 vdd PMOS_VTL L=5e-08 W=2e-07 AD=2.25e-14 AS=2.25e-14 PD=6.25e-07 PS=6.25e-07 $X=64705 $Y=-68675 $D=0
.ENDS
***************************************
.SUBCKT 4_bit_counter q1 q2 en q0 load c_ext q3 vss vdd out l0 l1 l2 l3
** N=31 EP=14 IP=114 FDC=204
X0 q1 vdd en vss 11 and $T=10300 -11245 0 0 $X=52275 $Y=-27435
X1 q2 vdd q1 vss 24 and $T=10300 -39335 1 0 $X=52275 $Y=-25355
X2 q0 vdd en vss 25 and $T=10360 -35175 1 0 $X=52335 $Y=-21195
X3 q0 vdd en vss 8 and $T=10755 -31015 1 0 $X=52730 $Y=-17035
X4 24 vdd 11 vss 10 and $T=13000 -39335 1 0 $X=54975 $Y=-25355
X5 25 vdd q1 vss 9 and $T=13060 -35175 1 0 $X=55035 $Y=-21195
X6 q2 vdd q3 vss 20 and $T=16895 -43490 1 0 $X=58870 $Y=-29510
X7 q0 vdd q1 vss 26 and $T=16895 -11245 0 0 $X=58870 $Y=-27435
X8 26 vdd 20 vss 21 and $T=19715 -11245 0 0 $X=61690 $Y=-27435
X9 en vdd 21 vss out and $T=19720 -43490 1 0 $X=61695 $Y=-29510
X10 q0 vdd vss c_ext 12 flipflop $T=38010 4070 0 0 $X=57755 $Y=-12875
X11 q1 vdd vss c_ext 13 flipflop $T=38025 -90 0 0 $X=57770 $Y=-17035
X12 q2 vdd vss c_ext 14 flipflop $T=38045 -4250 0 0 $X=57790 $Y=-21195
X13 q3 vdd vss c_ext 15 flipflop $T=38060 -8410 0 0 $X=57805 $Y=-25355
X14 l0 12 4 load vss vdd 2_1_mux $T=46695 -17900 0 0 $X=55420 $Y=-10795
X15 l1 13 5 load vss vdd 2_1_mux $T=46710 -22060 0 0 $X=55435 $Y=-14955
X16 l2 14 6 load vss vdd 2_1_mux $T=46730 -26220 0 0 $X=55455 $Y=-19115
X17 l3 15 7 load vss vdd 2_1_mux $T=46745 -30380 0 0 $X=55470 $Y=-23275
X18 q0 4 en vdd vss xor $T=-9915 59310 0 0 $X=52760 $Y=-10795
X19 q1 5 8 vdd vss xor $T=-9900 55150 0 0 $X=52775 $Y=-14955
X20 q2 6 9 vdd vss xor $T=-9880 50990 0 0 $X=52795 $Y=-19115
X21 q3 7 10 vdd vss xor $T=-9865 46830 0 0 $X=52810 $Y=-23275
.ENDS
***************************************
