% ************************************************************************
% Author: CONG LI
% Date Created: 2022
%
% This script is part of a course project for 
% Mathematical Experiment
% at University of Electronic Science and Technology of China (UESTC)
% ************************************************************************
function p = myfun

x = normrnd(30,2,1,1000)

p1 = ( length(find(x<=28))/1000 )*0.2%找到小于28的值除以1000求出概率再和y=22的概率相乘得到y = 22时x+y小于50的概率
p2 = ( length(find(x<=27))/1000 )*0.3
p3 = ( length(find(x<=26))/1000 )*0.3
p4 = ( length(find(x<=25))/1000 )*0.2


p = p1+p2+p3+p4


