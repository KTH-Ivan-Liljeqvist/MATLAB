function f=xned(start_angle,draw_graph)

    XY0=[0 19*cos(start_angle) 1.5 19*sin(start_angle)]';
    
    lastX=0;
    h=0.02;
    
    RESULT_X=[];
    RESULT_Y=[];
    
    while(XY0(3)>0)

        f1=varp(XY0);
        f2=varp(XY0+h*f1/2);
        f3=varp(XY0+h*f2/2);
        f4=varp(XY0+h*f3);

        XY0=XY0+h*(f1+2*f2+2*f3+f4)/6;
        
        RESULT_X=[RESULT_X;XY0(1)];
        RESULT_Y=[RESULT_Y;XY0(3)];

        lastX=XY0(1);

        
    end
    
    if(draw_graph)
        plot(RESULT_X,RESULT_Y);
    end
    
f=20-lastX;

 
