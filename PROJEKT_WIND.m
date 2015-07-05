
counter=0;

left=pi/2.5;
right=pi/4.8;

winning_angles=[];

winning_res_vector1=[];
winning_res_vector2=[];

disp('BEFORE LOOP');

while(counter<2)
 
    disp('OUTER?');
    middle_angle=0;

    old_diff=0;
    Pn=abs(left-right);
    [dist_from_x,result_vector]=xned_wind(left,false);
        ned_left=dist_from_x
        
        [dist_from_x,result_vector]=xned_wind(right,false);
        ned_right=dist_from_x
        
    %OBS changing agnles at the end

    while(abs(left-right)>0.0001)

        [dist_from_x,~]=xned_wind(left,false);
        ned_left=dist_from_x;
        
        [dist_from_x,~]=xned_wind(right,false);
        ned_right=dist_from_x;
  
        if(ned_left*ned_right<0)
            middle_angle=(right+left)/2;
            
            [dist_from_x,~]=xned_wind(middle_angle,false);
            xned_res=dist_from_x;
  
            if(xned_res*ned_right<0)
                left=middle_angle;
            elseif(xned_res*ned_left<0)
                right=middle_angle;
            end
        end
    end
    
     win_angle=(left+right)/2;
     
     [dist_from_x,result_vector]=xned_wind(win_angle,false);
     hold on
     
     winning_angles=[winning_angles;win_angle];
     
     if(counter==0)
        winning_res_vector1=result_vector;
     else
         winning_res_vector2=result_vector;
     end
     
     
     
     
     counter=counter+1;
     
    left=-pi/30;
    right=pi/6;
     
end

winning_angles

winning_res_vector1;
disp('------');
winning_res_vector2;


y_each_meter1=[];
y_each_meter2=[];

time1=[];
time2=[];


for i=1:1:20
    %use Hermite interpolation
    y_each_meter1=[y_each_meter1;pchip(winning_res_vector1(:,[2]),winning_res_vector1(:,[3]),i)];
    time1=[time1;pchip(winning_res_vector1(:,[2]),winning_res_vector1(:,[1]),i)];
    
    y_each_meter2=[y_each_meter2;pchip(winning_res_vector2(:,[2]),winning_res_vector2(:,[3]),i)];
    time2=[time2;pchip(winning_res_vector2(:,[2]),winning_res_vector2(:,[1]),i)];
    
   
end

table([1:1:20]',y_each_meter1,time1);
table([1:1:20]',y_each_meter2,time2);

x = linspace(0,20,200);
plot([1:1:20]',y_each_meter1);
plot([1:1:20]',y_each_meter2);
plot([1:1:20]',y_each_meter1,'o');
plot([1:1:20]',y_each_meter2,'o');

