% ************************************************************************
% Author: CONG LI
% Date Created: 2022
%
% This script is part of a course project for 
% Mathematical Experiment
% at University of Electronic Science and Technology of China (UESTC)
% ************************************************************************
function M = myfun
% 4.2*x1+3.3*x2+3.3*x3<=26
% solve()
cnt = 1
for i = 1:26
    for j = 1:26
        for k = 1:26
            if 4.2*(i-1)+3.3*(j-1)+3.3*(k-1)<=26
               x1(cnt) = i -1
               x2(cnt) = j-1
               x3(cnt) = k -1
               cnt = cnt+1
            end
        end
    end
end
M = [x1;x2;x3]'