% Ejercicio 8
% Filtro peine a partir de hendidura.

w = -pi:0.0001:pi; % Frecuencia.
a = 0.9; % Radio de los polos.

% Funcion |H(w)|.
H = sqrt(2-2 .*cos(w))./sqrt(1-2*a .*cos(w) + a^2);

% Funcion |H8(w)|.
H8 = sqrt(2-2 .*cos(8*w))./sqrt(1-2*a .*cos(8*w) + a^2);

% Graficas.
figure;
subplot(1,2,1);
plot(w, H);
title('Respuesta en magnitud del filtro hendidura')
xlabel('w');
ylabel('|H(w)|');
subplot(1,2,2);
plot(w, H8);
title('Respuesta en magnitud del filtro peine')
xlabel('w');
ylabel('|H8(w)|');




