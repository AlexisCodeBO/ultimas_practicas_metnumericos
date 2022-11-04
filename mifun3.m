


%Grafico
f = @(x) sin(4*log(x));
x1 = linspace(0.95,2.3);
y1 = f(x1);
plot(x1,y1)
grid on

%Integracion
A = integral(f, 1, 2)
