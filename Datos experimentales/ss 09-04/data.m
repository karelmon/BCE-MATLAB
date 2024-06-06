x_per_30 = xlsread('ss_per_K_30.xlsm','B1:B1069');
r_per_30 = xlsread('ss_per_K_30.xlsm','E1:E1069');
eventos_per_30 = xlsread('ss_per_K_30.xlsm','G1:G1069');
nro_per_30 = xlsread('ss_per_K_30.xlsm','I1:I1069');
xs_per_30 = xlsread('ss_per_K_30.xlsm','K1:K1069');


x_um_01_30 = xlsread('ss_um_0.1_K_30.xlsm','B1:B1060');
r_um_01_5 = xlsread('ss_um_0.1_K_30.xlsm','E1:E1060');
eventos_01_30 = xlsread('ss_um_0.1_K_30.xlsm','G1:G1060');
nro_01_30 = xlsread('ss_um_0.1_K_30.xlsm','I1:I1060');
xs_um_01_30 = xlsread('ss_um_0.1_K_30.xlsm','K1:K1069');


x_um_02_30 = xlsread('ss_um_0.2_K_30.xlsm','B1:B1060');
r_um_02_5 = xlsread('ss_um_0.2_K_30.xlsm','E1:E1060');
eventos_02_30 = xlsread('ss_um_0.2_K_30.xlsm','G1:G1060');
nro_02_30 = xlsread('ss_um_0.2_K_30.xlsm','I1:I1060');
xs_um_02_30 = xlsread('ss_um_0.2_K_30.xlsm','K1:K1060');

x_um_04_30 = xlsread('ss_um_0.4_K_30.xlsm','B1:B1060');
r_um_04_5 = xlsread('ss_um_0.4_K_30.xlsm','E1:E1060');
eventos_04_30 = xlsread('ss_um_0.4_K_30.xlsm','G1:G1060');
nro_04_30 = xlsread('ss_um_0.4_K_30.xlsm','I1:I1060');
xs_um_04_30 = xlsread('ss_um_0.4_K_30.xlsm','K1:K1060');

save('data_ss_09_04')
%%
figure(1)
plot(x_per_30)
hold on
plot(x_um_01_30)
plot(x_um_02_30)
plot(x_um_04_30)
grid on
hold off
title('State-feedback approach')
legend('periodic','e = 0.1','e = 0.2','e = 0.4')

figure(2)
plot(nro_per_30)
hold on
plot(nro_01_30)
plot(nro_02_30)
plot(nro_04_30)
grid on
hold off
title('State-feedback approach')
legend('periodic','e = 0.1','e = 0.2','e = 0.3')
%%
subplot(2,2,1)
plot((x_per_30-18)-xs_per_30)
legend('periodic')
title('Error betwen x(t) and xs(t)')
grid on

subplot(2,2,2)
plot(x_um_01_30-18-xs_um_01_30)
legend('e = 0.1')
title('Error betwen x(t) and xs(t)')
grid on

subplot(2,2,3)
plot(x_um_02_30-18-xs_um_02_30)
legend('e = 0.2')
title('Error betwen x(t) and xs(t)')
grid on

subplot(2,2,4)
plot(x_um_04_30-18-xs_um_04_30)
legend('e = 0.4')
title('Error betwen x(t) and xs(t)')
grid on