% Ejercicio 7
% Filtro ranura de sólo ceros (FIR).

w = -pi:0.0001:pi; % Frecuencia.

b0 = 1 ./(sqrt(2-2 .*cos(0.56*pi)).*sqrt(2-2 .*cos(1.04*pi))); % Ganancia.
w0 = 0.24*pi; % Angulo de los ceros conjugados.

% Funcion |H(w)|.
H = abs(b0).*sqrt((2-2.*cos(w-w0)).*(2-2.*cos(w+w0)));

% Funcion <H(w).
PH = atan((sin(w-w0))./(1-cos(w-w0)))+atan((sin(w+w0))./(1-cos(w+w0)));

% Salidas ante entradas.
M = 50; % Número muestras.

% Primer sinusoide.
w1 = w0; % Frecuencua de x(n).
H1 = abs(b0).*sqrt((2-2.*cos(w1-w0)).*(2-2.*cos(w1+w0))); % |H(w1)|.
%PH1 = atan((sin(w1-w0))./(1-cos(w1-w0)))+atan((sin(w1+w0))./(1-cos(w1+w0))); % <H(w1). Se indefine.
for (n = 1:1:M+1) % Formacion de las secuencias.
  x1(n) = sin(w1*n);
  y1(n) = H1*sin(w1*n);
  endfor

% Segundo sinusoide.
w2 = 0.8*pi; % Frecuencua de x(n).
H2 = abs(b0).*sqrt((2-2 .*cos(w2-w0)).*(2-2 .*cos(w2+w0))); % |H(w2)|.
PH2 = atan((sin(w2-w0))./(1-cos(w2-w0)))+atan((sin(w2+w0))./(1-cos(w2+w0))); % <H(w2).
for (n = 1:1:M+1) % Formacion de las secuencias.
  x2(n) = sin(w2*n);
  y2(n) = H2*sin(w2*n+PH2);
  endfor

% Graficas de H(w).
figure;
subplot(1,2,1);
plot(w, H);
grid;
title('Respuesta en magnitud del filtro');
xlabel('w');
ylabel('|H(w)|');
subplot(1,2,2);
plot(w, PH);
grid;
title('Respuesta en fase del filtro');
xlabel('w');
ylabel('<H(w)');

%  Graficas de salida 1.
% Se corren a n+1 para que empiece en n = 0 la graficacion.
figure;
subplot(1,2,1);
stem(n = 0:1:M-1, x1(n+1), 'r.');
grid;
title('Entrada sinusoidal discreta de frecuencia w = 0.24pi. 50 muestras.')
%axis([-1,26,-0.1,2.25]);
xlabel('n');
ylabel('x(n)');

subplot(1,2,2);
stem(n = 0:1:M-1, y1(n+1), 'b.');
grid;
title('Respuesta.')
%axis([-1,26,-0.1,2.25]);
xlabel('n');
ylabel('y(n)');

% Graficas de salida 2.
% Se corren a n+1 para que empiece en n = 0 la graficacion.
figure;
subplot(1,2,1);
stem(n = 0:1:M-1, x2(n+1), 'r.');
grid;
title('Entrada sinusoidal discreta de frecuencia w = 0.8pi. 50 muestras.')
%axis([-1,26,-0.1,2.25]);
xlabel('n');
ylabel('x(n)');

subplot(1,2,2);
stem(n = 0:1:M-1, y2(n+1), 'b.');
grid;
title('Respuesta.')
%axis([-1,26,-0.1,2.25]);
xlabel('n');
ylabel('y(n)');