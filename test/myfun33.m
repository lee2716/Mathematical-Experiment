% ************************************************************************
% Author: CONG LI
% Date Created: 2022
%
% This script is part of a course project for 
% Mathematical Experiment
% at University of Electronic Science and Technology of China (UESTC)
% ************************************************************************
function [x,s] = myfun
x(1) = 1
x(2) = 2
for i = 3:1:11
   x(i)=4*x(i-2)+3*x(i-1)
    
    
end

s = sum(x)