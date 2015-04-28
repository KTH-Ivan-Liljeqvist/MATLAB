function f=dfunc(x,y)

a=y(2);
b=y(1)/9 - (pi*y(1)*exp((x/3))) * (2*y(2)*sin(pi*x)+pi*y(1)*cos(pi*x));

f=[a;b];
