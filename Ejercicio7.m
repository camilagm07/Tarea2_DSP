%Ejercicio 7
%D:
% Con un tamaño de paso de 0.004 obtenemos Fs = 500 muestras/s
% T = 2 porque se estudia desde -pi a pi.
% Paso = Fs(m/s)*T(s) = # muestras

f = [-1:0.004:1];
w = 3.14*f;
w0 = 120*pi;
w1 = 400*pi;

% Inciso A: filtro de segundo orden 
b0 = 1/4;
% Funcion de magnitud |H(w)|

V1 = 2-2.*cos(w-w0);
V2 = 2-2.*cos(w+w0);
H = abs(b0).*sqrt(V1.*V2);

% Funcion de fase de H(w).
A = sin(w-w0);
B = 1-cos(w-w0);
C = sin(w+w0);
D = 1-cos(w+w0);
P = atan(A./B);%+atan(C./D);

figure(1)
subplot(1,2,1);
plot(w,H,"m");
title("Magnitud filtro ranura FIR de segundo orden")
xlabel('w');
ylabel('|Ha(jw)|');

subplot(1,2,2);
plot(w,P,"m");
title("Fase filtro ranura FIR de segundo orden")
xlabel('w');
ylabel('<Ha(jw)');

