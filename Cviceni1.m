clear;clc;

%cv 01
a = 1:50;

%cv 02
b = 1:0.2:10;

%cv 03
A = ones(3,3);
B = zeros(3,3);
D = eye(3,3); % D =[1 1 0; 0 1 0; 0 0 1 ];

%cv 04
% spojeni matic [A;D]
% pridat vektor [A;1 2 3] nebo sloupcový [A;[1;2;3]
M = [A B D];

%cv 05
C = [1 (-1) 1;1 (-1) 0; (-1) 0 1];

%cv 06 
B1 = inv(C);

%cv 07
a1 = C.*B1;
b1 = C*B1;

%cv 08
V = M.'*C.';

%cv 09
C(:,2)=[randn;randn;randn];

%cv 10
C(1,:)=[56,85,15];

%cv 11
C1 = C(1,end -1:end);

%cv 12

for x = 1:size(C,1)
     for y= 1:size(C,2)
         if C(x,y) >=0
             C(x,y) = 1;
         else
             C(x,y) = randn;
         end

     end
end



