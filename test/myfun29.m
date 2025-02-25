% ************************************************************************
% Author: CONG LI
% Date Created: 2022
%
% This script is part of a course project for 
% Mathematical Experiment
% at University of Electronic Science and Technology of China (UESTC)
% ************************************************************************
function [x  val] = myfun
c=[-11 -6 -8];
A=[5 8 1;6 4 2;2 7 4];
b=[190 205  150];
Aeq=[];
Beq=[];
lb=[0 0 0];
ub=[inf inf inf];
[x,val,flag]=linprog(c,A,b,Aeq,Beq,lb,ub)


