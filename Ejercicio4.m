% Ejercicio 4
% Filtro Hanning.

w = -pi:0.01:pi; % Frecuencia.

% Función |H(w)|.
H = 0.5 .*sqrt((0.5+cos(w)+0.5 .*cos(2*w)).^2 + (sin(w)+0.5 .*sin(2*w)).^2);

% Función <H(w).
PH = atan((-sin(w)-0.5 .*sin(2*w))./(0.5+cos(w)+0.5 .*cos(2*w)));

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