% ************************************************************************
% Author: CONG LI
% Date Created: 2022
%
% This script is part of a course project for 
% Mathematical Experiment
% at University of Electronic Science and Technology of China (UESTC)
% ************************************************************************
function r = myfun
rand('seed',2301)
c = 97+fix(14*rand(1,32000))
c = char(c)
r = strfind(c,'dfe')