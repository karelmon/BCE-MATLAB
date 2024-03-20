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
plot(y1.y)
plot(y2.y)
plot(y3.y)
plot(y4.y)
plot(y5.y)
plot(y6.y)
plot(y7.y)
% subplot(2,1,2)