% ************************************************************************
% Author: CONG LI
% Date Created: 2022
%
% This script is part of a course project for 
% Mathematical Experiment
% at University of Electronic Science and Technology of China (UESTC)
% ************************************************************************
function [C,D,E] = myfun

rand('seed',2699)
A = fix(20*rand(8,8));
B = fix(20*rand(8,8));
C = A-B;
D = A*A*B;
E = B'*A;
