% ************************************************************************
% Author: CONG LI
% Date Created: 2022
%
% This script is part of a course project for 
% Mathematical Experiment
% at University of Electronic Science and Technology of China (UESTC)
% ************************************************************************
function xp=myfun1
syms x
f =@(x) x.^5-5*x.^4+5*x.^3+1;
xp = fzero(f,2) 
