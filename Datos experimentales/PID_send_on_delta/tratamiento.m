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

%%
out_1 = xlsread('per_kp_5_ki_0.015.xlsm','B1:B672');
in_1 = xlsread('per_kp_5_ki_0.015.xlsm','E1:E672');
activacion_1 = xlsread('per_kp_5_ki_0.015.xlsm','G1:G672');
eventos_1 = xlsread('per_kp_5_ki_0.015.xlsm','I1:I672');

out_2 = xlsread('per_kp_5_ki_0.xlsm','B1:B672');
in_2 = xlsread('per_kp_5_ki_0.xlsm','E1:E672');
activacion_2 = xlsread('per_kp_5_ki_0.xlsm','G1:G672');
eventos_2 = xlsread('per_kp_5_ki_0.xlsm','I1:I672');

out_3 = xlsread('per_kp_10_ki_0.xlsm','B1:B672');
in_3 = xlsread('per_kp_10_ki_0.xlsm','E1:E672');
activacion_3 = xlsread('per_kp_10_ki_0.xlsm','G1:G672');
eventos_3 = xlsread('per_kp_10_ki_0.xlsm','I1:I672');

out_4 = xlsread('um_0.1_kp_5_ki_0.015.xlsm','B1:B672');
in_4 = xlsread('um_0.1_kp_5_ki_0.015.xlsm','E1:E672');
activacion_4 = xlsread('um_0.1_kp_5_ki_0.015.xlsm','G1:G672');
eventos_4 = xlsread('um_0.1_kp_5_ki_0.015.xlsm','I1:I672');

out_5 = xlsread('um_0.1_kp_5_ki_0.xlsm','B1:B672');
in_5 = xlsread('um_0.1_kp_5_ki_0.xlsm','E1:E672');
activacion_5 = xlsread('um_0.1_kp_5_ki_0.xlsm','G1:G672');
eventos_5 = xlsread('um_0.1_kp_5_ki_0.xlsm','I1:I672');

out_6 = xlsread('um_0.1_kp_10_ki_0.xlsm','B1:B672');
in_6 = xlsread('um_0.1_kp_10_ki_0.xlsm','E1:E672');
activacion_6 = xlsread('um_0.1_kp_10_ki_0.xlsm','G1:G672');
eventos_6 = xlsread('um_0.1_kp_10_ki_0.xlsm','I1:I672');

out_7 = xlsread('um_0.02_50.xlsm','B1:B672');
in_7 = xlsread('um_0.02_50.xlsm','E1:E672');
activacion_7 = xlsread('um_0.02_50.xlsm','G1:G672');
eventos_7 = xlsread('um_0.02_50.xlsm','I1:I672');

out_8 = xlsread('um_0.2_kp_5_ki_0.015.xlsm','B1:B672');
in_8 = xlsread('um_0.2_kp_5_ki_0.015.xlsm','E1:E672');
activacion_8 = xlsread('um_0.2_kp_5_ki_0.015.xlsm','G1:G672');
eventos_8 = xlsread('um_0.2_kp_5_ki_0.015.xlsm','I1:I672');

out_9 = xlsread('um_0.2_kp_5_ki_0.xlsm','B1:B672');
in_9 = xlsread('um_0.2_kp_5_ki_0.xlsm','E1:E672');
activacion_9 = xlsread('um_0.2_kp_5_ki_0.xlsm','G1:G672');
eventos_9 = xlsread('um_0.2_kp_5_ki_0.xlsm','I1:I672');

out_10 = xlsread('um_0.03_50.xlsm','B1:B672');
in_10 = xlsread('um_0.03_50.xlsm','E1:E672');
activacion_10 = xlsread('um_0.03_50.xlsm','G1:G672');
eventos_10 = xlsread('um_0.03_50.xlsm','I1:I672');

out_11 = xlsread('um_0.3_kp_5_ki_0.015.xlsm','B1:B672');
in_11 = xlsread('um_0.3_kp_5_ki_0.015.xlsm','E1:E672');
activacion_11 = xlsread('um_0.3_kp_5_ki_0.015.xlsm','G1:G672');
eventos_11 = xlsread('um_0.3_kp_5_ki_0.015.xlsm','I1:I672');

out_12 = xlsread('um_0.3_kp_5_ki_0.xlsm','B1:B672');
in_12 = xlsread('um_0.3_kp_5_ki_0.xlsm','E1:E672');
activacion_12 = xlsread('um_0.3_kp_5_ki_0.xlsm','G1:G672');
eventos_12 = xlsread('um_0.3_kp_5_ki_0.xlsm','I1:I672');

out_13 = xlsread('um_0.04_50.xlsm','B1:B672');
in_13 = xlsread('um_0.04_50.xlsm','E1:E672');
activacion_13 = xlsread('um_0.04_50.xlsm','G1:G672');
eventos_13 = xlsread('um_0.04_50.xlsm','I1:I672');

out_14 = xlsread('um_0.4_kp_5_ki_0.015.xlsm','B1:B672');
in_14 = xlsread('um_0.4_kp_5_ki_0.015.xlsm','E1:E672');
activacion_14 = xlsread('um_0.4_kp_5_ki_0.015.xlsm','G1:G672');
eventos_14 = xlsread('um_0.4_kp_5_ki_0.015.xlsm','I1:I672');

out_15 = xlsread('um_0.4_kp_5_ki_0.xlsm','B1:B672');
in_15 = xlsread('um_0.4_kp_5_ki_0.xlsm','E1:E672');
activacion_15 = xlsread('um_0.4_kp_5_ki_0.xlsm','G1:G672');
eventos_15 = xlsread('um_0.4_kp_5_ki_0.xlsm','I1:I672');

out_16 = xlsread('um_0.5_kp_5_ki_0.015.xlsm','B1:B672');
in_16 = xlsread('um_0.5_kp_5_ki_0.015.xlsm','E1:E672');
activacion_16 = xlsread('um_0.5_kp_5_ki_0.015.xlsm','G1:G672');
eventos_16 = xlsread('um_0.5_kp_5_ki_0.015.xlsm','I1:I672');

out_17 = xlsread('um_0.5_kp_5_ki_0.xlsm','B1:B672');
in_17 = xlsread('um_0.5_kp_5_ki_0.xlsm','E1:E672');
activacion_17 = xlsread('um_0.5_kp_5_ki_0.xlsm','G1:G672');
eventos_17 = xlsread('um_0.5_kp_5_ki_0.xlsm','I1:I672');

out_18 = xlsread('um_0.6_kp_5_ki_0.015.xlsm','B1:B672');
in_18 = xlsread('um_0.6_kp_5_ki_0.015.xlsm','E1:E672');
activacion_18 = xlsread('um_0.6_kp_5_ki_0.015.xlsm','G1:G672');
eventos_18 = xlsread('um_0.6_kp_5_ki_0.015.xlsm','I1:I672');

out_19 = xlsread('um_0.6_kp_5_ki_0.xlsm','B1:B672');
in_19 = xlsread('um_0.6_kp_5_ki_0.xlsm','E1:E672');
activacion_19 = xlsread('um_0.6_kp_5_ki_0.xlsm','G1:G672');
eventos_19 = xlsread('um_0.6_kp_5_ki_0.xlsm','I1:I672');

out_20 = xlsread('um_1.2_kp_5_ki_0.015.xlsm','B1:B672');
in_20 = xlsread('um_1.2_kp_5_ki_0.015.xlsm','E1:E672');
activacion_20 = xlsread('um_1.2_kp_5_ki_0.015.xlsm','G1:G672');
eventos_20 = xlsread('um_1.2_kp_5_ki_0.015.xlsm','I1:I672');

out_21 = xlsread('um_1.2_kp_5_ki_0.xlsm','B1:B672');
in_21 = xlsread('um_1.2_kp_5_ki_0.xlsm','E1:E672');
activacion_21 = xlsread('um_1.2_kp_5_ki_0.xlsm','G1:G672');
eventos_21 = xlsread('um_1.2_kp_5_ki_0.xlsm','I1:I672');

out_22 = xlsread('um_2.4_kp_5_ki_0.015.xlsm','B1:B672');
in_22 = xlsread('um_2.4_kp_5_ki_0.015.xlsm','E1:E672');
activacion_22 = xlsread('um_2.4_kp_5_ki_0.015.xlsm','G1:G672');
eventos_22 = xlsread('um_2.4_kp_5_ki_0.015.xlsm','I1:I672');

out_23 = xlsread('um_2.4_kp_5_ki_0.xlsm','B1:B672');
in_23 = xlsread('um_2.4_kp_5_ki_0.xlsm','E1:E672');
activacion_23 = xlsread('um_2.4_kp_5_ki_0.xlsm','G1:G672');
eventos_23 = xlsread('um_2.4_kp_5_ki_0.xlsm','I1:I672');

save('data_pid_send_on_delta')
%%
t=1:length(out_1);
subplot(2,1,1)
plot(t,out_1,'--b','LineWidth',3)
title('PI Kp=5 Ki=0.015');
xlabel('t (seg)');
ylabel('H (cm)');
grid on
hold on
plot(t,out_4,'--','LineWidth',0.8);
plot(t,out_8,'--','LineWidth',0.8);
plot(t,out_11,'--','LineWidth',0.8);
plot(t,out_14,'--','LineWidth',0.8);
plot(t,out_16,'--','LineWidth',0.8);
plot(t,out_18,'--','LineWidth',0.8);
plot(t,out_20,'--','LineWidth',0.8);
plot(t,out_22,'r','LineWidth',1.2);
hold off
legend('periodico ','elim=0.1  hmax=50 ','elim=0.2  hmax=50 ','elim=0.3  hmax=50 ','elim=0.4  hmax=50 '...
    ,'elim=0.5  hmax=50 ','elim=0.6  hmax=50 ','elim=1.2  hmax=50 ','elim=2.4  hmax=50 ')

subplot(2,1,2)
t=1:length(out_1);
plot(t,eventos_1,'--b','LineWidth',3)
title('PI Kp=5 Ki=0.015');
xlabel('t (seg)');
ylabel('H (cm)');
grid on
hold on
plot(t,eventos_4,'--','LineWidth',0.8);
plot(t,eventos_8,'--','LineWidth',0.8);
plot(t,eventos_11,'--','LineWidth',0.8);
plot(t,eventos_14,'--','LineWidth',0.8);
plot(t,eventos_16,'--','LineWidth',0.8);
plot(t,eventos_18,'--','LineWidth',0.8);
plot(t,eventos_20,'--','LineWidth',0.8);
plot(t,eventos_22,'r','LineWidth',1.2);
hold off
legend('periodico ','elim=0.1  hmax=50 ','elim=0.2  hmax=50 ','elim=0.3  hmax=50 ','elim=0.4  hmax=50 '...
    ,'elim=0.5  hmax=50 ','elim=0.6  hmax=50 ','elim=1.2  hmax=50 ','elim=2.4  hmax=50 ')
%%
t=1:length(out_1);
subplot(2,1,1)
plot(t,out_2,'--b','LineWidth',3)
title('P Kp=5');
xlabel('t (seg)');
ylabel('H (cm)');
grid on
hold on
plot(t,out_5,'--','LineWidth',0.8);
plot(t,out_9,'--','LineWidth',0.8);
plot(t,out_12,'--','LineWidth',0.8);
plot(t,out_15,'--','LineWidth',0.8);
plot(t,out_19,'--','LineWidth',0.8);
plot(t,out_21,'--','LineWidth',0.8);
plot(t,out_23,'r','LineWidth',1.2);
hold off
legend('periodico ','elim=0.1  hmax=50 ','elim=0.2  hmax=50 ','elim=0.3  hmax=50 ','elim=0.4  hmax=50 '...
    ,'elim=0.6  hmax=50 ','elim=1.2  hmax=50 ','elim=2.4  hmax=50 ')

subplot(2,1,2)
t=1:length(out_1);
plot(t,eventos_2-200,'--b','LineWidth',3)
title('P Kp=5');
xlabel('t (seg)');
ylabel('H (cm)');
grid on
hold on
plot(t,eventos_5,'--','LineWidth',0.8);
plot(t,eventos_9,'--','LineWidth',0.8);
plot(t,eventos_12,'--','LineWidth',0.8);
plot(t,eventos_15,'--','LineWidth',0.8);
plot(t,eventos_19,'--','LineWidth',0.8);
plot(t,eventos_21,'--','LineWidth',0.8);
plot(t,eventos_23,'r','LineWidth',1.2);
hold off
legend('periodico ','elim=0.1  hmax=50 ','elim=0.2  hmax=50 ','elim=0.3  hmax=50 ','elim=0.4  hmax=50 '...
    ,'elim=0.6  hmax=50 ','elim=1.2  hmax=50 ','elim=2.4  hmax=50 ')