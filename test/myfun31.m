% ************************************************************************
% Author: CONG LI
% Date Created: 2022
%
% This script is part of a course project for 
% Mathematical Experiment
% at University of Electronic Science and Technology of China (UESTC)
% ************************************************************************
function [s m] = myfun
syms x;
 f=inline(8*sin(x)*cos(x)+30*exp(-9*x));
m=feval(f,0:0.2:50)

s = sum(m)
m = max(abs(m))




