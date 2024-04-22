clc; clear; 
filename = 'um_008withoutsecurity50.xlsm';
sheet = 1;
xlRange = 'B1:B805';
ylRange = 'E1:E805';
nRange = 'G1:G805';
zlRange = 'I1:I805';
datos008.out_sod = xlsread(filename,sheet,xlRange) ;
datos008.in_sod = xlsread(filename,sheet,ylRange);
datos008.num_eventos = xlsread(filename,sheet,nRange);
datos008.sum_evento = xlsread(filename,sheet,zlRange);
%% datos um=016
datos016.out_sod = xlsread("um_016withoutsecurity50.xlsm",sheet,'B3:B812') ;
datos016.in_sod = xlsread("um_016withoutsecurity50.xlsm",sheet,'E3:E812');
datos016.num_eventos = xlsread("um_016withoutsecurity50.xlsm",sheet,'G3:G812');
datos016.sum_evento = xlsread("um_016withoutsecurity50.xlsm",sheet,'I3:I812');
%% datos um=032
datos032.out_sod = xlsread("um_032withoutsecurity50.xlsm",sheet,'B8:B815') ;
datos032.in_sod = xlsread("um_032withoutsecurity50.xlsm",sheet,'E8:E815');
datos032.num_eventos = xlsread("um_032withoutsecurity50.xlsm",sheet,'G8:G815');
datos032.sum_evento = xlsread("um_032withoutsecurity50.xlsm",sheet,'I8:I815');
%% datos um=048
datos048.out_sod = xlsread("um_048withoutsecurity50.xlsm",sheet,'B1:B751') ;
datos048.in_sod = xlsread("um_048withoutsecurity50.xlsm",sheet,'E1:E751');
datos048.num_eventos = xlsread("um_048withoutsecurity50.xlsm",sheet,'G1:G751');
datos048.sum_evento = xlsread("um_048withoutsecurity50.xlsm",sheet,'I1:I751');
%% datos um=056
datos056.out_sod = xlsread("um_056withoutsecurity50.xlsm",sheet,'B6:B814') ;
datos056.in_sod = xlsread("um_056withoutsecurity50.xlsm",sheet,'E6:E814');
datos056.num_eventos = xlsread("um_056withoutsecurity50.xlsm",sheet,'G6:G814');
datos056.sum_evento = xlsread("um_056withoutsecurity50.xlsm",sheet,'I6:I814');
%% datos um=064
datos064.out_sod = xlsread("um_064withoutsecurity50.xlsm",sheet,'B3:B808') ;
datos064.in_sod = xlsread("um_064withoutsecurity50.xlsm",sheet,'E3:E808');
datos064.num_eventos = xlsread("um_064withoutsecurity50.xlsm",sheet,'G3:G808');
datos064.sum_evento = xlsread("um_064withoutsecurity50.xlsm",sheet,'I3:I808');
%% GRAFICAS
figure(1)
%%respuesta en la salida
subplot(211)
plot(datos008.out_sod);
grid;
hold on 
plot(datos016.out_sod);
plot(datos032.out_sod);
plot(datos048.out_sod);
plot(datos056.out_sod);
plot(datos064.out_sod);
hold off
title('Without safety condition Kp=30 Ki=0.015');
legend('elim=0.08 & hmax=50', 'elim=0.16 & hmax=50' ...
    ,'elim=0.32 & hmax=50','elim=0.48 & hmax=50','elim=0.56 & hmax=50' ...
    ,'elim=0.64 & hmax=50');
xlabel('time(seg)');
ylabel('h (cm)');
%%respuesta de eventos
subplot(212)
plot(datos008.sum_evento, 'LineStyle','--', 'LineWidth',1.5);
grid;
hold on
plot(datos016.sum_evento, 'LineStyle','--', 'LineWidth',1.5);
plot(datos032.sum_evento, 'LineStyle','--', 'LineWidth',1.5);
plot(datos048.sum_evento, 'LineStyle','--', 'LineWidth',1.5);
plot(datos056.sum_evento, 'LineStyle','--', 'LineWidth',1.5);
plot(datos064.sum_evento, 'LineStyle','--', 'LineWidth',1.5);
hold off
title('No of Events in time Kp=30 Ki=0.015');
legend('elim=0.08 & hmax=50', 'elim=0.16 & hmax=50' ...
    ,'elim=0.32 & hmax=50','elim=0.48 & hmax=50','elim=0.56 & hmax=50' ...
    ,'elim=0.64 & hmax=50','Location','northwest');
xlabel('time(seg)');
ylabel('No Events');

figure(2)
subplot(231)
plot(datos008.num_eventos);
title('Events Activation elim=0.08');
%xlabel("No of events")
subplot(232)
plot(datos016.num_eventos);
title('Events Activation elim=0.16');
subplot(233)
plot(datos032.num_eventos);
title('Events Activation elim=0.32');
subplot(234)
plot(datos048.num_eventos);
title('Events Activation elim=0.48');
subplot(235)
plot(datos056.num_eventos);
title('Events Activation elim=0.56');
subplot(236)
plot(datos064.num_eventos);
title('Events Activation elim=0.64');
