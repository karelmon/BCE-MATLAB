y_um_04_50 = xlsread('um_0.4_50.xlsm','B1:B1221');
r_um_04_50 = xlsread('um_0.4_50.xlsm','E1:E1221');
eventos_04_50 = xlsread('um_0.4_50.xlsm','G1:G1221');
nro_04_50 = xlsread('um_0.4_50.xlsm','I1:I1221');


y_um_008_50 = xlsread('um_0.08_50.xlsm','B1:B1035');
r_um_008_50 = xlsread('um_0.08_50.xlsm','E1:E1035');
eventos_008_50 = xlsread('um_0.08_50.xlsm','G1:G1035');
nro_008_50 = xlsread('um_0.08_50.xlsm','I1:I1035');

y_um_016_50 = xlsread('um_0.16_50.xlsm','B1:B1024');
r_um_016_50 = xlsread('um_0.16_50.xlsm','E1:E1024');
eventos_016_50 = xlsread('um_0.16_50.xlsm','G1:G1024');
nro_016_50 = xlsread('um_0.16_50.xlsm','I1:I1024');

y_um_032_50 = xlsread('um_0.32_50.xlsm','B1:B1018');
r_um_032_50 = xlsread('um_0.32_50.xlsm','E1:E1018');
eventos_032_50 = xlsread('um_0.32_50.xlsm','G1:G1018');
nro_032_50 = xlsread('um_0.32_50.xlsm','I1:I1018');

y_um_048_50 = xlsread('um_0.48_50.xlsm','B1:B1018');
r_um_048_50 = xlsread('um_0.48_50.xlsm','E1:E1018');
eventos_048_50 = xlsread('um_0.48_50.xlsm','G1:G1018');
nro_048_50 = xlsread('um_0.48_50.xlsm','I1:I1018');

y_um_056_50 = xlsread('um_0.56_50.xlsm','B1:B1143');
r_um_056_50 = xlsread('um_0.56_50.xlsm','E1:E1143');
eventos_056_50 = xlsread('um_0.56_50.xlsm','G1:G1143');
nro_056_50 = xlsread('um_0.56_50.xlsm','I1:I1143');

y_um_056_50_cond_inic = xlsread('um_0.56_50_cond_iniciales.xlsm','B1:B277');
r_um_056_50_cond_inic = xlsread('um_0.56_50_cond_iniciales.xlsm','E1:E277');
eventos_056_50_cond_inic = xlsread('um_0.56_50_cond_iniciales.xlsm','G1:G277');
nro_056_50_cond_inic = xlsread('um_0.56_50_cond_iniciales.xlsm','I1:I277');

y_um_056_100 = xlsread('um_0.56_100.xlsm','B1:B899');
r_um_056_100 = xlsread('um_0.56_100.xlsm','E1:E899');
eventos_056_100 = xlsread('um_0.56_100.xlsm','G1:G899');
nro_056_100 = xlsread('um_0.56_100.xlsm','I1:I899');
%%
y_um_per = xlsread('periodico_30_0015_final.xlsm','B1:B899');
r_um_per = xlsread('periodico_30_0015_final.xlsm','E1:E899');
eventos_per = xlsread('periodico_30_0015_final.xlsm','G1:G899');
nro_per = xlsread('periodico_30_0015_final.xlsm','I1:I899');

%%
save('datos_del_9_al_18')
%%
% Crear subplots
figure;

% Subplot para y_um
subplot(4,1,1);
plot(y_um_04_50);
hold on;
plot(y_um_008_50);
plot(y_um_016_50);
plot(y_um_032_50);
plot(y_um_048_50);
plot(y_um_056_50);
plot(y_um_056_50_cond_inic);
plot(y_um_056_100);
plot(out_sod_002);
plot(out_sod);
plot(out_periodico,'LineWidth',4);
title('y\_um');
legend('um\_0.4\_50', 'um\_0.08\_50', 'um\_0.16\_50', 'um\_0.32\_50', 'um\_0.48\_50', 'um\_0.56\_50', 'um\_0.56\_50\_cond\_inic', 'um\_0.56\_100');

% Subplot para r_um
subplot(4,1,2);
plot(r_um_04_50);
hold on;
plot(r_um_008_50);
plot(r_um_016_50);
plot(r_um_032_50);
plot(r_um_048_50);
plot(r_um_056_50);
plot(r_um_056_50_cond_inic);
plot(r_um_056_100);
plot(in_sod_002);
plot(in_sod);
title('r\_um');
legend('um\_0.4\_50', 'um\_0.08\_50', 'um\_0.16\_50', 'um\_0.32\_50', 'um\_0.48\_50', 'um\_0.56\_50', 'um\_0.56\_50\_cond\_inic', 'um\_0.56\_100');

% Subplot para eventos
subplot(4,1,3);
plot(eventos_04_50);
hold on;
plot(eventos_008_50);
plot(eventos_016_50);
plot(eventos_032_50);
plot(eventos_048_50);
plot(eventos_056_50);
plot(eventos_056_50_cond_inic);
plot(eventos_056_100);
% plot(num_eventos_002);
% plot(num_eventos);
title('eventos');
legend('um\_0.4\_50', 'um\_0.08\_50', 'um\_0.16\_50', 'um\_0.32\_50', 'um\_0.48\_50', 'um\_0.56\_50', 'um\_0.56\_50\_cond\_inic', 'um\_0.56\_100');

% Subplot para nro
subplot(4,1,4);
plot(nro_04_50);
hold on;
plot(nro_008_50);
plot(nro_016_50);
plot(nro_032_50);
plot(nro_048_50);
plot(nro_056_50);
plot(nro_056_50_cond_inic);
plot(nro_056_100);
plot(sum_eventos_002);
plot(sum_evento);
title('nro');
legend('um\_0.4\_50', 'um\_0.08\_50', 'um\_0.16\_50', 'um\_0.32\_50', 'um\_0.48\_50', 'um\_0.56\_50', 'um\_0.56\_50\_cond\_inic', 'um\_0.56\_100');

