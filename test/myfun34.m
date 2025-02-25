% ************************************************************************
% Author: CONG LI
% Date Created: 2022
%
% This script is part of a course project for 
% Mathematical Experiment
% at University of Electronic Science and Technology of China (UESTC)
% ************************************************************************
function a = myfun
syms x;


 f=inline((x.^3+3*x-2).*cos(x));
a=feval(f,-2*pi:0.02:2*pi)
% x =  -2*pi:0.02:2*pi
% plot(x,f) %