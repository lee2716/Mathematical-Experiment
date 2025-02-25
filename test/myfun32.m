% ************************************************************************
% Author: CONG LI
% Date Created: 2022
%
% This script is part of a course project for 
% Mathematical Experiment
% at University of Electronic Science and Technology of China (UESTC)
% ************************************************************************
function v=testmain

%%这里只能一个一个算，用循环
x0 = -2:0.1:20
for i = 1:length(x0)
    v(i)=fun(x0(i))
    
end

function r = fun(x)

if x<-1
    r = sin(x)
end
if x>=-1&x<=1
    r = x.^2
end

if x>1
    r = sqrt(x)+6

end
