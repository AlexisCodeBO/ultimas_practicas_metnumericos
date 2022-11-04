  function biseccion(f,a,b,tol)
  f=inline(f); 
  % inline convierte a f en una funci�n que depende de x
  n=ceil(log((b-a)/tol)/log(2)); 
  % ceil toma el entero mayor cercano obtenido por la cota de error del m�todo 
 fprintf('\n it. a b x f(x) \n') 
 for i=1:n
     x=(a+b)/2; 
     fprintf('%3.0f %10.10f %10.10f %10.10f %10.10f \n',i,a,b,x,f(x))
     % muestra en cada paso los valores de la iteraci�n, de a, de b, de x y de f(x) 
     % la instrucci�n %10.10f significa dejar 10 espacios y colocar el n�mero con 10 decimales 
     % la instrucci�n \n se emplea para cambiar a l�nea nueva 
     if f(a)*f(x)<0 
         b=x;
     else
         a=x;
     end
 end
 fprintf('\n La aproximaci�n de la ra�z es: %3.10f \n\n',x
