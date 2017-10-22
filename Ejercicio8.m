w = -pi:0.0001:pi;

a = 0.9;

H = sqrt(2-2.*cos(8.*w))./sqrt(1 - 2*a .*cos(8.*w) + a.^2);

plot(w, H);