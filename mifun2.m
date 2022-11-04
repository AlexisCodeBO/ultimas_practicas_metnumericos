%Calculo de la integral
q=integral(@mifun,0,8)

%Grafica
x=linspace(0,8);
y=mifun(x);
area(x,y,'FaceColor', [0.1,0.8,0])
title(['Integral=', num2str(q,'%12.5f')], 'FontSize', 14);