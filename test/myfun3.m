function [y1 y2]=myfun
t=0:0.1:20;
Y0=[20,12]
[t,Y]=ode23(@fox,t,Y0)
y1=Y(:,1)
y2=Y(:,2)
end
function z=fox(t,y)
z(1,: )=(1-0.013*y(2)).*y(1)
z(2,: )=(-1+0.011*y(1)).*y(2)
end