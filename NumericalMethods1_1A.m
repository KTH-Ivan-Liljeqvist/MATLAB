
A=[0 4 5 7;
    1 2 3 0;
    1 1 -1 0;
    1 1 1 1;
    ];

b=[6 5 1 2]';

coeff=A\b;


%{
0.4000
    1.2800
    0.6800
   -0.3600
%}

residual_vector=b-A*coeff

%{
   1.0e-15 *

         0
         0
         0
   -0.4441

Inte noll = avrundningsfel!
%}
