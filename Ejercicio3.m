%Ejercicio 3


w = [-pi:0.004:pi];
s = size(w);

RealNumerador = 1-cos(w);
RealDenominador = 1+0.9*cos(w);

ImaginarioNumerador = sin(w);
ImaginarioDenominador = -0.9*sin(w);

[MagnitudN,FaseN] = Fase(s,RealNumerador,ImaginarioNumerador);
[MagnitudD,FaseD] = Fase(s,RealDenominador,ImaginarioDenominador);

Magnitud = MagnitudN./MagnitudD;
Fase2 = FaseN.-FaseD;

figure(1)
subplot(1,2,1);
plot(w,Magnitud,"m");
title("Magnitud filtro rechaza wo=0")
xlabel('w');
ylabel('|H(jw)|');

subplot(1,2,2);
plot(w,Fase2,"m");
title("Fase filtro rechaza wo=0")
xlabel('w');
ylabel('<H(jw)');

% c) Normalizada
bo = 1/20;
Magnitud2 = Magnitud*bo;
figure(2)
subplot(1,2,1);
plot(w,Magnitud2,"m");
title("Magnitud filtro rechaza wo=0")
xlabel('w');
ylabel('|H(jw)|');

subplot(1,2,2);
plot(w,Fase2,"m");
title("Fase filtro rechaza wo=0")
xlabel('w');
ylabel('<H(jw)'); 

% d) Salida con entrada 2cos((pi/2)n+pi/4);

n = [0:0.1:30];
x = 2*cos(pi/2*n+pi/4);
xanterior = 0;
yanterior = 0;

for i=1:301
  y(i) = 1/20*x(i)-1/20*xanterior-0.9*yanterior;
  xanterior=x(i);
  yanterior=y(i);
end

figure(3)
subplot(1,2,1);
plot(n,x,"r");
title("x(n)= 2cos((pi/2)n+pi/4)")
xlabel('n');
ylabel('x(n)');

subplot(1,2,2);
plot(n,y,"r");
title("y(n) = 1/20(x(n)-x(n-1)) - 0.9y(n)")
xlabel('n');
ylabel('y(n)'); 


