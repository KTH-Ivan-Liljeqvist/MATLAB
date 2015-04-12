%authors - Ivan Liljeqvist and Filip Martinsson
%version - 2015-04-12

%save starting values in x and y
x=[91 121 152 182 213 244];
y=[13.2 15.8 18.0 18.4 16.6 14.1];

%make the matrix that will correspond to a quadratic polymone

A= [91^5 91^4 91^3 91^2 91 1;
    121^5 121^4 121^3 121^2 121 1;
    152^5 152^4 152^3 152^2 152 1;
    182^5 182^4 182^3 182^2 182 1;
    213^5 213^4 213^3 213^2 213 1;
    244^5 244^4 244^3 244^2 244 1;
    ];

%y values that we know from the beginning
b=y';

%Find the coefficients for the quadratic equation
p=(A'*A)\(A'*b)

%plot everything
%interval in the graph
x1 = linspace(80,264);
%fill in the y values 
y1 = polyval(p,x1);

%plot the line
plot(x1,y1)

hold on

%plot our start values
plot(x,y,'o');
hold off




