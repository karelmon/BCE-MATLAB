%% Datos 1
out_1 = xlsread('um_0.02_50.xlsm','B1:B672');
in_1 = xlsread('um_0.02_50.xlsm','E1:E672');
activacion_1 = xlsread('um_0.02_50.xlsm','G1:G672');
eventos_1 = xlsread('um_0.02_50.xlsm','I1:I672');

t=1:length(out_1);
subplot(3,1,1)
plot(t,out_1,'blue','LineWidth',2)
title('Periodico');
xlabel('t (seg)');
ylabel('H (cm)');
grid on
hold on
plot(t,in_1,'--r','LineWidth',2);
legend('y(t)','r(t)')
subplot(3,1,2)
plot(t,activacion_1,'LineWidth',2)
title('Activacion de eventos')
xlabel('t (seg)')
grid on
subplot(3,1,3)
plot(t,eventos_1,'LineWidth',2)
title('Nro. de eventos a lo largo del tiempo');
xlabel('t (seg)')
grid on
%% Datos 2
out_2 = xlsread('um_0.03_50.xlsm','B1:B697');
in_2 = xlsread('um_0.03_50.xlsm','E1:E697');
activacion_2 = xlsread('um_0.03_50.xlsm','G1:G697');
eventos_2 = xlsread('um_0.03_50.xlsm','I1:I697');

t=1:length(out_2);
subplot(3,1,1)
plot(t,out_2,'blue','LineWidth',2)
title('Periodico');
xlabel('t (seg)');
ylabel('H (cm)');
grid on
hold on
plot(t,in_2,'--r','LineWidth',2);
legend('y(t)','r(t)')
subplot(3,1,2)
plot(t,activacion_2,'LineWidth',2)
title('Activacion de eventos')
xlabel('t (seg)')
grid on
subplot(3,1,3)
plot(t,eventos_2,'LineWidth',2)
title('Nro. de eventos a lo largo del tiempo');
xlabel('t (seg)')
grid on
% %% Datos 3
% out_3 = xlsread('um_0.04_50.xlsm','B1:B710');
% in_3 = xlsread('um_0.04_50.xlsm','E1:E710');
% activacion_3 = xlsread('um_0.04_50.xlsm','G1:G710');
% eventos_3 = xlsread('um_0.04_50.xlsm','I1:I710');
% 
% t=1:length(out_3);
% subplot(3,1,1)
% plot(t,out_3,'blue','LineWidth',2)
% title('Periodico');
% xlabel('t (seg)');
% ylabel('H (cm)');
% grid on
% hold on
% plot(t,in_3,'--r','LineWidth',2);
% legend('y(t)','r(t)')
% subplot(3,1,2)
% plot(t,activacion_3,'LineWidth',2)
% title('Activacion de eventos')
% xlabel('t (seg)')
% grid on
% subplot(3,1,3)
% plot(t,eventos_3,'LineWidth',2)
% title('Nro. de eventos a lo largo del tiempo');
% xlabel('t (seg)')
% grid on