function [B,C] = myfun
% ************************************************************************
% Author: CONG LI
% Date Created: 2022
%
% This script is part of a course project for 
% Mathematical Experiment
% at University of Electronic Science and Technology of China (UESTC)
% ************************************************************************
A = 1:1:16
A = reshape(A,4,4)
A = A'
B = A.*A
C = A+B