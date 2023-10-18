clear;clc;

%01
C = randn(ceil(rand*30+10),ceil(rand*30+10),ceil(rand*30+10));

%02
n = numel(C);
soucetsum = sum(C,"all");
prumersum = soucetsum/n;
soucetfor=0;
for x=1:size(C,1);
    for y=1:size(C,2);
        for z=1:size(C,3);
          C(x,y,z);
          soucetfor=soucetfor+C(x,y,z);    
        end 
     end 
end 
prumerfor=soucetfor/n;

%03
B =squeeze(C(1,:,:));
M = mean(B,2);
radprum = B- M;

%04
