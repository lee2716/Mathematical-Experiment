function [val,x0]=myfun7
rand('seed',2111)
val=inf;
N=10000;
x0=[]
a=10*rand(1,10000);
b=10*rand(1,10000);
c=10*rand(1,10000);
for i=1:N
    x=[a(i) b(i) c(i)];
    if fun1(x)<val & fun2(x)<=0
        val=fun1(x)
        x0=x
    end 
end
val=-val;
x
end
function f=fun1(x)
f=-5*x(1).^2-6*(x(2)-1).^2-7*(x(3)-2).^2
end
    function c=fun2(x)
        c(1)=3*x(1)+2*x(2)^2+x(3)-15
        c(2)=5*x(1)^2+2*x(2)+3*x(3)-45
    end
