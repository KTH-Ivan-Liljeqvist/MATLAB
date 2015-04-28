%author: Gerd Eriksson
%Modified by Ivan Liljeqvist and Filip Matrinsson
%version: 2015-04-16


%Fix-point interation
%I SOLVED IT BY HAND ALSO! It should be presented by hand.

x=-1;
korr=1;

while(abs(korr)>5e-4)
    xOld=x;
    x=(7/8)*xOld+(5/14)*cos(3*x-5)
    korr=x-xOld;
end

%start from 0, increase with 1, go to 365
x=[-3:0.1:3];

%use the equation for plotting
y=abs(7/8-(15/14)*sin(3*x-5));

%plot the graph
plot(x,y);
hold on

plot(x,1,'.');

hold off

%{
    Den kan kovergera mot r?tterna runt -2, 0 och 2.
    Eftersom fix-punkts iteration bara konvergerar mot roten d?r 
    absolutbelopppet av derivatan runt roten ?r mindre ?n 1.

    F'(x) = 7/8-(15/14)*sin(3*x-5)

%}







