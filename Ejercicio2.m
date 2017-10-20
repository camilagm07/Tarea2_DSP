% Ejercicio 2
% Filtro ranura de sólo ceros (FIR).

w = -pi:0.01:pi; % Frecuencia.

b0 = 1/(2+sqrt(2)); % Ganancia.
w0 = pi/4; % Frecuencia de los ceros conjugados.

% Funcion de magnitud |H(w)|.
V1 = 2-2.*cos(w-w0);
V2 = 2-2.*cos(w+w0);
H = abs(b0).*sqrt(V1.*V2);

% Funcion de fase de H(w).
A = sin(w-w0);
B = 1-cos(w-w0);
C = sin(w+w0);
D = 1-cos(w+w0);
P = atan(A./B);%+atan(C./D);

Y = sqrt(2)/2;
PY = -w;

% Grafica de magnitud.
figure;
plot(w, H);

% Grafica de fase.
figure;
plot(w, P);

figure;
plot(w, Y);

figure;
plot(w, PY);