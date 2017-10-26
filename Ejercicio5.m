%Ejercicio 5
% y(n) = b0x(n)+b1x(n-1)+b2x(n-2)
% Calcular coeficientes para que el filtro rechace wo=2pi/3
% H(0) = 1

w = [-pi:0.004:pi]; % Frecuencia w desde -pi a pi con 500pi puntos.
s = size(w); % Tamaño de matriz w.


b0 = 1/3; %Normalización, valor de los coeficientes

%Calculo de Magnitud y fase
Real = 1+cos(w)+cos(2*w);
Imaginaria = -sin(w)-sin(2*w);
[Magnitud,Phase] = Fase(s,Real,Imaginaria);

Magnitud = Magnitud*b0;

%Figura

figure(1)
subplot(1,2,1);
plot(w,Magnitud,"m");
title("Magnitud filtro rechaza wo=2pi/3")
xlabel('w');
ylabel('|H(jw)|');

subplot(1,2,2);
plot(w,Phase,"m");
title("Fase filtro rechaza wo=2pi/3")
xlabel('w');
ylabel('<H(jw)');
