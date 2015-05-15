function f=varp_speed_func(x,y)

u=y(1);
v=y(2);

%dudt=-0.02*u*sqrt(u^2+v^2);
dvdt=-9.81-0.065*v*sqrt(u^2+v^2);


f=[v;dvdt];
