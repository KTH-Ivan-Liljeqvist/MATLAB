%authors - Ivan Liljeqvist and Filip Martinsson
%version - 2015-04-12

%save starting values in x and y
x=[91 121 152 182 213 244];
y=[13.2 15.8 18.0 18.4 16.6 14.1];

%make the matrix that will correspond to a quadratic polymone

A= [91^2 91 1;
    121^2 121 1;
    152^2 152 1;
    182^2 182 1;
    213^2 213 1;
    244^2 244 1;
    ];

%y values that we know from the beginning
b=[13.2 15.8 18.0 18.4 16.6 14.1]';

%Find the coefficients for the quadratic equation
p=(A'*A)\(A'*b);

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

%Now we'll calculate the number of hours the sun is up on Mid-Summer
MID_SUMMER_DAY_NUMBER=171;

NUM_OF_HOURS_MID_SUMMER=interp1(x1,y1, MID_SUMMER_DAY_NUMBER+1);
MAX_HOURS=max(y1);




