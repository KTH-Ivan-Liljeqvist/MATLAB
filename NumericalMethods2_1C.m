%authors: Beatrice Frock
%modified by Ivan Liljeqvist, Filip Matrinsson,
%version: 2015-04-16

%Newton Raphson

format short e

x=input('give a start value: ');

%calculate root 'exactly'
root=fzero('7*x-20*cos(3*x-5)',x) 

h=1; 
counter=0;

table_contents=[]

%INTE KLART!! FIXA RELATIV FEL
%FR?GA: hur funnkar k:et? ska man r?kna ut roten 'exakt' i f?rv?g och sen
%anv?nda det?

while(abs(h)>1e-4*abs(x) && counter<10000)
    f=7*x-20*cos(3*x-5) 
    fp=7+60*sin(3*x-5)
    
    h=f/fp; %we'll change x this much
    
    oldX=x;
    x=oldX-h %change x
    
    counter=counter+1;
    
    K=abs(x-root)/(abs(oldX-root))^2;
    
    table_contents(counter,1)=counter;
    table_contents(counter,2)=x;
    table_contents(counter,3)=K;
end %while

table=uitable('data',table_contents,'ColumnName',{'Counter','X','K'})
