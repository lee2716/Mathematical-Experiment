% ************************************************************************
% Author: CONG LI
% Date Created: 2022
%
% This script is part of a course project for 
% Mathematical Experiment
% at University of Electronic Science and Technology of China (UESTC)
% ************************************************************************
function r = myfun 
rand('seed',1259)
A = fix(5*rand(10,10));
A([5 3],:) = A([3 5],:);
A(:,[1 4])= []
    r = A




