
function E=Euler(f,a,b, Y_X0,N) 
%Datos %  - f es la función, almacenada como  
%  una cadena de caracteres de ‘f’
%  - a y b son los extremos derecho e izquierdo del intervalo 
%  - Y_X0 es la condición inicial Y(X0) 
%  M es el número de pasos %  Resultado 
%  - E=[X’ Y’] siendo X el vector de las abscisas e 
%    Y el vector de las ordenadas h=(b-a)/N X=zeros(1,N+1); 1

h=(b-a)/N 
X=zeros(1,N+1);   
Y=zeros(1,N+1);
X=a:h:b; 
Y(1)=Y_X0;
for j=1:N
    Y(j+1)=Y(j)+h*feval(f,X(j),Y(j)) 
end

E=[X' Y'];
  