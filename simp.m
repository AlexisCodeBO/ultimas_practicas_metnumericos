%% FUNCION SIMPSON
%%PRACTICA NRO 10 
%Alexis Bruce Barrios Echalar


function q=simp(x,y);
%length calcula el mayor valor de dimension de x, valores de x para
%reemplazar en la funcion. Luego se verifica en base a n subintervalos si
%toma un valor par o impar. La distancia h entre 2 terminos es calculada.
%La formula de simpson es 
%%
% 
% $$\int_{b}^{a} f(x)= {\frac{(b-a)}{(3*n)}} \{f(x0)+4f(x1)+2f(x2)+4f(x3)+...+2f(xn-2)+4f(xn-1)+f(xn)}$$
% 
%Para formular la ecuaciones se maneja un vector de coeficientes para
%alternar de 4 a 2 asi sucesivamente, mantener los 1 a los extremos y luego
%se pasan q vector coeficiente y como la funcion , finalmente  h/3 . 

n=length(x)-1;
if (n/2)~=floor(n/2)
disp('n tiene que ser par');
pause;
end
h=x(2)-x(1);
v=2*ones(n+1,1);
v2=2*ones(n/2,1);
v(2:2:n)=v(2:2:n)+v2;
v(1)=1;v(n+1)=1;
q=(h/3)*y*v;
end
