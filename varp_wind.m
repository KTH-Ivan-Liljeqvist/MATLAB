function f=varp(XY)
wind=0;
f=[XY(2) -0.02*(XY(2)-wind)*sqrt((XY(2)-wind)^2 + XY(4)^2) XY(4) -9.81-0.065*XY(4)*sqrt((XY(2)-wind)^2 + XY(4)^2)]';
end
