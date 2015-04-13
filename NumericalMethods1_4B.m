
[xy]=ginput(10);



[A,b]=makeMatrix(xy);

%Find the coefficients for the equation using square method
p=(A'*A)\(A'*b);

plotCircle(p)

hold on 

%plot our initial values
plot(xy(:,1),xy(:,2),'o');