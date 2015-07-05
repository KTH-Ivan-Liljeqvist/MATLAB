function [ dist_from_lastx, result_vector] =xned_wind(start_angle,draw_graph)

    speed=19;
    start_height=1.4;
    
    XY0=[0 speed*cos(start_angle) start_height speed*sin(start_angle)]';
    
    lastX=0;
    h=0.01;
    
    RESULT_X=[];
    RESULT_Y=[];
    
    time=0;
    oldX=0;
    oldY=start_height;
    
    result_vector=[];
    
    while(XY0(3)>0)
            
        f1=varp_wind(XY0);
        f2=varp_wind(XY0+h*f1/2);
        f3=varp_wind(XY0+h*f2/2);
        f4=varp_wind(XY0+h*f3);

        XY0=XY0+h*(f1+2*f2+2*f3+f4)/6;
        
        RESULT_X=[RESULT_X;XY0(1)];
        RESULT_Y=[RESULT_Y;XY0(3)];

        lastX=XY0(1);
        
        x_diff=XY0(1)-oldX;
        y_diff=XY0(3)-oldY;
        oldX=XY0(1);
        oldY=XY0(3);
        
        length_of_chunk=sqrt(abs(x_diff)^2+abs(y_diff)^2);

        time=time+length_of_chunk/(sqrt(XY0(4)^2+XY0(2)^2));
         
        v=[time XY0(1) XY0(3) XY0(2) XY0(4)];
        result_vector=[result_vector;v];
         
    end
    
    if(draw_graph)
        plot(RESULT_X,RESULT_Y);
    end

%disp('TIME WHEN WE HIT THE GROUND');
time;

%result_vector
dist_from_lastx=lastX-20;

end
 
