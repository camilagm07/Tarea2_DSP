% Ejercicio 2
% Filtro ranura de sólo ceros (FIR).

w = -pi:0.0001:pi; % Frecuencia.

b0 = 1./(2+sqrt(2)); % Ganancia.
w0 = pi/4; % Frecuencia de los ceros conjugados.

% Funcion |H(w)|.
V1 = 2-2.*cos(w-w0);
V2 = 2-2.*cos(w+w0);
H = abs(b0).*sqrt(V1.*V2);

% Funcion <H(w).
A = sin(w-w0);
B = 1-cos(w-w0);
C = sin(w+w0);
D = 1-cos(w+w0);
PH = atan(A./B)+atan(C./D);

% Salida inciso a.
%Xa =
%PXa =
%Ya =
%PYa =

% Salida inciso b.
Xb = (sqrt(2)./2).*(1 ./sqrt(2-2 .*cos(w)));
PXb = -atan(sin(w)./(1-cos(w)));
Yb = H.*Xb;
PYb = PH+PXb;

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

%  Graficas de salida inciso b.
figure;
subplot(1,2,1);
plot(w, Yb);
title('Respuesta en magnitud de salida inciso b')
xlabel('w');
ylabel('|Y(w)|');
subplot(1,2,2);
plot(w, PYb);
title('Respuesta en fase de salida inciso b')
xlabel('w');
ylabel('<Y(w)');
