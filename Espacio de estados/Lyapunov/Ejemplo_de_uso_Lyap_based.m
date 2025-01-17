
G=tf([0.5],[1 1 1])
[A,B,C,D]=tf2ss(0.5,[1 1 1]); %Espacio de estados


%Perido de muestreo y vector de tiempos
Ts=0.01;   %periodo de muestreo del controlador por eventos
t=0:.001:5;

[y,x,t,Kd,u,e,N,M,eventos]=Lyap_based(A,B,C,[-1+i -1-i],t,.5,Ts,[0;1],[0;0]);   

figure(1);
plot(t,y,'LineWidth',3) %salida
grid on
title('Salida y(t)')
%%

%figure(2);
subplot(2,2,1);
plot(t,[u 0],'LineWidth',3)%se�al de control
grid on
title('Se�al control u(t)')

%figure(3);
subplot(2,2,2);
plot(t,[e 0],'LineWidth',3)%se�al de error
grid on
title('Error y(t) y origen(cero)')

%figure(4);
subplot(2,2,3);
plot(t,[eventos 0]) %Instanes de activacion de eventos
axis([0 t(end) -0.1 1.2])
grid on
title('Instantes de tiempo de activacion de eventos')
cnt=eventos(1);
for i=2:length(eventos)
    if(eventos(i)==1)
        cnt(i)=cnt(i-1)+1;
    else
        cnt(i)=cnt(i-1);
    end
end
%El numero total de eventos es:
Nro_eventos=length(find(eventos==1))
Nro_activaciones=length(t)
%Grafica de eventos acumulativos de eventos a lo largo del tiempo
%figure(5);
subplot(2,2,4);
plot(t(1:end-1),cnt,'LineWidth',3)
grid on
title('Nro. de eventos a lo largo del tiempo')