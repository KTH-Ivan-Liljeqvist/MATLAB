
%Authors: Ivan Liljeqvist and Filip Martinsson
%Version: 2015-04-13

x=[-2 -1 2 -1 1 3];
y=[2 5 4 0 0 1];


A=[
    1 -2 2;
    1 -1 5;
    1 2 4;
    1 -1 0;
    1 1 0;
    1 3 1;
    ];

b=[8 26 20 1 1 10]';

%{
 (x-a)^2 + (y-b)^2 = r^2 

 x^2 + y^2 = R^2 + 2ax + 2by-a^2-b^2
 
 c1+c2*x+c3*y = x^2 + y^2

    c1=R^2-a^2-b^2
    c2=2a
    c3=2b
%}

%Find the coefficients for the equation using square method
p=(A'*A)\(A'*b);

plotCircle(p)

hold on 

%plot our initial values
plot(x,y,'o');

%hold off


%Now we will only use the 3 first data points

A=[
    1 -2 2;
    1 -1 5;
    1 2 4;
    ];

b=[8 26 20]';

%Find the coefficients for the equation using square method
p=(A'*A)\(A'*b);

plotCircle(p)

hold off






