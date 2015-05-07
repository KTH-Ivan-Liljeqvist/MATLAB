%authors Ivan Liljeqvist and Filip Martinsson

%start from 0, increase with 1, go to 365
x=[-1:0.1:1];

%use the equation for plotting
y=sqrt(x+2);

%plot the graph
plot(x,y);

ylim([0 2]);

%{
 
    A a)

    Vi r?knade ut arean som en triangel och rektangel.
    Area triangel = ca 0.72
    Area rektangel = 2
    ca 2.72 tillsammans

    A b) 

    ((x+2)^1.5)/1.5 = 2.7974349484
    
    

%}



h=1/8;

%calculate one more than we need so we can use it to extrapolate the second
%last value
iterations=6;

i=1;

Ths=[];
Errors=[];
ExtapolatedValues=[];
ExtrapolatedErrors=[];

Hs=[];


while(i<=iterations)
    
    %calculate an array with x-values based on step size h
    x_values=[-1:h:1];
    y_values=[];

    counter=1;
    format long e

    %find y-values that correspond to the  x-values
    for x = x_values
        y_values(counter,1)=sqrt(x+2);

        counter=counter+1;
    end


    %caculate with Trapetsmetoden
    Ths(i,1)=h*( sum(y_values) - (y_values(1,1) + y_values(numel(y_values),1))/2  );
    Errors(i,1)=abs(2.7974349484-Ths(i,1));

    Hs(i,1)=h;
    
    h=h/2;
    i=i+1;

end

i=2;


while(i<iterations)
     %we use    F'=F2 + (F2-F1)/Q^P-1
     %Q = 2 P=2 f?r att felet blir 4 ganger mindre varje gang
     %och H minskar med faktorn tva. 2^X=4. da ar X=2 och X=P
     ExtapolatedValues(i,1)=Ths(i,1)+(Ths(i,1)-Ths(i-1,1))/(2^2 - 1);
     
     ExtrapolatedErrors(i,1)=abs(2.7974349484-ExtapolatedValues(i,1));
     
     i=i+1;
end

%{
    
    P pa 'vanliga' varden ar 2.

    N?r man extrapolerar f?rsvinner den ledande termen
    i 'felserien' och n?sta potens i serien ?r 4.
    Alltsa ?r P=4.
%}


%plot the graph

figure
loglog(Hs,Errors);

hold on

Hs(numel(Hs))=[]
loglog(Hs,ExtrapolatedErrors);

Hs
ExtrapolatedErrors
ExtapolatedValues

hold on

x=[0.01:0.01:1]
y=x.^2
loglog(x,y,'--')

hold on

x=[0.01:0.01:1]
y=x.^4
loglog(x,y,'--')

legend('Normal','Extrapolated','slope 2','slope 4');
xlabel('Step length');
ylabel('Error');
title('Step length vs Error')







