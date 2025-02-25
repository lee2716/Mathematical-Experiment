% ************************************************************************
% Author: CONG LI
% Date Created: 2022
%
% This script is part of a course project for 
% Mathematical Experiment
% at University of Electronic Science and Technology of China (UESTC)
% ************************************************************************
function r =myfun
rand('seed',251);
v = fix(40*rand(1,50));
r = find(v>=34&v<=37)
r=sum(v(r))