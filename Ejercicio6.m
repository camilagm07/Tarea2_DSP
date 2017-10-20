w = -pi:0.01:pi; % Frecuencia.

A = 1+cos(w)+cos(2*w)+cos(3*w)+cos(4*w)+cos(5*w)+cos(6*w)+cos(7*w)+cos(8*w);
B = sin(w)+sin(2*w)+sin(3*w)+sin(4*w)+sin(5*w)+sin(6*w)+sin(7*w)+sin(8*w);
H = sqrt((A).^2 + (B).^2);

P = 1 - 36 .*w;

figure;
plot(w, H);

figure;
plot(w, P);