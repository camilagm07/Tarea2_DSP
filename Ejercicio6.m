% Ejercicio 6
% Filtro peine FIR de media movil.

w = -pi:0.0001:pi; % Frecuencia.

% Funcion |H(w)|.
A = sin(4.5*w);
B = sin(0.5*w);
H = abs(A./B);

% Funcion <H(w).
PH = atan(sin(9*w)./(1-cos(9*w))) - atan(sin(w)./(1-cos(w)));

% Graficas de H(w).
figure;
subplot(1,2,1);
plot(w, H);
title('Respuesta en magnitud del filtro')
xlabel('w');
ylabel('|H(w)|');
subplot(1,2,2);
plot(w, PH);
title('Respuesta en fase del filtro')
xlabel('w');
ylabel('<H(w)');