% ************************************************************************
% Author: CONG LI
% Date Created: 2022
%
% This script is part of a course project for 
% Mathematical Experiment
% at University of Electronic Science and Technology of China (UESTC)
% ************************************************************************
function y = myfun
x = [200 600 900 1300]
deep = [125 360 453 635 822 1019 1276 1354]
t = [10.66 10.05 9.82  9.38 8.95 8.52 7.99 7.84]
y = interp1(deep, t,x,'spline')
