% ************************************************************************
% Author: CONG LI
% Date Created: 2022
%
% This script is part of a course project for 
% Mathematical Experiment
% at University of Electronic Science and Technology of China (UESTC)
% ************************************************************************
function r=myfun4
A =[5 0 1 1 8
    5 10 5 2 3
    5 6 11 4 5
    3 4 1 11 4
    8 2 5 6 19];
%b=[78;131;195;132;217];%两种写法等价
b=[78
    131
    195
    132
    217];

r=A\b;%inv(A)*b