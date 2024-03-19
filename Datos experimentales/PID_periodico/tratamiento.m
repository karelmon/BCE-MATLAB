out_p = xlsread('periodico_30_0015.xlsm','B1:B688');
in_p = xlsread('periodico_30_0015.xlsm','E1:E688');
%%
t=1:length(out_p);
plot(t,out_p,'blue','LineWidth',2)
title('Periodico');
xlabel('t (seg)');
ylabel('H (cm)');
grid on
hold on
plot(t,in_p,'--r','LineWidth',2);
legend('y(t)','r(t)')
%%
[b,a]=butter(1,0.1)

out_p_filter = filter(b,a,out_p);

plot(t,out_p_filter)
hold on
plot(t,out_p)
hold off