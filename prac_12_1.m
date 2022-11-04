%% GUIA LABORATORIO NRO 12
% METODOS NUMERICOS
%Alexis Bruce Barrios Echalar
%% 
% RESOLUCION DE ECUACIONES LINEALES

%% Ejercicio 1

p=[1,-9,-1,5];
roots(p) 

%% Ejercicio 2

fun = @(x) x + log(x/3); 
fzero(fun,1) 

%fzero(@mifuncion,1) 
%% Ejercicio 3

%valor singular de la matriz
A = [1  0  1; -1  -2  0; 0  1  -1] 
[U, S, D] = sdv(A) 

%valor singular de la matriz
A = [1  2; 3  4; 5 6;  7  8] 
[U, S, V] = svd(A) 
