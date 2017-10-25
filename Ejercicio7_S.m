% Ejercicio 7
% Filtro ranura de sólo ceros (FIR).

w = -pi:0.0001:pi; % Frecuencia.

b0 = 1 ./(sqrt(2-2 .*cos(0.56*pi)).*sqrt(2-2 .*cos(1.04*pi))); % Ganancia.
w0 = 0.24*pi; % Angulo de los ceros conjugados.

% Funcion |H(w)|.
V1 = 2-2 .*cos(w-w0);
V2 = 2-2 .*cos(w+w0);
H = abs(b0).*sqrt(V1.*V2);

% Funcion <H(w).
A = sin(w-w0);
B = 1-cos(w-w0);
C = sin(w+w0);
D = 1-cos(w+w0);
PH = atan(A./B)+atan(C./D);

% Graficas de H(w).
figure;
subplot(1,2,1);
plot(w, H);
grid;
title('Respuesta en magnitud del filtro')
xlabel('w');
ylabel('|H(w)|');
subplot(1,2,2);
plot(w, PH);
grid;
title('Respuesta en fase del filtro')
xlabel('w');
ylabel('<H(w)');