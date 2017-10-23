%Ejercicio 5


w = [-pi:0.004:pi];


%Cálculo de magnitud
b0 = 1/3;
magA = abs(b0.*(1+exp(-j*w)+exp(-2*j*w)));

%Calculo de fase
Real = 1+cos(w)+cos(2*w);
Imaginaria = -sin(w)-sin(2*w);
s = size(w);
[Magnitud,Phase] = Fase(s,Real,Imaginaria);


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
