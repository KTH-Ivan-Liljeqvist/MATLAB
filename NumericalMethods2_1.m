%authors: Ivan Liljeqvist and Filip Martinsson
%version: 2015-04-16


%start from 0, increase with 1, go to 365
x=[-2:0.1:2];

%use the equation for plotting
y=7*x-20*cos(3*x-5);

%plot the graph
plot(x,y);

hold on

plot(x,0,'.');

hold off


%{
    We plotted the graph and saw that the roots are near -2,-1,0,1.5 and 2.
    We used fzero to find the roots.
    
    There are 5 roots and they are between -2 and 2.
    
%}

roots=[
        fzero('7*x-20*cos(3*x-5)',-2) 
        fzero('7*x-20*cos(3*x-5)',-1) 
        fzero('7*x-20*cos(3*x-5)',0) 
        fzero('7*x-20*cos(3*x-5)',1.5)
        fzero('7*x-20*cos(3*x-5)',2)
        ]