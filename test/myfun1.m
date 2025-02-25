% ************************************************************************
% Author: CONG LI
% Date Created: 2022
%
% This script is part of a course project for 
% Mathematical Experiment
% at University of Electronic Science and Technology of China (UESTC)
% ************************************************************************

function r=myfun
N=100000;
x=rand(N,1)
y=rand(N,1)

II=find((x.^2+y.^2<=1)&(y>=x-1)&(x>0)|(x.^2+y.^2<=1)&(y>=-x-1)&(x<0));
M=length(II)
r=(M/N)*pi
