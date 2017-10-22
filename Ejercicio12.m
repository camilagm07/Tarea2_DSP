w0 = pi/3;
a1 = 2*cos(w0);
a2 = 1;
b0 = 1;

%n = (0:1:500);

for n = 3:1:501
  if (n == 3)
    x(n) = 1;
  else
    x(n) = 0;
  endif
  
  if (n == 3)
    y(n-1) = 1;
    y(n-2) = 1;
  endif
    y(n) = -a1*y(n-1)-a2*y(n-2)+b0*x(n);
endfor

figure;
hold on;
for n = 3:1:100;
  stem(n, y(n));
endfor
hold off;