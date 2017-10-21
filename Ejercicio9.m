%Ejercicio 9

% Con un tamaño de paso de 0.004 obtenemos Fs = 500 muestras/s
% T = 2 porque se estudia desde -pi a pi.
% Paso = Fs(m/s)*T(s) = # muestras

f = [-1:0.004:1];
w = 3.14*f;
w0 = 120*pi;

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

% Inciso B: filtro de segundo orden con polos r = 0.9
b1 = 361/400;

% Funcion de magnitud |H(w)|

V12 = 2-2.*cos(w-w0);
V22 = 2-2.*cos(w+w0);
V32 = 1.81 - 1.8.*cos(w-w0);
V42 = 1.81 - 1.8.*cos(w+w0);
H2 = abs(b1).*sqrt(V12.*V22./V32./V42);

% Funcion de fase de H(w).
A1 = 0.9*sin(w-w0);
B1 = 1-0.9*cos(w-w0);
C1 = 0.9*sin(w+w0);
D1 = 1-0.9*cos(w+w0);
P1 = atan(A1./B1);%+atan(C1./D1);
PT = P-P1; %Le resto a la fase de los ceros la fase de los polos

figure(2)
subplot(1,2,1);
plot(w,H2,"r");
title("Magnitud filtro hendidura de segundo orden")
xlabel('w');
ylabel('|Ha(jw)|');

subplot(1,2,2);
plot(w,PT,"r");
title("Fase filtro hendidura de segundo orden")
xlabel('w');
ylabel('<Ha(jw)');