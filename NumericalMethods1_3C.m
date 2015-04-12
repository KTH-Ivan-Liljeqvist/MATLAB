%authors - Ivan Liljeqvist and Filip Martinsson
%version - 2015-04-12

%make a matrix from the equation

A=[1 cos(2*pi/365) sin(2*pi/365);
    1 cos(64*pi/365) sin(64*pi/365);
    1 cos(120*pi/365) sin(120*pi/365);
    1 cos(91*2*pi/365) sin(91*2*pi/365);
    1 cos(121*2*pi/365) sin(121*2*pi/365);
    1 cos(152*2*pi/365) sin(152*2*pi/365);
    1 cos(182*2*pi/365) sin(182*2*pi/365);
    1 cos(213*2*pi/365) sin(213*2*pi/365);
    1 cos(244*2*pi/365) sin(244*2*pi/365);
    1 cos(274*2*pi/365) sin(274*2*pi/365);
    1 cos(305*2*pi/365) sin(305*2*pi/365);
    1 cos(335*2*pi/365) sin(335*2*pi/365);];

b=[6.1 8.0 10.4 13.2 15.8 18.0 18.4 16.6 14.1 11.4 8.7 6.6]';

day_numbers=[1 32 60 91 121 152 182 213 244 274 305 335];

%find coefficients
p=A\b;

%start from 0, increase with 1, go to 365
x=[0:1:365];

w=2*pi/365;

%use the equation for plotting
y=p(1,1)+p(2,1)*cos(w*x)+p(3,1)*sin(w*x);

%plot the graph
plot(x,y);
hold on
%plot our start values
plot(day_numbers,b,'o');
hold off

residualVector=A*p-b;

%plot(day_numbers,residualVector)

error_square_sum=residualVector'*residualVector;

%Now we'll calculate the number of hours the sun is up on Mid-Summer
MID_SUMMER_DAY_NUMBER=171;

NUM_OF_HOURS_MID_SUMMER=interp1(x,y, MID_SUMMER_DAY_NUMBER)
MAX_HOURS=max(y)


