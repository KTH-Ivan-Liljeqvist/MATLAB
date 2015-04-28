
y=[1;-1/3];
L=2.6;
h=0.2;

x=0;
X=x;
Y=y';

while(x<L)
    
    f1=dfunc(x,y);
    f2=dfunc(x+h/2,y+h*f1/2);
    f3=dfunc(x+h/2,y+h*f2/2);
    f4=dfunc(x+h,y+h*f3);
    

    
    y=y+h*(f1+2*f2+2*f3+f4)/6;
    
    x=x+h;
    X=[X;x'];
    Y=[Y;y'];
    
end


Last_Y_BIG_STEP=Y(end,1);

y=[1;-1/3];
L=2.6;
h=0.1;

x=0;
X=x;
Y=y';

while(x<L)
    
    f1=dfunc(x,y);
    f2=dfunc(x+h/2,y+h*f1/2);
    f3=dfunc(x+h/2,y+h*f2/2);
    f4=dfunc(x+h,y+h*f3);
    

    
    y=y+h*(f1+2*f2+2*f3+f4)/6;
    
    x=x+h;
    X=[X;x'];
    Y=[Y;y'];
    
end

Last_Y_SMALL_STEP=Y(end,1);

LAST_Y_DIFFERENCE=abs(Last_Y_SMALL_STEP-Last_Y_BIG_STEP);


plot(X,Y(:,1),X,Y(:,1),'o');

X
Y=Y(:,1)

three_d_y=[0:2*pi/30:2*pi];

X_3D=X*ones(size(three_d_y));
Y_3D=Y*cos(three_d_y);
Z_3D=Y*sin(three_d_y);

surf(X_3D,Y_3D,Z_3D);


%{
    When h = 0.2 the graph is not very smooth.

    It is smoother when h=0.1 because the distance between the datapoints
    is reduced and we have more datapoints.

    The difference in last Y between small and big step is 2.406478945444795e-02
    
%}


