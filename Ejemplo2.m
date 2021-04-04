disp('f(x)=x^4+3x^3-2')
disp('Tabla')
%le asignamos un valor nulo
syms x;
f = ((x^4)+(3*(x^3))-(2))
%graficamos la funcion
ezplot(f)
%hacemos visibles las divisiones de la tabla
grid on