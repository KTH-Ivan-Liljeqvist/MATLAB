%author: Gerd Eriksson
%Modified by Ivan Liljeqvist and Filip Matrinsson
%version: 2015-04-16


%Fix-point interation
%I SOLVED IT BY HAND ALSO! It should be presented by hand.

x=1;
korr=1;

while(abs(korr)>5e-4)
    xOld=x;
    x=(7/8)*xOld+(5/14)*cos(3*x-5)
    korr=x-xOld;
end
