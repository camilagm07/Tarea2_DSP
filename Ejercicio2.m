% Ejercicio 2
% Filtro ranura de sólo ceros (FIR).

w = -pi:0.0001:pi; % Frecuencia.

b0 = 1./(2+sqrt(2)); % Ganancia.
w0 = pi/4; % Angulo de los ceros conjugados.

% Funcion |H(w)|.
H = abs(b0).*sqrt((2-2.*cos(w-w0)).*(2-2.*cos(w+w0)));

% Funcion <H(w).
PH = atan((sin(w-w0))./(1-cos(w-w0)))+atan((sin(w+w0))./(1-cos(w+w0)));

% Salidas ante entradas.
M = 25; % Número muestras.

% Inciso a.
wa = 0; % Frecuencua de x(n).
Ha = abs(b0).*sqrt((2-2.*cos(wa-w0)).*(2-2.*cos(wa+w0))); % |H(wa)|.
PHa = atan((sin(wa-w0))./(1-cos(wa-w0)))+atan((sin(wa+w0))./(1-cos(wa+w0))); % <H(wa).
for (n = 1:1:M) % Formacion de las secuencias.
  xa(n) = 2*cos(0*n);
  ya(n) = 2*Ha*cos(0*n+PHa);
  endfor

% Inciso b.
wb = w0; % Frecuencua de x(n).
Hb = abs(b0).*sqrt((2-2 .*cos(wb-w0)).*(2-2 .*cos(wb+w0))); % |H(wb)|.
%PHb = atan((sin(wb-w0))./(1-cos(wb-w0)))+atan((sin(wb+w0))./(1-cos(wb+w0))); % Se indefine.
for (n = 1:1:M) % Formacion de las secuencias.
  xb(n) = sin(wb*n);
  yb(n) = Hb*sin(wb*n);
  endfor

  
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

%  Graficas de salida.
% Se corren a n+1 para que empiece en n = 0 la graficacion.
figure;
subplot(1,2,1);
hold on;
stem(n = 0:1:M-1, xa(n+1), 'r.');
stem(n = 0:1:M-1, ya(n+1), 'b.');
hold off;
grid;
axis([-1,26,-0.1,2.25]);
title('Respuesta a entrada x(n) = 2. 25 muestras.')
xlabel('n');
legend('x(n): Entrada.','y(n): Salida.');

subplot(1,2,2);
hold on;
stem(n = 0:1:M-1, xb(n+1), 'r.');
stem(n = 0:1:M-1, yb(n+1), 'b.');
hold off;
grid;
axis([-1,26,-1.1,1.25]);
title('Respuesta a entrada sinusoidal discreta de frecuencia w = pi/4. 25 muestras.')
xlabel('n');
legend('x(n): Entrada.','y(n): Salida.');