
counter=0;

left=pi/7;
right=pi/10;

winning_angles=[];

winning_res_vector1=[];
winning_res_vector2=[];



while(counter<2)
 
    middle_angle=0;

    while(abs(left-right)>0.01)


        [dist_from_x,result_vector]=xned(left,false);
        ned_left=dist_from_x;
        
        [dist_from_x,result_vector]=xned(right,false);
        ned_right=dist_from_x;


        if(ned_left*ned_right<0)
            disp('shrinking start');
            middle_angle=(right+left)/2;
            
            [dist_from_x,result_vector]=xned(middle_angle,false);
            xned_res=dist_from_x;
  
            if(xned_res*ned_right<0)
                disp('Shrinking right');
                left=middle_angle;
            elseif(xned_res*ned_left<0)
                disp('Shrinking left');
                right=middle_angle;
            end


        end

     

    end
    
     win_angle=(left+right)/2;
     
     [dist_from_x,result_vector]=xned(win_angle,true);
     hold on
     
     winning_angles=[winning_angles;win_angle];
     
     if(counter==0)
        winning_res_vector1=result_vector;
     else
         winning_res_vector2=result_vector;
     end
     
     
     
     
     counter=counter+1;
     
    left=pi/3;
    right=pi/4;
     
end

winning_res_vector1
disp('------');
winning_res_vector2






