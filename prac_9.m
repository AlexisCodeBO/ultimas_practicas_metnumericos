%% GUIA LABORATORIO NRO. 9 P.II
%% METODOS NUMERICOS
%Alexis Bruce Barrios Echalar

%% 1.-FUNCION Y AREA DE LA FUNCION

%Funcion
f = @(x) sin(4*log(x));
x1 = linspace(0.95,2.3);
axis([-0.5,2.7,-0.5,1.5])
hold on
y1 = f(x1);
plot(x1,y1, 'r')
plot([-5,5],  [0,  0],  'k',  'LineWidth',  1) 
plot([1,  1],  [-5,5],  'k',  'LineWidth',  1) 
grid on 
hold off

%Integracion
A = integral(f, 1, 2)
%Grafica
area(x1,y1);
title(['1 Area delimitada=',num2str(A,'%12.5f')], 'FontSize',14); 

%% 2.-AREA DE CURVA DELIMITADA

%Funcion
f = @(x) 1./(x.*(1-log(x)));
x1 = linspace(2.95,4.3);
axis([-3.4,4.8,-5,1])
hold on
y1 = f(x1);
plot(x1,y1,'r')
plot([-5,5],  [0,  0],  'k',  'LineWidth',  1) 
plot([2.95,  2.95],  [-5,5],  'k',  'LineWidth',  1) 
grid on
hold off

%Integracion
A = integral(f, 3, 4)

%Grafica
area(x1,y1);
title(['2 Area delimitada=',num2str(A,'%12.5f')], 'FontSize',14); 
%% 3.- AREA DE CURVA LIMITADA

%Funcion
f = @(x) sin(4.*log(x+1));
x1 = linspace(0,9.3);
hold on
y1 = f(x1);
plot(x1,y1, 'r')
grid on
hold off

%Integracion
A = integral(f, 0, 9)

%Grafica
area(x1,y1);
title(['3 Area delimitada=',num2str(A,'%12.5f')], 'FontSize',14); 
%% 4.- AREA DE CURVA LIMITADA

%Funcion
f = @(x) x.*sin(6.*log10(x./2));
x1 = linspace(0.95,10.3);
hold on
y1 = f(x1);
plot(x1,y1, 'r')
grid on
hold off

%Integracion
A = integral(f, 1, 10)

%Grafica
area(x1,y1);
title(['4 Area delimitada=',num2str(A,'%12.5f')], 'FontSize',14); 
%% 5.- AREA DE CURVA LIMITADA
%CURVA 1
%Funcion
f = @(x) x.^2-4;
x1 = linspace(0.2,8);
hold on
y1 = f(x1);
plot(x1,y1, 'r')
grid on
hold off

%Integracion
A = integral(f, 0.2, 8)
%Grafica
area(x1,y1);
title(['Area delimitada=',num2str(A,'%12.5f')], 'FontSize',14);
%% 

%CURVA 2
%Funcion
f = @(x) 2.*x-0.8.*x.^2+3;
x1 = linspace(0.15,7.78);
y1 = f(x1);
plot(x1,y1)
grid on

%Integracion
A = integral(f, 0.2,7.75 )
%Grafica
area(x1,y1);
title(['Area delimitada=',num2str(A,'%12.5f')], 'FontSize',14);