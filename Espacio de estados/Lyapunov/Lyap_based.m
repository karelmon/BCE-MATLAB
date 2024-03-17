function [y,x,t,Kd,u,e,N,M,eventos,norma] = Lyap_based(A,B,C,poles,t,sigma,Ts,x0,xs0)
% Lyap_based - Implementación de un controlador en tiempo DISCRETO gobernado por eventos, mediante metodos basados en funcioens de Lyapunov.
%
%   [y, x, t, Kd, u, e, N, M, eventos] = Lyap_based(A, B, C, poles, t, sigma, Ts, x0, xs0)
%   calcula la respuesta del sistema gobernado por eventos, a lazo cerrado.
%
%   Entradas:
%       A - Matriz de estado de la planta continua.
%       B - Matriz de entrada de la planta continua.
%       C - Matriz de salida de la planta continua.
%       poles - Polos deseados a lazo cerrado para la planta continua.
%       t - Vector de tiempo.
%       sigma - Valor positivo del umbral |x(t)-x(tk)|=sigma*|x|.
%       Ts - Período de muestreo del controlador discreto.
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
%       norma - Es el vector que guarda los valores de la norma vectorial
%       de la diferencia entre los estados medidos y los estados del ultimo
%       evento.
%
%   Ejemplo de uso:
%       [y, x, t, Kd, u, e, N, M, eventos] = Lyap_based(A, B, C, poles, t, sigma, Ts, x0, xs0);
%
%   Notas:
%       - Esta función asume que el sistema es continuo.
%       - Se requiere la Toolbox de Control Systems para la función 'c2d' y 'acker'.
%       - Se asume que el controlador toma muestras con un periodo igual a Ts.
%
%   Referencias:
%       [1] M. Guinaldo, J. Sánchez, y S. Dormido, «Control en red basado en eventos: de lo centralizado a lo distribuido», Revista Iberoamericana de Automática e Informática Industrial RIAI, vol. 14, n.º 1, pp. 16-30, ene. 2017, doi: 10.1016/j.riai.2016.09.007.
%       [2] P. Tabuada, «Event-Triggered Real-Time Scheduling of Stabilizing Control Tasks», IEEE Trans. Automat. Contr., vol. 52, n.º 9, pp. 1680-1685, sep. 2007, doi: 10.1109/TAC.2007.904277.
%       [3] W. P. M. H. Heemels, K. H. Johansson, y P. Tabuada, «An introduction to event-triggered and self-triggered control», en 2012 IEEE 51st IEEE Conference on Decision and Control (CDC), Maui, HI, USA: IEEE, dic. 2012, pp. 3270-3285. doi: 10.1109/CDC.2012.6425820.
%       [4] M. Miskowicz, Ed., Event-based control and signal processing. en Embedded systems. Boca Raton: CRC Press, 2016.

% Asegura que sigma sea positivo
assert(sigma > 0, 'Sigma debe ser positivo')

% Calcula el paso de simulación
SIM_step = t(2) - t(1);

% Asegura que los intervalos de t sean regulares
assert((t(end) - t(end-1)) - SIM_step <= 1e-3, 'El vector t debe tener intervalos regulares');

% Asegura que Ts sea múltiplo del periodo de t
assert(mod(Ts, SIM_step) == 0, 'Ts debe ser múltiplo del periodo de t');

% Crea el sistema de espacio de estados Gss
Gss = ss(A,B,C,0);

% Discretiza Gss con el periodo Ts
D = c2d(Gss,Ts);

% Discretiza Gss con el periodo SIM_step
D_sim = c2d(Gss,SIM_step);

% Calcula los polos deseados en el plano Z
pz = zeros(1,length(poles));
for i = 1:length(pz)
    pz(i) = exp(poles(i) * Ts);
end

% Calcula el vector de ganancias Kd usando Ackermann
Kd = acker(D.A, D.B, pz);

% Inicializa variables
uc = 0;
x = x0;
y = C * x0;
e = zeros(0, length(t) - 1);
e_norma = e;
sigma_norma = e;
norma = sigma_norma;
eventos = e;
u = e;

k = 1;
xs = xs0;

% Bucle principal de simulación
for i = 1:length(t) - 1
    e(i) = 0 - y(i);
    
    eventos(i) = 0;
    e_norma(i) = norm(x(:,i) - xs(:, k));
    sigma_norma(i) = norm(x(:,i)) * sigma;
    norma(i) = sigma_norma(i);
    
    % Controlador actúa cada Ts segundos
    if mod(t(i), Ts) == 0
        if e_norma(i) >= sigma_norma(i)
            uc = -Kd * x(:,i);
            k = k + 1;
            xs(:, k) = x(:,i);
            eventos(i) = 1;
        end
    end
    
    u(i) = uc;
    x(:,i + 1) = D_sim.A * x(:,i) + D_sim.B * u(i);
    y(i + 1) = D_sim.C * x(:,i + 1);
end

% Número de eventos
N = length(find(eventos == 1));

% Longitud de t
M = length(t);

end

