%authors: Ivan Liljeqvist and Filip Martinsson
%version: 12/04/2015

%get N from user
prompt = 'Please input the number of unknowns 5<= n <= 10: ';
n = input(prompt);

%generate A and b
[A,b]=illposed(n);

%calculate x 
x=A\b;


%alter an element in a with 0.001 - disturb the vector
disturbance=0.001;

%array that will hold the ratios produced in the loop
answers=[];

for j=1:n,
   b_dist=b;
   b_dist(j,1)=b_dist(j,1)+disturbance;
   
   %calculate x when disturbed 
   x_dist=A\b_dist;
   
   %calculate the difference between distrubed and undisturbed x
   x_diff=x_dist-x;
   
   %measure the relative disturbance in input and output
    R_in = norm(b_dist-b)/norm(b);
    R_out = norm(x_dist - x)/norm(x);

    %calculate the ratio between R_in and R_out
    ratio=R_out/R_in; %DET ?R q 
    
    answers(1,j)=ratio;
end

%cond calculated by MATLAB
k=cond(A);

%format the answers as a table

table_contents=[]

%populate the table

for m=1:n,
    table_contents(m,1)=m;
    table_contents(m,2)=disturbance;
    table_contents(m,3)=answers(1,m);
    table_contents(m,4)=k;
end

%make GUI table

table=uitable('data',table_contents,'ColumnName',{'Element disturbed','Disturbance','(R_out/R_in)','cond'})
talbe.Position=[0 0 500 800];




%{

Svar: 
I ett illakonditionerat linj?rt ekvationssystem Ax = b ger sm? st?rningar i 
b upphov till stora ?ndringar i x 
N?r man har l?st det linj?ra ekvationssystemet 
kan man unders?ka om st?rningsk?nslighet f?religger genom att 
1) anv?nda sig av MATLABS cond(A) eller 
2) genom att bilda kvoten q mellan den relativa st?rningen i b och x (ange 2 metoder).

%}



%Use MATLAB's cond to calculate the answer automatically
%k=cond(A);






