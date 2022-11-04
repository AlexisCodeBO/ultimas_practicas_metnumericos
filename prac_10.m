%% GUIA DE LABORATORIO NRO. 10
%% INTEGRACION NUMERICA P.III
% Alexis Barrios Echalar

%% 1.- METODO TRAPEZOIDES
%Se definen el valor de funcion, nro de intervalos y error relativo. Luego
%se define el dominio en n subintervalos, se calcula los valores y en base
%a la funcion. Con trapz posteriormente se calcula la integral por trapezoides
%aproximada. Para terminar se aplica la formula de error absoluto: funcion 
%menos trapz. Luego se calcula el error relativo: error/valor, se muestran los datos. Se
%iterara con n al doble y nuevo error absoluto.

iexacto=log(2);
n=2;
error1=0;
for i=1:10
x=linspace(1,2,n+1);
y=1./x;
iaprox=trapz(x,y);
error=iexacto-iaprox;
ratio=error1/iexacto;
disp(['n=' num2str(n) ', iaprox=' num2str(iaprox,6) ',error='
num2str(error,6) ',ratio=' num2str(ratio,6)])
n=2*n;
error1=error;
end