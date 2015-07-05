function f=varp(XY)

f=[XY(2) -0.02*XY(2)*sqrt(XY(2)^2 + XY(4)^2) XY(4) -9.81-0.065*XY(4)*sqrt(XY(2)^2 + XY(4)^2)]';

end
