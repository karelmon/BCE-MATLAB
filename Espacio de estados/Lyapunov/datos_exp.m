function [error_est,t_asent,sobre_pico_porcentaje] = datos_exp(y,referencia,t,criterio)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
    N = length(t);
    error_est = y(end)-referencia(end);
    
    %En base al criterio
    G = y(end)*criterio/100;
    i=1;
    t_asent=-1;
    while (t_asent==-1 && i<=N)
        if(abs(y(i)-y(end))<=abs(G))
            p=i;
            while((abs(y(p)-y(end)))<=abs(G) && p<N) 
                p = p + 1;
            end
            if (p>=N)
               t_asent = t(i); 
            end
            
        end
        i = i + 1;
    end
    
    if(y(end)-y(1)>=0)
       sobre = max(y);
       sobre_pico_porcentaje = 100 * abs(sobre - y(end))/y(end);
    else
       sobre = min(y);
       sobre_pico_porcentaje = 100 * abs(sobre - y(end))/y(end); 
    end
end

