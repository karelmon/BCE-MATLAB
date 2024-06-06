clc; 
%y=y_eventos_ts.signals.values;
%N_eventos=N_eventos_;
figure
y1 = load('y_002.mat');
y2 = load('y_004.mat');
y3 = load('y_008.mat');
y4 = load('y_016.mat');
y5 = load('y_032.mat');
y6 = load('y_048.mat');
y7 = load('y_056.mat');
% subplot(2,1,1)
hold on
%plot(y1.y,'LineWidth',1.2)

plot(y3.y,'LineWidth',1.2)
plot(y2.y,'LineWidth',1.2)
plot(y4.y,'LineWidth',1.2)
plot(y5.y,'LineWidth',1.2)
plot(y6.y,'LineWidth',1.2)
plot(y7.y,'LineWidth',1.2)
plot(1:length(y7.y+1),[0 25*ones(1,length(y7.y)-1)],'--r','LineWidth',2)
ylim([-0.5 26])
xlim([0 1600])
hold off
title('Time responses of simulations')
xlabel('time [seg]');
ylabel('H(t) [cm]');
legend('elim=0.08 and security cond=50','elim=0.4 and security cond=50','elim=0.16 and security cond=50','elim=0.32 and security cond=50','elim=0.48 and security cond=50','elim=0.56 and security cond=50');
grid on

% subplot(2,1,2)