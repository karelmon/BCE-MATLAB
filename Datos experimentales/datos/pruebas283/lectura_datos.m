clc; clear; 
sheet = 1;
t=0:0.06:11.94;
%% datos um=001
datos001.out_sod = xlsread("um_0.01_sampling6.xlsm",sheet,'B9:B208') ;
datos001.in_sod = xlsread("um_0.01_sampling6.xlsm",sheet,'E9:E208');
datos001.serror = xlsread("um_0.01_sampling6.xlsm",sheet,'G9:G208');
datos001.sum_eventos = xlsread("um_0.01_sampling6.xlsm",sheet,'I9:I208');
%% datos um=002
datos002.out_sod = xlsread("um_0.02_sampling6.xlsm",sheet,'B17:B216') ;
datos002.in_sod = xlsread("um_0.02_sampling6.xlsm",sheet,'E17:E216');
datos002.serror = xlsread("um_0.02_sampling6.xlsm",sheet,'G17:G216');
datos002.sum_eventos = xlsread("um_0.02_sampling6.xlsm",sheet,'I17:I216');
%% datos um=004
datos004.out_sod = xlsread("um_0.04_sampling6.xlsm",sheet,'B16:B215') ;
datos004.in_sod = xlsread("um_0.04_sampling6.xlsm",sheet,'E16:E215');
datos004.serror = xlsread("um_0.04_sampling6.xlsm",sheet,'G16:G215');
datos004.sum_eventos = xlsread("um_0.04_sampling6.xlsm",sheet,'I16:I215');
%% datos um=006
datos006.out_sod = xlsread("um_0.06_sampling6.xlsm",sheet,'B14:B213') ;
datos006.in_sod = xlsread("um_0.06_sampling6.xlsm",sheet,'E14:E213');
datos006.serror = xlsread("um_0.06_sampling6.xlsm",sheet,'G14:G213');
datos006.sum_eventos = xlsread("um_0.06_sampling6.xlsm",sheet,'I14:I213');
%% datos um=008
datos008.out_sod = xlsread("um_0.08_sampling6.xlsm",sheet,'B5:B204') ;
datos008.in_sod = xlsread("um_0.08_sampling6.xlsm",sheet,'E5:E204');
datos008.serror = xlsread("um_0.08_sampling6.xlsm",sheet,'G5:G204');
datos008.sum_eventos = xlsread("um_0.08_sampling6.xlsm",sheet,'I5:I204');
%% datos um=032
datos032.out_sod = xlsread("um_0.32_sampling6.xlsm",sheet,'B13:B212') ;
datos032.in_sod = xlsread("um_0.32_sampling6.xlsm",sheet,'E13:E212');
datos032.serror = xlsread("um_0.32_sampling6.xlsm",sheet,'G13:G212');
datos032.sum_eventos = xlsread("um_0.32_sampling6.xlsm",sheet,'I13:I212');

%% GRAFICAS
figure(1)
%%respuesta en la salida
subplot(211)
plot(t,datos001.out_sod);
grid;
hold on 
plot(t,datos002.out_sod);
plot(t,datos004.out_sod);
plot(t,datos006.out_sod);
plot(t,datos008.out_sod);
plot(t,datos032.out_sod);
hold off
title('Time Response');
legend('elim=0.01 & hmax=5000', 'elim=0.02 & hmax=5000' ...
    ,'elim=0.04 & hmax=5000','elim=0.06 & hmax=5000','elim=0.08 & hmax=5000' ...
    ,'elim=0.32 & hmax=5000');
xlabel('time(seg)');
ylabel('h (cm)');
%%respuesta de eventos
subplot(212)
plot(t,datos001.sum_eventos);
grid;
hold on
plot(t,datos002.sum_eventos);
plot(t,datos004.sum_eventos);
plot(t,datos006.sum_eventos);
plot(t,datos008.sum_eventos);
plot(t,datos032.sum_eventos);
hold off
title('No of Events in time');
legend('elim=0.01 & hmax=5000', 'elim=0.02 & hmax=5000' ...
    ,'elim=0.04 & hmax=5000','elim=0.06 & hmax=5000','elim=0.08 & hmax=5000' ...
    ,'elim=0.32 & hmax=5000','Location','northwest');
xlabel('time(seg)');
ylabel('No Events');

figure(2)
subplot(231)
plot(t,datos001.serror);
grid;
title('Error signal elim=0.01');
%xlabel("No of events")
subplot(232)
plot(t,datos002.serror);
grid;
title('Error signal elim=0.02');
subplot(233)
plot(t,datos004.serror);
grid;
title('Error signal elim=0.04');
subplot(234)
plot(t,datos006.serror);
grid;
title('Error signal  elim=0.06');
subplot(235)
plot(t,datos008.serror);
grid;
title('Error signal elim=0.08');
subplot(236)
plot(t,datos032.serror);
grid;
title('Error signal  elim=0.32');
