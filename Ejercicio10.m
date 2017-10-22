w = (-pi:0.0001:pi)';

H = sqrt(1.9025-1.9*cos(6*w));
HI = 1/H;

figure;
plot(w, H);
figure;
plot(w, HI);