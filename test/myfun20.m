function x0 = myfun

x = [4 4]
F=@(x)8*x(1)^2+9*x(1)+9*x(2)^2+15*x(2)+2*x(2)*x(1)
[x0,val,flag]=fminsearch(F,x)
