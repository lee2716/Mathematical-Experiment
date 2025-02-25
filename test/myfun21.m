% ************************************************************************
% Author: CONG LI
% Date Created: 2022
%
% This script is part of a course project for 
% Mathematical Experiment
% at University of Electronic Science and Technology of China (UESTC)
% ************************************************************************
function MA = myfun
rand('seed',1167)
M = fix(17*rand(17,30));
MA = M([3 4 5 6 7 8 9],:)
