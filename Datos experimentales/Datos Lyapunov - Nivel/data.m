y_sig_01_5 = xlsread('Lyap_0.1_K_5.xlsm','B1:B1018');
r_sig_01_5 = xlsread('Lyap_0.1_K_5.xlsm','E1:E1018');
eventos_01_5 = xlsread('Lyap_0.1_K_5.xlsm','G1:G1018');
nro_01_5 = xlsread('Lyap_0.1_K_5.xlsm','I1:I1018');

y_sig_01_15 = xlsread('Lyap_0.1_K_15.xlsm','B1:B1023');
r_sig_01_15 = xlsread('Lyap_0.1_K_15.xlsm','E1:E1023');
eventos_01_15 = xlsread('Lyap_0.1_K_15.xlsm','G1:G1023');
nro_01_15 = xlsread('Lyap_0.1_K_15.xlsm','I1:I1023');


y_sig_01_30 = xlsread('Lyap_0.1_K_30.xlsm','B1:B1029');
r_sig_01_30 = xlsread('Lyap_0.1_K_30.xlsm','E1:E1029');
eventos_01_30 = xlsread('Lyap_0.1_K_30.xlsm','G1:G1029');
nro_01_30 = xlsread('Lyap_0.1_K_30.xlsm','I1:I1029');


y_sig_02_30 = xlsread('Lyap_0.2_K_30.xlsm','B1:B1029');
r_sig_02_30 = xlsread('Lyap_0.2_K_30.xlsm','E1:E1029');
eventos_02_30 = xlsread('Lyap_0.2_K_30.xlsm','G1:G1029');
nro_02_30 = xlsread('Lyap_0.2_K_30.xlsm','I1:I1029');

y_sig_04_30 = xlsread('Lyap_0.4_K_30.xlsm','B1:B1029');
r_sig_04_30 = xlsread('Lyap_0.4_K_30.xlsm','E1:E1029');
eventos_04_30 = xlsread('Lyap_0.4_K_30.xlsm','G1:G1029');
nro_04_30 = xlsread('Lyap_0.4_K_30.xlsm','I1:I1029');

y_sig_08_30 = xlsread('Lyap_0.8_K_30.xlsm','B1:B1074');
r_sig_08_30 = xlsread('Lyap_0.8_K_30.xlsm','E1:E1074');
eventos_08_30 = xlsread('Lyap_0.8_K_30.xlsm','G1:G1074');
nro_08_30 = xlsread('Lyap_0.8_K_30.xlsm','I1:I1074');

y_sig_1_30 = xlsread('Lyap_1_K_30.xlsm','B1:B1436');
r_sig_1_30 = xlsread('Lyap_1_K_30.xlsm','E1:E1436');
eventos_1_30 = xlsread('Lyap_1_K_30.xlsm','G1:G1436');
nro_1_30 = xlsread('Lyap_1_K_30.xlsm','I1:I1436');

y_per_30 = xlsread('Lyap_0.2_K_30.xlsm','B1:B1029');
r_per_30 = xlsread('Lyap_0.2_K_30.xlsm','E1:E1029');
eventos_per_30 = xlsread('Lyap_0.2_K_30.xlsm','G1:G1029');
nro_per_30 = xlsread('Lyap_0.2_K_30.xlsm','I1:I1029');
%%
save('data')
%%
clear
load('data')
%%
subplot(2,1,1)
plot(y_sig_01_5)
hold on
plot(y_sig_01_15)
plot(y_sig_01_30)
plot(y_sig_02_30)
plot(y_sig_04_30)
plot(y_sig_08_30)
plot(y_sig_1_30)
plot(y_per_30,'r')
grid on
title('Lyapunov Based')
legend('sigma=0.1 K=5','sigma=0.1 K=15','sigma=0.1 K=30','sigma=0.2 K=30','sigma=0.4 K=30','sigma=0.8 K=30','sigma=1 K=30','periodico K=30')
hold off

subplot(2,1,2)
plot(nro_01_5)
hold on
plot(nro_01_15)
plot(nro_01_30)
plot(nro_02_30)
plot(nro_04_30)
plot(nro_08_30)
plot(nro_1_30)
%plot(nro_aux,'r','LineWidth',2)
grid on
title('Lyapunov Based')
legend('sigma=0.1 K=5','sigma=0.1 K=15','sigma=0.1 K=30','sigma=0.2 K=30','sigma=0.4 K=30','sigma=0.8 K=30','sigma=1 K=30','periodico K=30')
hold off