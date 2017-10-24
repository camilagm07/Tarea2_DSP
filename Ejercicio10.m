% Ejercicio 10
% Filtros inversos.

w = -pi:0.0001:pi; % Frecuencia.

% Funcion |H(w)|.
H = sqrt(1.9025-1.9 .*cos(6*w));

% Funcion |HI(w)|.
HI = 1 ./H;

% Graficas.
figure;
subplot(1,2,1);
plot(w, H);
title('Respuesta en magnitud del filtro')
xlabel('w');
ylabel('|H(w)|');
subplot(1,2,2);
plot(w, HI);
title('Respuesta en magnitud del filtro inverso')
xlabel('w');
ylabel('|HI(w)|');