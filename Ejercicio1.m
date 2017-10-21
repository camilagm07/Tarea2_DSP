%Ejercicio 1

f = [-1:0.004:1];
w = 3.14*f;

% Inciso A

magA = abs(sin(w/2));

s = size(w);
for n =1 : s(2)
  if w(n) < 0
    pha(n) = -0.5*(w(n)+3.14);
  end
  if w(n) == 0
    pha(n) = 0;
  end
  if w(n) > 0
    pha(n) = -0.5*(w(n)-3.14);
  end
end

figure(1)
subplot(1,2,1);
plot(w,magA);
title("Magnitud inciso a")
xlabel('w');
ylabel('|Ha(jw)|');
subplot(1,2,2);
plot(w,pha,"r");
title("Fase de inciso a")
xlabel('w');
ylabel('<Ha(jw)');

% Inciso B

magB = abs(sin(w));

s = size(w);
for n =1 : s(2)
  if w(n) < 0
    phaB(n) = -(w(n)+3.14);
  end
  if w(n) == 0
    phaB(n) = 0;
  end
  if w(n) > 0
    phaB(n) = -(w(n)-3.14);
  end
end

figure(2)
subplot(1,2,1);
plot(w,magB,"g");
title("Magnitud inciso b")
xlabel('w');
ylabel('|Hb(jw)|');
subplot(1,2,2);
plot(w,phaB,"m");
title("Fase de inciso b")
xlabel('w');
ylabel('<Hb(jw)');

% Inciso C

magC = abs(cos(w));
phaC = -w;

figure(3)
subplot(1,2,1);
plot(w,magC,"m");
title("Magnitud inciso c")
xlabel('w');
ylabel('|Hc(jw)|');
subplot(1,2,2);
plot(w,phaC,"c");
title("Fase de inciso c")
xlabel('w');
ylabel('<Hc(jw)');

% Inciso D

magD = abs(2-exp(-2*w*j));
phaD = -2*w;

figure(4)
subplot(1,2,1);
plot(w,magD,"r");
title("Magnitud inciso d")
xlabel('w');
ylabel('|Hd(jw)|');
subplot(1,2,2);
plot(w,phaD, "g");
title("Fase de inciso d")
xlabel('w');
ylabel('<Hd(jw)');
