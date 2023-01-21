%github.com/BrandomVega
%Five vectors: (1,1) (3,1) (3,4) (2, 5) (1,4)
pts = [1 3 3 2 1; 
       1 1 4 5 4];

%Join vectors: 1 to 2, 2 to 3, 3 to 4 ...
lns = [1 2 3 4 5 1 2 5;
       2 3 4 5 1 3 5 3];

%Figure 1
th = pi/4; %Rotation angle
%Rotation transformation with translation to -5x and 6y
A=[cosh(th) -sin(th) -5; 
   sin(th) cos(th)  6;
   0 0 0
   ];
%Original figure
grafics(pts,lns,'k','*',20)
 hold on
pts = mult(A, pts);
%Transformation
grafics(pts,lns,'b','*',20);
 hold off



 %Extra figures :p
 %Figura 2

% A=[1 0 -5; 
%    0 -1  0;
%    0 0 0
%    ];
% 
% grafics(pts,lns,'k','*',20)
%  hold on
% pts = mult(A, pts);
% grafics(pts,lns,'b','*',20);
%  hold off

%   %Figura 3
% th =-pi/2;
% A =[cos(th) -sin(th) -6;sin(th) cos(th) -6; 0 0 0];
% 
% grafics(pts,lns,'r','*',20)
% hold on
% pts = mult(A, pts);
% grafics(pts,lns,'b','*',20)
% hold off

%   %Figura 4
% th =-pi/4;
% A =[cos(th) -sin(th) -1;sin(th) cos(th) -3; 0 0 0];
% 
% grafics(pts,lns,'r','*',20)
% hold on
% pts = mult(A, pts);
% grafics(pts,lns,'b','*',20)
% hold off
%   
% %Figura 5

% A =[2 0 2;0 2 0; 0 0 0];
% 
% grafics(pts,lns,'r','*',20)
% hold on
% pts = mult(A, pts);
% grafics(pts,lns,'b','*',20)
% hold off





