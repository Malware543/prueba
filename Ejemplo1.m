disp('f(x)=x^4+3x^3-2')
disp('Tabla')
valorx=-1.5
vlory=0;
for x=1:7
    vxt(1,x)=[valorx];
    valory=(valorx^4)+(3*(valorx^3))-(2);
    vyt(1,x)=[valory];
    valorx=valorx+.5;
end

h=[vxt',vyt']