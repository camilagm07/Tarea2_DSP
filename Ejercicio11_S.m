% Ejercicio 11
% Obtencion de h(n) a partir de x(n) y y(n) usando convolucion.

% Secuencia entrada x(n) y salida y(n).
x = [1 1 2];
y = [1 -1 3 -1 6];

% Longitud de h(n): Nh.
Nx = length(x); % Longitud de x(n).
Ny = length(y); % Longitud de y(n).
Nh = Ny-Nx+1;

% Condiciones iniciales.
h1 = 0;
h2 = 0;

for n = (1:1:Nh) % Algoritmo recursivo de calculo.
  h(n) = ( y(n) - h1*x(2) - h2*x(3) )/x(1);
  
  % Cambio de condiciones.
  h2 = h1;
  h1 = h(n);
  endfor

% Graficacion.
% Se corren a n+1 para que empiece en n = 0 la graficacion.

figure;
subplot(2,2,1);
stem(n = 0:1:(Nx-1), x(n+1), 'r.');
grid;
axis([-1,3,0,3]);
xlabel('n');
ylabel('x(n)');

subplot(2,2,2);
stem(n = 0:1:(Ny-1), y(n+1), 'g.');
grid;
axis([-1,5,-2,7]);
xlabel('n');
ylabel('y(n)');

subplot(2,2,3);
stem(n = 0:1:(Nh-1), h(n+1), 'b.');
grid;
axis([-1,3,-3,4]);
xlabel('n');
ylabel('h(n)');

subplot(2,2,4);
hold on;
stem(n = 0:1:(Nx-1), x(n+1), 'r.');
stem(n = 0:1:(Ny-1), y(n+1), 'g.');
stem(n = 0:1:(Nh-1), h(n+1), 'b.');
hold off;
grid;
axis([-1,5,-3,11]);
xlabel('n');
legend('x(n)','y(n)','h(n)');
