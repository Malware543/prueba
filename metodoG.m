disp('f(x)=x^4+3x^3-2')
disp('Tabla')
%%valor por defecto 1.5
inicioInter =  input('Inicio de intervalo:');
finInter = input('Fin del intervalo:');
valorea = input('Error absoluto deseado:');
contador = 0;
valorx = inicioInter;
vlory=0;

while (finInter >= inicioInter)
    contador = contador+1;
    inicioInter = inicioInter + 0.5;
end

for x=1:contador
    vxt(1,x)=[valorx];
    valory=(valorx^4)+(3*(valorx^3))-(2);
    vyt(1,x)=[valory];
    if valory<0
        xr = valorx;
    end
    valorx=valorx+.5;
end

h=[vxt',vyt']

ea = 100;
int = 1;
xa = 0;
xb = xr+.5;
% fprintf('xr = \n\t%5.2f\n',xr);
disp('Tabla');
i=0;
while (i<=100) && (ea>=valorea);
    
    fxa = (xa^4)+(3*(xa^3))-(2);
    fxb = (xb^4)+(3*(xb^3))-(2);
    fxr = (xr^4)+(3*(xr^3))-(2);
    ea = ((xr-xa)/xr)*100;
    if(xa==0);
        ea=-1.0;
    end

    fprintf('%5.2f\t%5.2f\t%5.2f\t%5.2f\t%5.2f\t%5.2f\t%5.2f\t%5.2f\t\n',int,xa,xb,xr,fxa,fxb,fxr,ea);
    com = fxa*fxr;
    if (com > 0);
        int = int+1;
        xa = xr;
%         fprintf('xb = \n\t%5.4f\n',xb);
        xr = (xa+xb)/2;
    else 
        int = int+1;
%         fprintf('xa = \n\t%5.4f\n',xa);
        xb = xr;
        xr = (xa+xb)/2;
    end
    i = i+1;
end