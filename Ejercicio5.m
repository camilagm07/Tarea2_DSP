%Ejercicio 5


w = [-pi:0.004:pi];
%w = 3.14*f;

%Cálculo de magnitud
b0 = 1/3;
magA = abs(b0.*(1+exp(-j*w)+exp(-2*j*w)));

%Calculo de fase
P = atan(exp(-j*w)+exp(-2*j*w));


figure(1)
subplot(1,2,1);
plot(w,magA,"m");
title("Magnitud filtro rechaza wo=2pi/3")
xlabel('w');
ylabel('|Ha(jw)|');

subplot(1,2,2);
plot(w,P,"m");
title("Fase filtro rechaza wo=2pi/3")
xlabel('w');
ylabel('<Ha(jw)');
