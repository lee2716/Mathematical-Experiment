% ************************************************************************
% Author: CONG LI
% Date Created: 2022
%
% This script is part of a course project for 
% Mathematical Experiment
% at University of Electronic Science and Technology of China (UESTC)
% ************************************************************************
function R = myfun
x0 = [1 1.4 2.5 2.7 3.5 5.9 7.9 8.4 8.4 8.7 9.1 9.3]
y0 = [19.21 31.42 75.19 84.69 128.53 326.74 561.76 629.08 626.28 670.67 731.33 762.17]

p = polyfit(x0,y0,2)

R = polyval(p,2:0.2:20)