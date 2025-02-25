% ************************************************************************
% Author: CONG LI
% Date Created: 2022
%
% This script is part of a course project for 
% Mathematical Experiment
% at University of Electronic Science and Technology of China (UESTC)
% ************************************************************************
function M = myfun
rand('seed',2420)
M  =rand(10,11)
M(:,[5 6 7 8 9]) = []