w = -pi:0.01:pi; % Frecuencia.

H = sqrt((cos(w)).^2 + 0.25.*(sin(w)).^2);

P = atan((-0.5.*sin(w))./(cos(w)));

figure;
plot(w, H);

figure;
plot(w, P);