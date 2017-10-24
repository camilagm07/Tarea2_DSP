% Ejercicio 4
% Filtro Hanning.

w = -pi:0.0001:pi; % Frecuencia.

% Función |H(w)|.
H = 0.5 .*abs(1+cos(w));

% Función <H(w).
PH = -w;

% Graficas de H(w).
figure;
subplot(1,2,1);
plot(w, H);
title('Respuesta en magnitud del filtro Hanning')
xlabel('w');
ylabel('|H(w)|');
subplot(1,2,2);
plot(w, PH);
title('Respuesta en fase del filtro Hanning')
xlabel('w');
ylabel('<H(w)');