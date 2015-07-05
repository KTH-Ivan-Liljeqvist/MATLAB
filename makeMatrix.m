
function [A,b]=makeMatrix(xy)
    [x_size,y_size]=size(xy);
    A=[];
    
    for k=1:x_size
        A(k,1)=1;
        A(k,2)=xy(k,1);
        A(k,3)=xy(k,2);
        
        b(k,1)=xy(k,1)^2 + xy(k,2)^2;
    end
    
    
end
