
ANGLES=[];
X_FINISH=[];

TIME=[];
HEIGHT=[];
TIME_HEIGHT=[];

oldX=0;
oldY=1.5;
length_of_curve=0;
time=0;


for start_angle=0.0:pi/1000:1.5
    
    

    XY0=[0 19*cos(start_angle) 1.5 19*sin(start_angle)]';

    RESULT_X=XY0(1);
    RESULT_Y=XY0(3);

    L=20.0;
    h=0.02;

    %x=0;
    %X=x;
   % Y=y';
   
   

    while(XY0(3)>0)

        f1=varp(XY0);
        f2=varp(XY0+h*f1/2);
        f3=varp(XY0+h*f2/2);
        f4=varp(XY0+h*f3);

        XY0=XY0+h*(f1+2*f2+2*f3+f4)/6;

        RESULT_X=[RESULT_X;XY0(1)];
        RESULT_Y=[RESULT_Y;XY0(3)];

        x_diff=XY0(1)-oldX;
        y_diff=XY0(3)-oldY;
        
        length_of_chunk=sqrt(abs(x_diff)^2+abs(y_diff)^2);
        length_of_curve=length_of_curve+length_of_chunk;
        
        time=time+length_of_chunk/XY0(4); %S/v
        XY0(1)
        if(mod(XY0(1),1)==0)
             TIME=[TIME;time];
             HEIGHT=[HEIGHT;XY0(3)];
             
             x=32324234
        end
        
    end

  
    
    ANGLES=[ANGLES;start_angle];
    X_FINISH=[X_FINISH;abs(20-XY0(1))];

end

plot(RESULT_X,RESULT_Y);

set(gca,'Xtick',0:0.1:1.5)

TIME
HEIGHT
TIME_HEIGHT=[TIME' HEIGHT'];

uitable('data',TIME_HEIGHT,'ColumnName',{'Time','Height'})

TIME_HEIGHT

%plot(RESULT_X,RESULT_Y(:,1));
%hold on
%plot(X_X,Y_X(:,2));
%axis([0 10 -10 20]);



