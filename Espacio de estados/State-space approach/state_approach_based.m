function [y,x,t,Kd,u,e,N,M,eventos,norma] = state_approach_based(A,B,C,poles,t,umbral,incertidumbre_de_A,incertidumbre_de_B,Ts,x0,xs0)
% state_approach_based - Implementación de un controlador gobernado por eventos, basado en el método de emulacion de estados para un sistema con incertidumbre.
%
%   [y, x, t, Kd, u, e, N, M, eventos] = state_approach_based(A, B, C, poles, t, umbral, incertidumbre_de_A, incertidumbre_de_B, Ts, x0, xs0)
%   calcula la respuesta del sistema controlado utilizando un controlador discreto de realimentacion de estados por eventos.
%
%   Entradas:
%       A - Matriz de estado de la planta continua.
%       B - Matriz de entrada de la planta continua.
%       C - Matriz de salida de la planta continua.
%       poles - Polos deseados a lazo cerrado para la planta continua.
%       t - Vector de tiempo.
%       umbral - Valor del umbral |x(t)-x(ts)|=umbral.
%       incertidumbre_de_A - Matriz de incertidumbre para la matriz de estado A.
%       incertidumbre_de_B - Matriz de incertidumbre para la matriz de entrada B.
%       Ts - Período de muestreo del sistema discreto.
%       x0 - Condiciones iniciales de la planta continua.
%       xs0 - Condiciones iniciales que el controlador por eventos asume.
%
%   Salidas:
%       y - Vector de salida del sistema a lazo cerrado.
%       x - Matriz de estado del sistema a lazo cerrado.
%       t - Vector de tiempo.
%       Kd - Matriz de ganancia del controlador discreto.
%       u - Vector de la señal de control.
%       e - Vector de error entre la salida y cero.
%       N - Número de eventos en los que se activa el controlador por eventos.
%       M - Número de eventos en los que se activa un controladro periodico regular.
%       eventos - Vector que indica los eventos en los que se activa el controlador.
%       norma - Vector que contiene los valores de la norma vectorial de la
%       diferencia entre los estados medidos y los estados estimados.
%
%   Ejemplo de uso:
%       [y, x, t, Kd, u, e, N, M, eventos] = state_approach_based(A, B, C, poles, t, umbral, incertidumbre_de_A, incertidumbre_de_B, Ts, x0, xs0);
%
%   Notas:
%       - Esta función asume que el sistema es continuo.
%       - Se requiere la Toolbox de Control Systems para la función 'c2d' y 'acker'.
%       - Se asume que el controlador toma muestras con un periodo igual a Ts.
%
%   Referencias:
%       [1] J. Lunze y D. Lehmann, «A state-feedback approach to event-based control», Automatica, vol. 46, n.º 1, pp. 211-215, ene. 2010, doi: 10.1016/j.automatica.2009.10.035.
%       [2] D. Lehmann y J. Lunze, «Extension and experimental evaluation of an event-based state-feedback approach», Control Engineering Practice, vol. 19, n.º 2, pp. 101-112, feb. 2011, doi: 10.1016/j.conengprac.2010.10.003.
%       [3] D. Lehmann y J. Lunze, «Event-based control: A state-feedback approach», en 2009 European Control Conference (ECC), Budapest: IEEE, ago. 2009, pp. 1716-1721. doi: 10.23919/ECC.2009.7074650.
%       [4] M. Miskowicz, Ed., Event-based control and signal processing. en Embedded systems. Boca Raton: CRC Press, 2016.


% Asegura que el umbral sea positivo
assert(umbral > 0, 'El umbral debe ser positivo')

% Calcula el paso de simulación
SIM_step = t(2) - t(1);

% Asegura que los intervalos de t sean regulares
assert((t(end) - t(end-1)) - SIM_step <= 1e-3, 'El vector t debe tener intervalos regulares');

% Asegura que Ts sea múltiplo del periodo de t
assert(mod(Ts, SIM_step) == 0, 'Ts debe ser múltiplo del periodo de t');

% Crea el sistema de espacio de estados Gss
Gss = ss(A,B,C,0);

% Discretiza Gss con el periodo Ts
D = c2d(ss(A+incertidumbre_de_A,B+incertidumbre_de_B,C,0),Ts);

% Discretiza el sistema con el periodo SIM_step
D_sim = c2d(Gss,SIM_step);

% Calcula los polos deseados en el plano Z
pz = zeros(1,length(poles));
for i = 1:length(pz)
    pz(i) = exp(poles(i) * Ts);
end

% Calcula el vector de ganancias Kd usando Ackermann
Kd = acker(D.A, D.B, pz);

%Inicializacion de variables
uc=0;
u=zeros(0,length(t)-1);
norma=u;
eventos=u;
e=u;

%Condiciones iniciales
x=x0;
xs=xs0;
y=C * x;

%A_tilde=(D_1.A+[0.01 0.05;0.01 0.05])-D_1.B*Kd;
A_tilde=(D.A)-D.B*Kd;
k=1;
for i=1:length(t)-1
    e(i)=0-y(i);
    
    eventos(i)=0;
    norma(i)=norm(x(:,i)-xs(:,k));
    if(mod(t(i),Ts)==0)  %el controlador solo toma muestras con un periodo Ts
        xs(:,k+1)=A_tilde*xs(:,k);
        %norma(i)=norm(x(:,i)-xs(:,k));
        if(norma(i)>=umbral)
            xs(:,k)=x(:,i);
            xs(:,k+1)=A_tilde*xs(:,k);
            eventos(i)=1;
        end
        
        uc=-Kd*xs(:,k);
        k=k+1;
    end
    
    u(i)=uc;
    x(:,i+1)=D_sim.A*x(:,i)+D_sim.B*u(i);
    y(i+1)=D_sim.C*x(:,i+1);
end

% Número de eventos
N = length(find(eventos == 1));

% Longitud de t
M = length(t);
end