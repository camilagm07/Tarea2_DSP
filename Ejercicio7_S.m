% Ejercicio 7
% Filtro ranura de sólo ceros (FIR).

w = -pi:0.0001:pi; % Frecuencia.

w0 = 0.24*pi; % Angulo de los ceros conjugados.
b0 = 1 ./(sqrt(2-2 .*cos(0.6*pi-w0)).*sqrt(2-2 .*cos(0.6*pi+w0))); % Ganancia.

% Funcion |H(w)|.
V1 = 2-2 .*cos(w-w0);
V2 = 2-2 .*cos(w+w0);
H = abs(b0).*sqrt(V1.*V2);

plot(w,H);
grid;