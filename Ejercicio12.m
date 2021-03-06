% Ejercicio 12
% Oscilador sinusoidal digital.

% Constantes.
b0 = 1; % Impulso unitario.
w0 = pi/3; % Frecuencia de señal discreta.
a1 = -2*cos(w0);

%Condiciones iniciales.
y1 = 1;
y2 = 0;

for n = (1:1:60) % Algoritmo recursivo.
  y(n) = b0 - a1*y1 - y2;
  
  % Cambio de condiciones.
  b0 = 0; % Solo en primer n vale 1.
  y2 = y1;
  y1 = y(n);
  endfor

%Graficacion.
stem(n = 0:1:59, y(n+1), '.'); % Se corre para que empiece en n = 0.
title('Oscilador digital con periodo N = 6')
grid;
axis([-1,63,-2.2,2.2]);
xlabel('n');
ylabel('y(n)');