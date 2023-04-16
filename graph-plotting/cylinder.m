function psi=stream(x, y)
R = 1.15; // raio definido conforme tabela em m
G = -5; // intensidade do vórtice
U = 1; // intensidade do escoamento em m/s
V = (R^2) * U; // intensidade do dipolo
psi= U * y - V * y / (x^2 + y^2);
endfunction
// vetores x e y
xdata=linspace(-5, 5, 100);
ydata=linspace(-5, 5, 100);
a=gca();
a.isoview="on";
a.x_location="origin";
a.y_location="origin";
// traçado do gráfico
contour(xdata, ydata, stream,-1.5: 0.5:2)