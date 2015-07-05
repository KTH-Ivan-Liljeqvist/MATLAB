function []= plotCircle(p)
    %R=radius. we find radius (solve for R in the equation)  :
    radius=sqrt(p(1,1)+(p(2,1)/2)^2+(p(3,1)/2)^2);
    %find center X (a in the formula) = c2/2
    %solve for a in the second equation
    xc=p(2,1)/2;
    %find center Y (b in the formula) = c3/2
    %solve fr b in the third quation
    yc=p(3,1)/2;

    %angle, we go from 0 to 2pi with 0.01 each step
    ang=0:0.01:2*pi;

    %insert the angles, get the x values in an array
    %we get values for the unity circle back. 
    %multiply by radius to get the right size
    xp=radius*cos(ang);
    %the same as above but for y values
    yp=radius*sin(ang);

    %move to the right position by adding the centre of the circle
    %to x and y
    plot(xc+xp,yc+yp);
end

