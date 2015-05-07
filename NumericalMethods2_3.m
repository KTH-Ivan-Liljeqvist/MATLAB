%authors Ivan Liljeqvist and Filip Martinsson


%NORMAL ELLIPSE
x_step =-pi:pi/100:pi;
a=4;b=6; %radius
xc=4;yc=2; %center

%build and plot the grpah
sin_part=yc+b*sin(x_step);
cos_part=xc+a*cos(x_step); 

plot(cos_part,sin_part,xc,yc,'x')

%make grid
grid;
hold on
% We started with x^2+y^2-xy = 10. Make it polar:
y = sqrt(10./((0.4.*cos(x_step).^2)+(sin(x_step).^2)-(cos(x_step).*sin(x_step))));
%take polar and draw it
polar(x_step,y)

starting_values=[-4 -4; 7 7; -4 4; 7 2];

for i=1:4
    start_x = [starting_values(i,1) starting_values(i,2)]'; 
   
    counter=0;
    x = start_x; 
    
    dx = [1 1]';
    error=1e-6;
    
    Xs=[];
    Ys=[];
    Dxs=[]
    Dys=[]
    
    while norm(dx)>error & counter<30
        
    functions = [0.4*x(1).^2+x(2).^2-x(1).*x(2)-10
        (((x(1)-4).^2)/a.^2) + (((x(2)-2).^2)/b.^2)-1];
    jacobian = [0.8*x(1)-x(2) 2*x(2)-x(1) 
        2*((x(1)-4)/a.^2) 2*((x(2)-2)/b.^2)];
    
        counter=counter+1;
        
        dx = -jacobian\functions;
        x=x+dx;
        
        Xs(counter,1)=x(1);
        Ys(counter,1)=x(2);
        Dxs(counter,1)=dx(1);
        Dys(counter,1)=dx(2);
        
    end
    
    %plot the coordinates we've found
    plot(x(1),x(2),'o')
    

end



