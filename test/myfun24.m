function [x,s] = myfun
x(1) = 1
x(2) = 2
for i = 3:1:15
   x(i)=0.65*(x(i-2)+x(i-1)) 
    
    
end

s = sum(x)