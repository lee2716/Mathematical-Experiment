function r =myfun
rand('seed',251);
v = fix(40*rand(1,50));
r = find(v>=34&v<=37)
r=sum(v(r))