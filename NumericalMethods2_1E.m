
%authors: Ivan Liljeqvist and Filip Martinsson
%version: 2015-04-16

A = [-2.3 -1 0.1 1.2 2];

for i = A
    x=i;
    korr=1;
    
    counter=0;
    
    while(abs(korr)>5e-4 && counter<100)
        xOld=x;
        x=(7/8)*xOld+(5/14)*cos(3*x-5);
        korr=x-xOld;
        counter=counter+1;
    end
    
    x
end 

%{
    Precis som i f?rra uppgiften konvergerar r?tterna som ?r l?ngst ut och
    roten som ?r i mitten korrekt. Detta ?r eftersom absolutbeloppet av
    derivatan d?r ?r mindre ?n 1.

    Dem tv? andra r?tterna konvergerar ocks?, men inte mot r?tt rot, ?ven fast startv?rdet ?r v?l valt. 
    
%}
