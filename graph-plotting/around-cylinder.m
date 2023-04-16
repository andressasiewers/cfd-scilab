function psi=stream(x, y)
U = 1;
R = 1.15;
a = R - 1; //0.15
W = ((3 * %pi) / 2);
//G =-5; // intensidade do vórtice
G = sin(W) * 4 * %pi * U * (R - a);
V = (R^2) * U; // intensidade do dipolo
psi= U * y - V * y / (x^2 + y^2) - G * (log((x^2 + y^2) ^ (1/2) - a)) / (2 * %pi);
endfunction
// vetores x e y
xdata=linspace(-5,5,100);
ydata=linspace(-5,5,100);
a=gca();
a.isoview="on";
a.x_location="origin";
a.y_location="origin";
//traçado do gráfico
contour(xdata, ydata, stream,-1.5: 0.5:2)