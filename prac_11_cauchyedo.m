%% GUIA LABORATORIO NRO 11
% METODOS NUMERICOS
%% 
% RESOLUCION DE PROBLEMA DE CAUCHY PARA ECUACIONES DIFERENCIALES ORDINARIAS
% DE PRIMER ORDEN

%% Ejercicio 1

%Se comienza por definir una función anónima que represente el segundo 
%miembro de la ecuación f(t, y): 
f = @(t,y) 5*y;

%Se calcula y dibuja la solución numérica: 
ode45(f, [0,1], 1) 

%Para comparar con la gráfica de la solución exacta, se dibuja en la misma 
%ventana, sin borrar la anterior: 
hold on 
t = linspace(0,1);
plot(t, exp(5*t), 'r') 
shg

%% Ejercicio 2

f = @(t,y) t.*exp(t/y);
[t,y] = ode45(f, [0,1], 1);
v = interp1(t, y, 0.632) 

%% Ejercicio 3

f = @(t,y) -2*y;
t = 0:0.1:2;
[t,y] = ode45(f, t, 10);
plot(t, y, 'LineWidth', 1.1)
hold on
plot(t, 10*exp(-2*t), 'r.')
legend('Sol. aproximada', 'Sol. exacta')
shg 

%% Ejercicio 4

f = @(t,y) 0.5*(10*t-log(y+1));
ode45(f, [0,1], 1) 
grid on
shg

%% Ejercicio 5

[ts,ys] = ode45(f, [0,1], 1);
fun = @(t) interp1(ts, ys, t) - 1.5;
fzero(fun, 0.5)







 




