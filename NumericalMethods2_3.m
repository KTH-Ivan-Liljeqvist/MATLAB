


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
    start_x = [starting_values(i,1) starting_values(i,2)]'; % This is just an example, ive tried 100's of start  values
   
    counter=0;
    x = start_x; 
    
    dx = [1 1]';
    error=1e-6;
    
    Xs=[];
    Ys=[];
    
    while norm(dx)>error & counter<30
        
    f = [0.4*x(1).^2+x(2).^2-x(1).*x(2)-10
        (((x(1)-4).^2)/a.^2) + (((x(2)-2).^2)/b.^2)-1];
    j = [0.8*x(1)-x(2) 2*x(2)-x(1) % Jacobian
        2*((x(1)-4)/a.^2) 2*((x(2)-2)/b.^2)];
        dx = -j\f;
        x=x+dx;
        counter=counter+1;
        %disp([x' dx']);

        Xs(counter+1,1)=x(1);
        Ys(counter+1,1)=x(2);
        
    end
    
    %plot the coordinates we've found
    plot(x(1),x(2),'o')
    
    hold on
    
    start_x
    table(Xs,Ys)

end



