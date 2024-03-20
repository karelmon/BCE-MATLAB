clc 
filename = 'periodico_30_0015_final.xlsm';
sheet = 1;
xlRange = 'B1:B747';
ylRange = 'E1:E747';
zlRange = 'I1:I747';
out_periodico = xlsread(filename,sheet,xlRange) ;
in_periodico = xlsread(filename,sheet,ylRange);
num_eventos = xlsread(filename,sheet,zlRange);