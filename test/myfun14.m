function xp=myfun1
syms x
f =@(x) x.^5-5*x.^4+5*x.^3+1;
xp = fzero(f,2) 
