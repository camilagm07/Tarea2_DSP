%Ejercicio 1

f = [-1:0.004:1];
w = 3.14*f;
s = size(w);

% Inciso A
b0 = 1/2;
realA = 1-cos(w);
imagA = sin(w);

[MagnitudA,FaseA] = Fase(s,realA,imagA);

MagnitudA = MagnitudA*b0;

figure(1)
subplot(1,2,1);
plot(w,MagnitudA);
title("Magnitud inciso a","FontSize",14)
xlabel('w',"FontSize",14);
ylabel('|Ha(jw)|',"FontSize",14);
subplot(1,2,2);
plot(w,FaseA,"b");
title("Fase de inciso a","FontSize",14)
xlabel('w',"FontSize",14);
ylabel('<Ha(jw)',"FontSize",14);

% Inciso B

b0 = 1/2;
realB = 1-cos(2*w);
imagB = sin(2*w);

[MagnitudB,FaseB] = Fase(s,realB,imagB);

MagnitudB = MagnitudB*b0;

figure(2)
subplot(1,2,1);
plot(w,MagnitudB,"g");
title("Magnitud inciso b","FontSize",14)
xlabel('w',"FontSize",14);
ylabel('|Hb(jw)|',"FontSize",14);
subplot(1,2,2);
plot(w,FaseB,"g");
title("Fase de inciso b","FontSize",14)
xlabel('w',"FontSize",14);
ylabel('<Hb(jw)',"FontSize",14);

% Inciso C

realC = 1+cos(2*w);
imagC = -sin(2*w);

[MagnitudC,FaseC] = Fase(s,realC,imagC);

MagnitudC = MagnitudC*1/2;

figure(3)
subplot(1,2,1);
plot(w,MagnitudC,"m");
title("Magnitud inciso c","FontSize",14)
xlabel('w',"FontSize",14);
ylabel('|Hc(jw)|',"FontSize",14);
subplot(1,2,2);
plot(w,FaseC,"m");
title("Fase de inciso c","FontSize",14)
xlabel('w',"FontSize",14);
ylabel('<Hc(jw)',"FontSize",14);

% Inciso D

realD = 2-cos(2*w);
imagD = sin(2*w);

[MagnitudD,FaseD] = Fase(s,realD,imagD);

figure(4)
subplot(1,2,1);
plot(w,MagnitudD,"r");
title("Magnitud inciso d","FontSize",14)
xlabel('w',"FontSize",14);
ylabel('|Hd(jw)|',"FontSize",14);
subplot(1,2,2);
plot(w,FaseD, "r");
title("Fase de inciso d","FontSize",14)
xlabel('w',"FontSize",14);
ylabel('<Hd(jw)',"FontSize",14');
